# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)

$all_widgets = [
  # ~ "ArrowButton",
  # ~ "Button",
  # "Calendar",
  "Canvas",
  # ~ "CheckButton",
  # ~ "ComboBox",
  # ~ "Dial",
  "DirBox",
  "DirList",
  "DriveBox",
  "FileList",
  # ~ "GroupBox",
  "Header",
  # ~ "HorizontalFrame",
  "HorizontalSeparator",
  "IconList",
  # ~ "Label",
  "List",
  "ListBox",
  # ~ "MDIClient",
  "MenuButton",
  # ~ "MenuCaption",
  # ~ "MenuCascade",
  # ~ "MenuCommand",
  # ~ "MenuPane",
  # ~ "MenuSeparator",
  # ~ "MenuTitle",
  # ~ "Menubar",
  "Option",
  "OptionMenu",
  # ~ "Packer",
  # ~ 'ProgressBar',
  # ~ "RadioButton",
  # "Scintilla",
  "ScrollArea",
  # ~ "ScrollBar",
  # ~ "ScrollWindow",
  # ~ "Shutter",
  # ~ "ShutterItem",
  # ~ 'Slider',
  # ~ "Spinner",
  # ~ "Splitter",
  # ~ "StatusBar",
  # ~ 'StatusLine',
  # ~ "Switcher",
  # ~ "TabBar",
  # ~ "TabBook",
  # ~ "TabItem",
  # ~ "Text",
  # ~ "TextField",
  # ~ "ToggleButton",
  # ~ "Toolbar",
  "TreeList",
  # ~ "VerticalFrame",
  "VerticalSeparator"
]

## input
$input_display_widgets = [
  "ArrowButton",
  "Button",
  "CheckButton",
  "ComboBox",
  "Dial",
  "Label",
  "RadioButton",
  "Text",
  "TextField",
  "ToggleButton",
  "Slider",
  "Spinner",
  "ScrollBar",
  "ProgressBar"
]
# ~ 'GroupBox',
# ~ 'HorizontalFrame',
# ~ 'VerticalFrame',
$menu_widgets = [
  "MenuBar",
  "MenuCaption",
  "MenuCascade",
  "MenuCommand",
  "MenuCheck",
  "MenuRadio",
  "MenuSeparator",
  "MenuTitle",
  "MenuPane"
]
$bar_widgets = [
  "MenuBar",
  "ToolBar",
  "StatusBar",
  "StatusLine"
]
$tab_widgets = [
  "TabBar",
  "TabBook",
  "TabItem",
  "Switcher"
]
$container_widgets = [
  "VerticalFrame",
  "HorizontalFrame",
  "RadioMutex",
  "Packer",
  "GroupBox",
  "ScrollWindow",
  "Shutter",
  "ShutterItem",
  "Splitter",
  "Matrix",
  "MDIClient"
]

ALL_WIDGETS = $all_widgets + $container_widgets + $tab_widgets + $bar_widgets + $menu_widgets + $input_display_widgets
