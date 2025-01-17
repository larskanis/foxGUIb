# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)

require "minitest"
require "pp"
require "yaml"

class PP < PrettyPrint
  module PPMethods
    def pp_hash(obj)
      group(1, "{", "}") {
        seplist(obj.to_a.sort { |a, b| a[0].to_s <=> b[0].to_s }, nil, :each) { |kv|
          k, v = *kv
          group {
            pp k
            text "=>"
            group(1) {
              breakable ""
              pp v
            }
          }
        }
        obj
      }
    end
  end
end

class Loader
  def initialize dir = "."
    @home = dir
    on_fail { |filename, msg| puts "error loading <#{filename}>: \n\t#{msg}" }
  end

  def load(filename) # {|data| ... }
    assert block_given?
    open(filename) { |f|
      begin
        data = specialized_load(f)
        yield data
      rescue Exception
        fail(filename, $!.to_s)
      end
    }
  end

  def on_fail(&block) # {|filename, msg|  ... }
    assert block
    @fail = block
  end

  protected

  def specialized_load(f)
    f.read
  end

  def open(filename, &block) # {|f| ... }
    assert block
    path = File.join(@home, filename)
    unless File.exist? path
      fail(filename, "File does not exist in \"#{path}\"!")
      return
    end
    begin
      File.open(path, "rb", &block)
    rescue Exception
      fail(filename, $!)
    end
  end

  def fail(filename, msg)
    @fail.call(filename, msg)
  end
end

class YamlLoader < Loader
  def specialized_load(f)
    YAML.load(f.read)
  end
end

class RbinLoader < Loader
  def specialized_load(f)
    Marshal.load(f.read)
  end
end

class RubyLoader < Loader
  def specialized_load(f)
    eval(f.read)
  end
end

# deprecated !!
module Serialize
  def load_from_file filename
    data = nil
    f = nil
    if filename.split(".").pop == "pp"
      f = File.new(filename)
      # ~ puts 'pp load'
      begin
        data = eval(f.read)
      rescue Exception
        error "pp load error: ", $!.to_s
      end
    else
      f = File.new(filename, "rb")
      # ~ puts 'binary load'
      begin
        data = Marshal.load(f.read)
      rescue Exception
        error "binary load error: ", $!.to_s
      end
    end
    f.close
    data
  end

  def save_to_file filename, data
    if filename.split(".").pop == "pp"
      begin
        out = $stdout
        $stdout = File.new(filename.tr("\\", "/"), "w")
        pp data
        $stdout.flush
      rescue Exception
        filename += ".rbin"
        puts "rescue marshal to: " + filename
        puts $!
        puts $!.backtrace.join($/)
        try_marshal = true
      ensure
        $stdout.close
        $stdout = out
      end
    else
      try_marshal = true
    end
    if try_marshal
      f = File.new(filename.tr("\\", "/"), "wb")
      Marshal.dump data, f
      f.flush
      f.close
    end
  end

  def load_yaml filename
    data = nil
    File.open(filename, "rb") { |f|
      data = YAML.load(f.read)
    }
    data
  end
end # module

if __FILE__ == $0
  HOME = "."

  loader = YamlLoader.new(HOME)
  # loader.on_fail{|filename, msg| puts "error loading <#{filename}>: event editor cannot proceed!\n\t#{msg}"}

  events = nil
  loader.load("events.yaml") { |data| events = data }
  pp events

end
