# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)

module StringPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      val = @wdg.send(method.chop)
      if val.start_with?("[")
        # begin
          args = JSON.parse(val)
          if args.last.is_a?(Hash)
            val = "I18n.t(*#{args[0..-2].inspect}, **#{args.last.transform_keys(&:to_sym).inspect})"
          else
            val = "I18n.t(*#{args.inspect})"
          end
          return "w_#{treeitem}.#{method_s}#{val}"
        # rescue JSON::JSONError
        # end
      end
      "w_#{treeitem}.#{method_s}#{serialize val.inspect}"
    end
  end
end

module IntPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module BoolPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module ConstPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module ColorPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}Fox::FXRGBA(#{serialize @wdg.send(method.chop)})"
    end
  end
end

module FontPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}FX::Font.new.from_s(\"#{serialize(@wdg.send(method.chop))}\").to_FXFont"
    end
  end
end

module IconPropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}\"#{serialize @wdg.send(method.chop)}\""
    end
  end
end

module RangePropCodeGen
  def to lang, treeitem
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end
