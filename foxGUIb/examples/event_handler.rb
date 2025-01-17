# source generated by foxGUIb

class EventHandler
  def initialize(parent)
    construct_widget_tree(parent)
    init if respond_to? :init
  end

  def construct_widget_tree(parent)
    @topwin =
      FX::MainWindow.new(parent) { |w|
        @MainWindow = w
        w.wdg_name = "MainWindow"
        w.width = 200
        w.shown = true
        w.y = 593
        w.height = 150
        w.x = 51
        FX::VerticalFrame.new(@MainWindow) { |w|
          @VerticalFrame = w
          w.wdg_name = "VerticalFrame"
          w.width = 200
          w.height = 150
          FX::Button.new(@VerticalFrame) { |w|
            @Button = w
            w.wdg_name = "Button"
            w.text = "click to see what happens!"
            w.width = 177
            w.height = 23
            @Button.connect(Fox::SEL_LEFTBUTTONRELEASE) {
              @Text.appendText "lmb up\n"
              0 # this prevents fox from blocking the builtin event handler for leftbuttonpress
            }
            @Button.connect(Fox::SEL_LEFTBUTTONPRESS) {
              @Text.appendText "lmb down\n"
              0 # this prevents fox from blocking the builtin event handler for leftbuttonpress
            }
            @Button.connect(Fox::SEL_COMMAND) {
              @Text.appendText "click!\n"
            }
          }
          FX::Text.new(@VerticalFrame) { |w|
            @Text = w
            w.wdg_name = "Text"
            w.width = 200
            w.y = 23
            w.height = 127
          }
        }
      }
  end
  attr_reader :topwin
  attr_reader :MainWindow
  attr_reader :VerticalFrame
  attr_reader :Button
  attr_reader :Text
end

# unit test
if __FILE__ == $0
  require "FX"
  app = FX::App.new
  w = EventHandler.new app
  w.topwin.show(0)
  app.create
  app.run
end
