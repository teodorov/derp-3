(KEYWORD class)
(ID "Delegator")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "delegate")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "delegate")
(PUNCT "=")
(ID "delegate")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "__cache")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getattr__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "attr")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "delegate")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(NEWLINE)
(ID "setattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "__cache")
(PUNCT ".")
(ID "add")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "attr")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "resetcache")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "key")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "__cache")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "delattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "__cache")
(PUNCT ".")
(ID "clear")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setdelegate")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "delegate")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "resetcache")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "delegate")
(PUNCT "=")
(ID "delegate")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)