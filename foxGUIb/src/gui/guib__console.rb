class BaseConsole
  def initialize(parent)
    construct_widget_tree(parent)
    init if respond_to? :init
  end

  def construct_widget_tree(parent)
    @topwin =
      FX::DialogBox.new(parent) { |w|
        @BaseConsole = w
        w.padLeft = 0
        w.width = 638
        w.padRight = 0
        w.shown = true
        w.y = 336
        w.height = 441
        w.padBottom = 0
        w.title = "Console Window"
        w.padTop = 0
        w.x = 270
        FX::Splitter.new(@BaseConsole) { |w|
          @Splitter = w
          w.backColor = Fox::FXRGBA(198, 198, 198, 255)
          w.width = 638
          w.height = 441
          w.splitterStyle = 131072
          FX::VerticalFrame.new(@Splitter) { |w|
            @RightFrame = w
            w.backColor = Fox::FXRGBA(138, 138, 138, 255)
            w.padLeft = 0
            w.frameStyle = 12288
            w.width = 468
            w.padRight = 0
            w.height = 441
            w.vSpacing = 1
            w.x = 0
            FX::HorizontalFrame.new(@RightFrame) { |w|
              @HorizontalFrame5 = w
              w.baseColor = Fox::FXRGBA(238, 238, 238, 255)
              w.backColor = Fox::FXRGBA(238, 238, 238, 255)
              w.padLeft = 0
              w.frameStyle = 0
              w.width = 466
              w.padRight = 0
              w.y = 1
              w.height = 19
              w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
              w.layoutHints = 1024
              w.x = 1
              FX::Label.new(@HorizontalFrame5) { |w|
                @Label5 = w
                w.text = "LANGID_ADDRESS|:"
                w.backColor = Fox::FXRGBA(238, 238, 238, 255)
                w.width = 101
                w.x = 0
              }
              FX::ComboBox.new(@HorizontalFrame5) { |w|
                @AddressComboBox = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.width = 365
                w.selBackColor = Fox::FXRGBA(49, 106, 197, 255)
                w.y = 0
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.comboStyle = 524288
                w.layoutHints = 1024
                w.x = 101
              }
            }
            FX::Text.new(@RightFrame) { |w|
              @text = w
              w.textTextStyle = 3145728
              w.font = Font.new.from_s("Arial|90|400|1|0|0|0").to_FXFont
              w.width = 466
              w.y = 21
              w.height = 401
              w.textColor = Fox::FXRGBA(138, 138, 138, 255)
              w.x = 1
            }
            FX::HorizontalFrame.new(@RightFrame) { |w|
              @HorizontalFrame = w
              w.padLeft = 0
              w.frameStyle = 0
              w.width = 466
              w.padRight = 0
              w.y = 423
              w.height = 17
              w.layoutHints = 1024
              w.x = 1
              FX::Label.new(@HorizontalFrame) { |w|
                @Label4 = w
                w.text = "LANGID_CMDLN| >"
                w.backColor = Fox::FXRGBA(245, 245, 220, 255)
                w.width = 96
                w.x = 0
              }
              FX::TextField.new(@HorizontalFrame) { |w|
                @cmdln = w
                w.backColor = Fox::FXRGBA(245, 245, 220, 255)
                w.frameStyle = 0
                w.width = 370
                w.y = 0
                w.height = 17
                w.layoutHints = 1024
                w.x = 96
              }
            }
          }
          FX::VerticalFrame.new(@Splitter) { |w|
            @LeftFrame = w
            w.baseColor = Fox::FXRGBA(238, 238, 238, 255)
            w.backColor = Fox::FXRGBA(238, 238, 238, 255)
            w.padLeft = 0
            w.frameStyle = 12288
            w.width = 166
            w.padRight = 0
            w.height = 441
            w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
            w.x = 472
            FX::MenuButton.new(@LeftFrame) { |w|
              @MenuButton = w
              w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
              w.text = "LANGID_CONSOLE_MENU"
              w.backColor = Fox::FXRGBA(238, 238, 238, 255)
              w.width = 143
              w.y = 1
              w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
              w.menuButtonStyle = 33554432
              w.x = 1
              FX::MenuPane.new(@MenuButton) { |w|
                @MenuPane = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.backColor = Fox::FXRGBA(236, 233, 216, 255)
                w.y = 430
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.x = 735
              }
            }
            FX::TabBook.new(@LeftFrame) { |w|
              @TabBook = w
              w.baseColor = Fox::FXRGBA(238, 238, 238, 255)
              w.backColor = Fox::FXRGBA(238, 238, 238, 255)
              w.padLeft = 0
              w.current = 0
              w.width = 164
              w.padRight = 0
              w.tabStyle = 131072
              w.y = 18
              w.height = 422
              w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
              w.padBottom = 0
              w.padTop = 0
              w.x = 1
              FX::TabItem.new(@TabBook) { |w|
                @HistoryTabItem = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.text = "LANGID_HISTORY"
                w.backColor = Fox::FXRGBA(238, 238, 238, 255)
                w.width = 98
                w.y = 399
                w.height = 23
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.tabOrientation = 25165824
              }
              FX::VerticalFrame.new(@TabBook) { |w|
                @HistoryFrame = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.backColor = Fox::FXRGBA(236, 233, 216, 255)
                w.padLeft = 0
                w.frameStyle = 12288
                w.width = 164
                w.padRight = 0
                w.borderColor = Fox::FXRGBA(135, 135, 135, 255)
                w.y = 0
                w.height = 401
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.x = 0
                FX::Text.new(@HistoryFrame) { |w|
                  @HistoryText = w
                  w.textTextStyle = 69206016
                  w.font = Font.new.from_s("Arial|90|400|1|0|0|0").to_FXFont
                  w.width = 162
                  w.y = 1
                  w.height = 399
                  w.textColor = Fox::FXRGBA(138, 138, 138, 255)
                  w.barColor = Fox::FXRGBA(190, 190, 190, 255)
                  w.x = 1
                }
              }
              FX::TabItem.new(@TabBook) { |w|
                @CmdsTabItem = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.text = "LANGID_COMMANDS"
                w.backColor = Fox::FXRGBA(238, 238, 238, 255)
                w.width = 109
                w.y = 399
                w.height = 21
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.tabOrientation = 25165824
                w.x = 97
              }
              FX::VerticalFrame.new(@TabBook) { |w|
                @CmdsFrame = w
                w.baseColor = Fox::FXRGBA(236, 233, 216, 255)
                w.backColor = Fox::FXRGBA(236, 233, 216, 255)
                w.padLeft = 0
                w.frameStyle = 12288
                w.width = 164
                w.padRight = 0
                w.borderColor = Fox::FXRGBA(143, 143, 143, 255)
                w.y = 0
                w.height = 401
                w.shadowColor = Fox::FXRGBA(172, 168, 153, 255)
                w.x = 0
                FX::Text.new(@CmdsFrame) { |w|
                  @CmdsText = w
                  w.backColor = Fox::FXRGBA(238, 238, 238, 255)
                  w.textTextStyle = 70254592
                  w.font = Font.new.from_s("Arial|90|400|1|0|0|0").to_FXFont
                  w.width = 162
                  w.y = 1
                  w.height = 399
                  w.barColor = Fox::FXRGBA(236, 233, 216, 255)
                  w.x = 1
                }
              }
            }
          }
        }
      }
  end
  attr_accessor :topwin,
    :BaseConsole,
    :Splitter,
    :RightFrame,
    :HorizontalFrame5,
    :Label5,
    :AddressComboBox,
    :text,
    :HorizontalFrame,
    :Label4,
    :cmdln,
    :LeftFrame,
    :MenuButton,
    :MenuPane,
    :TabBook,
    :HistoryTabItem,
    :HistoryFrame,
    :HistoryText,
    :CmdsTabItem,
    :CmdsFrame,
    :CmdsText,
    :__foxGUIb__last__
end

s = "BaseConsole-extension.rb"
require s if File.exist?(s)
# unit test
if __FILE__ == $0
  require "libGUIb14"
  app = FX::App.new
  w = BaseConsole.new app
  w.topwin.show(0)
  app.create
  app.run
end
