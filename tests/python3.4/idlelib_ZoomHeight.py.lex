(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(KEYWORD import)
(ID "macosxSupport")
(NEWLINE)
(KEYWORD class)
(ID "ZoomHeight")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "menudefs")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "windows")
(PUNCT ",")
(PUNCT "[")
(PUNCT "(")
(LIT "_Zoom Height")
(PUNCT ",")
(LIT "<<zoom-height>>")
(PUNCT ")")
(PUNCT ",")
(PUNCT "]")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "editwin")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT "=")
(ID "editwin")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "zoom_height_event")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "top")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "top")
(NEWLINE)
(ID "zoom_height")
(PUNCT "(")
(ID "top")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "zoom_height")
(PUNCT "(")
(ID "top")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "geom")
(PUNCT "=")
(ID "top")
(PUNCT ".")
(ID "wm_geometry")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "m")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(LIT "(\\d+)x(\\d+)\\+(-?\\d+)\\+(-?\\d+)")
(PUNCT ",")
(ID "geom")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "top")
(PUNCT ".")
(ID "bell")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "width")
(PUNCT ",")
(ID "height")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "int")
(PUNCT ",")
(ID "m")
(PUNCT ".")
(ID "groups")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "newheight")
(PUNCT "=")
(ID "top")
(PUNCT ".")
(ID "winfo_screenheight")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "sys")
(PUNCT ".")
(ID "platform")
(PUNCT "==")
(LIT "win32")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newy")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "newheight")
(PUNCT "=")
(ID "newheight")
(PUNCT "-")
(LIT 72)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "macosxSupport")
(PUNCT ".")
(ID "isAquaTk")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newy")
(PUNCT "=")
(LIT 22)
(NEWLINE)
(ID "newheight")
(PUNCT "=")
(ID "newheight")
(PUNCT "-")
(ID "newy")
(PUNCT "-")
(LIT 88)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newy")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "newheight")
(PUNCT "=")
(ID "newheight")
(PUNCT "-")
(LIT 88)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "height")
(PUNCT ">=")
(ID "newheight")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newgeom")
(PUNCT "=")
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newgeom")
(PUNCT "=")
(LIT "%dx%d+%d+%d")
(PUNCT "%")
(PUNCT "(")
(ID "width")
(PUNCT ",")
(ID "newheight")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "newy")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "top")
(PUNCT ".")
(ID "wm_geometry")
(PUNCT "(")
(ID "newgeom")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)