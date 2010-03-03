# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)

$color_props=[
	['arrowColor=','ColorProp'],
	['barBGColor=','ColorProp'],
	['barColor=','ColorProp'],
	['boxColor=','ColorProp'],
	['backColor=','ColorProp'],
	['diskColor=', 'ColorProp'],
	['textColor=','ColorProp'],
	['textAltColor=','ColorProp'],
	['baseColor=','ColorProp'],
	['borderColor=','ColorProp'],
	['hiliteColor=','ColorProp'],
	['shadowColor=','ColorProp'],
	['selBackColor=','ColorProp'],
	['selTextColor=','ColorProp'],
	['slotColor=','ColorProp'],
	['frameColor=','ColorProp'],
]

$general_props=[
	['font=','FontProp'],
	['img=','IconProp'],
	['altImg=','IconProp'],
	['range=','RangeProp'],
	['enabled=','BoolProp'],
	['shown=','BoolProp'],
	['radioState=',"BoolProp"],
	['state=','BoolProp'], #	['checkState=', 'IntProp'],
	['displayText=','BoolProp'],
	['hSpacing=','IntProp'],
	['vSpacing=','IntProp'],
	['padTop=','IntProp'],
	['padLeft=','IntProp'],
	['padRight=','IntProp'],
	['padBottom=','IntProp'],
	['x=','IntProp'],
	['y=','IntProp'],
	['width=','IntProp'],
	['height=','IntProp'],
	['headSize=','IntProp'],
	['numVisible=','IntProp'],
	['numColumns=','IntProp'],
	['numRows=','IntProp'],
	['indent=','IntProp'],
	['increment=','IntProp'],
	['current=','IntProp'],
	['borderWidth=','IntProp'],
	['barSize=','IntProp'],
	['value=','IntProp'],
	['arrowSize=','IntProp'],
	['attachment=','IntProp'],
	['xOffset=','IntProp'],
	['yOffset=','IntProp'],	
	['progress=','IntProp'],
	['total=','IntProp'],
	['slotSize=','IntProp'],
	['tickDelta=','IntProp'],
	#~ ['line','IntProp'],
	#~ ['page','IntProp'],
	['position=','IntProp'],
	['accelText=','StringProp'],
	['title=','StringProp'],
	['text=','StringProp'],
	['altText=','StringProp'],
	['helpText=','StringProp'],
	['tipText=','StringProp'],
	['normalText=','StringProp'],
	['comboItems=','StringProp'],
]


$const_props=[
[ 'arrowStyle=', 'ConstProp', 
	['ARROW_AUTO',
	'ARROW_UP',
	'ARROW_DOWN',
	'ARROW_LEFT',
	'ARROW_RIGHT',
	'ARROW_REPEAT',
	'ARROW_AUTOGRAY',
	'ARROW_AUTOHIDE',
	'ARROW_TOOLBAR',
	'ARROW_NORMAL',]
	],
[ 'buttonButtonStyle=', 'ConstProp', 
	['BUTTON_AUTOGRAY',
	'BUTTON_AUTOHIDE',
	'BUTTON_TOOLBAR',
	'BUTTON_DEFAULT',
	'BUTTON_INITIAL',
	'BUTTON_NORMAL	',]
	],
[ 'barStyle=', 'ConstProp', 
	['PROGRESSBAR_HORIZONTAL',
	'PROGRESSBAR_VERTICAL',
	'PROGRESSBAR_PERCENTAGE',
	'PROGRESSBAR_DIAL',
	'PROGRESSBAR_NORMAL',]
	],
[ 'checkButtonStyle=', 'ConstProp', 
	['CHECKBUTTON_NORMAL',
	'CHECKBUTTON_AUTOGRAY',
	'CHECKBUTTON_AUTOHIDE',
	'CHECKBUTTON_PLUS',]
	],
[ 'comboStyle=', 'ConstProp', 
	['COMBOBOX_NO_REPLACE',
	'COMBOBOX_REPLACE',
	'COMBOBOX_INSERT_BEFORE',
	'COMBOBOX_INSERT_AFTER',
	'COMBOBOX_INSERT_FIRST',
	'COMBOBOX_INSERT_LAST',
	'COMBOBOX_STATIC',
	'COMBOBOX_NORMAL',]
	],
[ 'decorations=', 'ConstProp', 
		['DECOR_MENU','DECOR_TITLE',
		'DECOR_MINIMIZE','DECOR_MAXIMIZE', 'DECOR_CLOSE', 
		'DECOR_BORDER', 'DECOR_SHRINKABLE', 'DECOR_STRETCHABLE',]
	],
[ 'dialStyle=', 'ConstProp', 
	['DIAL_VERTICAL',
	'DIAL_HORIZONTAL',
	'DIAL_CYCLIC',
	'DIAL_HAS_NOTCH',
	'DIAL_NORMAL',]
	],
[ 'frameStyle=', 'ConstProp', 
	['FRAME_GROOVE',
	'FRAME_LINE',
	'FRAME_NONE',
	'FRAME_NORMAL',
	'FRAME_RAISED',
	'FRAME_RIDGE',
	'FRAME_SUNKEN',
	'FRAME_THICK',]
	],
[ 'groupBoxStyle=', 'ConstProp', 
	['GROUPBOX_TITLE_LEFT',
	'GROUPBOX_TITLE_CENTER',
	'GROUPBOX_TITLE_RIGHT',
	'GROUPBOX_NORMAL',]
	],
[ 'layoutHints=', 'ConstProp',  
		['LAYOUT_BOTTOM',
		'LAYOUT_CENTER_X',
		'LAYOUT_CENTER_Y',
		'LAYOUT_EXPLICIT',
		'LAYOUT_FILL_COLUMN',
		'LAYOUT_FILL_ROW',
		'LAYOUT_FILL_X',
		'LAYOUT_FILL_Y',
		'LAYOUT_FIX_HEIGHT',
		'LAYOUT_FIX_WIDTH',
		'LAYOUT_FIX_X',
		'LAYOUT_FIX_Y',
		'LAYOUT_LEFT',
		'LAYOUT_MIN_HEIGHT',
		'LAYOUT_MIN_WIDTH',
		'LAYOUT_NORMAL',
		'LAYOUT_RIGHT',
		'LAYOUT_SIDE_BOTTOM',
		'LAYOUT_SIDE_LEFT',
		'LAYOUT_SIDE_RIGHT',
		'LAYOUT_SIDE_TOP',
		'LAYOUT_TOP']
	],
[ 'headerStyle=', 'ConstProp', 
	['HEADER_BUTTON',
	'HEADER_HORIZONTAL',
	'HEADER_VERTICAL',
	'HEADER_TRACKING',
	'HEADER_NORMAL',]
	],
[ 'iconListStyle=', 'ConstProp', 
	['ICONLIST_EXTENDEDSELECT',
	'ICONLIST_SINGLESELECT',
	'ICONLIST_BROWSESELECT',
	'ICONLIST_MULTIPLESELECT',
	'ICONLIST_AUTOSIZE',
	'ICONLIST_DETAILED',
	'ICONLIST_MINI_ICONS',
	'ICONLIST_BIG_ICONS',
	'ICONLIST_ROWS',
	'ICONLIST_COLUMNS',
	'ICONLIST_NORMAL',]
	],
[ 'iconPosition=', 'ConstProp', 
	['ICON_UNDER_TEXT',
	'ICON_AFTER_TEXT',
	'ICON_BEFORE_TEXT',
	'ICON_ABOVE_TEXT',
	'ICON_BELOW_TEXT',]
	],
	
[ 'justify=', 'ConstProp',  
	['JUSTIFY_NORMAL',
	'JUSTIFY_CENTER_X',
	'JUSTIFY_LEFT',
	'JUSTIFY_RIGHT',
	'JUSTIFY_HZ_APART',
	'JUSTIFY_CENTER_Y',
	'JUSTIFY_TOP',
	'JUSTIFY_BOTTOM',
	'JUSTIFY_VT_APART',]
	],
[ 'listListStyle=', 'ConstProp', 
	['LIST_EXTENDEDSELECT',
	'LIST_SINGLESELECT',
	'LIST_BROWSESELECT',
	'LIST_MULTIPLESELECT',
	'LIST_AUTOSELECT',
	'LIST_NORMAL',]
	],
[ 'matrixStyle=','ConstProp',
		['MATRIX_BY_ROWS', 'MATRIX_BY_COLUMNS'],
	],
[ 'menuButtonStyle=', 'ConstProp', 
	['MENUBUTTON_AUTOGRAY',
	'MENUBUTTON_AUTOHIDE',
	'MENUBUTTON_TOOLBAR',
	'MENUBUTTON_DOWN',
	'MENUBUTTON_UP',
	'MENUBUTTON_LEFT',
	'MENUBUTTON_RIGHT',
	'MENUBUTTON_NOARROWS',
	'MENUBUTTON_ATTACH_LEFT',
	'MENUBUTTON_ATTACH_TOP',
	'MENUBUTTON_ATTACH_RIGHT',
	'MENUBUTTON_ATTACH_BOTTOM',
	'MENUBUTTON_ATTACH_CENTER',
	'MENUBUTTON_ATTACH_BOTH',]
	],
[ "menuStyle=", "ConstProp",
	["MENU_AUTOGRAY", "MENU_AUTOHIDE",],
	],
[ 'packingHints=', 'ConstProp', 
		['PACK_NORMAL',
		'PACK_UNIFORM_HEIGHT',
		'PACK_UNIFORM_WIDTH',]
	],
[ 'scrollStyle=','ConstProp', 
	['SCROLLERS_NORMAL',
	'HSCROLLER_ALWAYS',
	'HSCROLLER_NEVER',
	'VSCROLLER_ALWAYS',
	'VSCROLLER_NEVER',
	'HSCROLLING_ON',
	'HSCROLLING_OFF',
	'VSCROLLING_ON',
	'VSCROLLING_OFF',
	'SCROLLERS_TRACK',
	'SCROLLERS_DONT_TRACK',
	'SCROLLBAR_WHEELJUMP',]
	],
[ 'spinnerStyle=', 'ConstProp', 
	['SPIN_NORMAL',
	'SPIN_CYCLIC',
	'SPIN_NOTEXT',
	'SPIN_NOMAX',
	'SPIN_NOMIN',]
	],
[ 'splitterStyle=','ConstProp', 
	['SPLITTER_HORIZONTAL',
	'SPLITTER_VERTICAL',
	'SPLITTER_REVERSED',
	'SPLITTER_TRACKING',
	'SPLITTER_NORMAL',]
	],
[ 'switcherStyle=','ConstProp', 
	['SWITCHER_HCOLLAPSE',
	'SWITCHER_VCOLLAPSE',]
	],
[ 'tabStyle=','ConstProp', 
	['TABBOOK_BOTTOMTABS',
	'TABBOOK_LEFTTABS',
	'TABBOOK_NORMAL',
	'TABBOOK_RIGHTTABS',
	'TABBOOK_SIDEWAYS',
	'TABBOOK_TOPTABS',]
	],	
[ 'tabOrientation=','ConstProp', 
	['TAB_BOTTOM',
	 'TAB_BOTTOM_NORMAL',
	 'TAB_LEFT',
	 'TAB_LEFT_NORMAL',
	 'TAB_RIGHT',
	 'TAB_RIGHT_NORMAL',
	 'TAB_TOP',
	 'TAB_TOP_NORMAL',]
	 ],
[ 'textFieldTextStyle=', 'ConstProp', 
	['TEXTFIELD_PASSWD',
	'TEXTFIELD_INTEGER',
	'TEXTFIELD_REAL',
	'TEXTFIELD_READONLY',
	'TEXTFIELD_ENTER_ONLY',
	'TEXTFIELD_LIMITED',
	'TEXTFIELD_OVERSTRIKE',
	'TEXTFIELD_NORMAL',
	'TEXTFIELD_AUTOGRAY',
	'TEXTFIELD_AUTOHIDE',]
	],
[ 'textTextStyle=', 'ConstProp', 
	['TEXT_READONLY',
	'TEXT_WORDWRAP',
	'TEXT_OVERSTRIKE',
	'TEXT_FIXEDWRAP',
	'TEXT_NO_TABS',
	'TEXT_AUTOINDENT',
	'TEXT_SHOWACTIVE',]
	],
[ 'treeListStyle=','ConstProp', 
	['TREELIST_EXTENDEDSELECT',
	'TREELIST_SINGLESELECT',
	'TREELIST_BROWSESELECT',
	'TREELIST_MULTIPLESELECT',
	'TREELIST_AUTOSELECT',
	'TREELIST_SHOWS_LINES',
	'TREELIST_SHOWS_BOXES',
	'TREELIST_ROOT_BOXES',
	'TREELIST_NORMAL',]
	],
[ 'toggleStyle=', 'ConstProp', 
	['TOGGLEBUTTON_AUTOGRAY',
	'TOGGLEBUTTON_AUTOHIDE',
	'TOGGLEBUTTON_TOOLBAR',
	'TOGGLEBUTTON_NORMAL',
	'TOGGLEBUTTON_KEEPSTATE',]
	],
[ 'separatorStyle=', 'ConstProp',
	['SEPARATOR_GROOVE',
	'SEPARATOR_RIDGE',
	'SEPARATOR_LINE',]
	],
[ 'scrollbarStyle=', 'ConstProp', 
	['SCROLLBAR_HORIZONTAL',
	'SCROLLBAR_VERTICAL',]
	],
[ 'sliderStyle=', 'ConstProp', 
	['SLIDER_HORIZONTAL',
	'SLIDER_VERTICAL',
	'SLIDER_ARROW_UP',
	'SLIDER_ARROW_DOWN',
	'SLIDER_ARROW_LEFT',
	'SLIDER_ARROW_RIGHT',
	'SLIDER_INSIDE_BAR',
	'SLIDER_TICKS_TOP',
	'SLIDER_TICKS_BOTTOM',
	'SLIDER_TICKS_LEFT',
	'SLIDER_TICKS_RIGHT',
	'SLIDER_NORMAL',]
	],
] #:

