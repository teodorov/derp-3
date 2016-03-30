(LIT "Classes to generate plain text from a message object tree.")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "Generator")
(PUNCT ",")
(LIT "DecodedGenerator")
(PUNCT ",")
(LIT "BytesGenerator")
(PUNCT "]")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD import)
(ID "random")
(NEWLINE)
(KEYWORD from)
(ID "copy")
(KEYWORD import)
(ID "deepcopy")
(NEWLINE)
(KEYWORD from)
(ID "io")
(KEYWORD import)
(ID "StringIO")
(PUNCT ",")
(ID "BytesIO")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "utils")
(KEYWORD import)
(ID "_has_surrogates")
(NEWLINE)
(ID "UNDERSCORE")
(PUNCT "=")
(LIT "_")
(NEWLINE)
(ID "NL")
(PUNCT "=")
(LIT "\n")
(NEWLINE)
(ID "fcre")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "^From ")
(PUNCT ",")
(ID "re")
(PUNCT ".")
(ID "MULTILINE")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "Generator")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Generates output from a Message object tree.\n\n    This basic generator writes the message to the given file object as plain\n    text.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "outfp")
(PUNCT ",")
(ID "mangle_from_")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "maxheaderlen")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "policy")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Create the generator for message flattening.\n\n        outfp is the output file-like object for writing the message to.  It\n        must have a write() method.\n\n        Optional mangle_from_ is a flag that, when True (the default), escapes\n        From_ lines in the body of the message by putting a `>' in front of\n        them.\n\n        Optional maxheaderlen specifies the longest length for a non-continued\n        header.  When a header line is longer (in characters, with tabs\n        expanded to 8 spaces) than maxheaderlen, the header will split as\n        defined in the Header class.  Set maxheaderlen to zero to disable\n        header wrapping.  The default is 78, as recommended (but not required)\n        by RFC 2822.\n\n        The policy keyword specifies a policy object that controls a number of\n        aspects of the generator's operation.  If no policy is specified,\n        the policy associated with the Message object passed to the\n        flatten method is used.\n\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(ID "outfp")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT "=")
(ID "mangle_from_")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxheaderlen")
(PUNCT "=")
(ID "maxheaderlen")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "policy")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "s")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "flatten")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ",")
(ID "unixfrom")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "linesep")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Print the message object tree rooted at msg to the output file\n        specified when the Generator instance was created.\n\n        unixfrom is a flag that forces the printing of a Unix From_ delimiter\n        before the first object in the message tree.  If the original message\n        has no From_ delimiter, a `standard' one is crafted.  By default, this\n        is False to inhibit the printing of any From_ delimiter.\n\n        Note that for subobjects, no From_ line is printed.\n\n        linesep specifies the characters used to indicate a new line in\n        the output.  The default value is determined by the policy specified\n        when the Generator instance was created or, if none was specified,\n        from the policy associated with the msg.\n\n        ")
(NEWLINE)
(ID "policy")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "policy")
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "policy")
(KEYWORD is)
(KEYWORD None)
(KEYWORD else)
(ID "self")
(PUNCT ".")
(ID "policy")
(NEWLINE)
(KEYWORD if)
(ID "linesep")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "policy")
(PUNCT "=")
(ID "policy")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "linesep")
(PUNCT "=")
(ID "linesep")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "maxheaderlen")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "policy")
(PUNCT "=")
(ID "policy")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "max_line_length")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "maxheaderlen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT "=")
(ID "policy")
(PUNCT ".")
(ID "linesep")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_encoded_NL")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_encode")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_EMPTY")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_encoded_EMTPY")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_encode")
(PUNCT "(")
(LIT "")
(PUNCT ")")
(NEWLINE)
(ID "old_gen_policy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "policy")
(NEWLINE)
(ID "old_msg_policy")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "policy")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "policy")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "policy")
(NEWLINE)
(KEYWORD if)
(ID "unixfrom")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ufrom")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_unixfrom")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "ufrom")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ufrom")
(PUNCT "=")
(LIT "From nobody ")
(PUNCT "+")
(ID "time")
(PUNCT ".")
(ID "ctime")
(PUNCT "(")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "ufrom")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "old_gen_policy")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "old_msg_policy")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "clone")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Clone this generator with the exact same options.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT "(")
(ID "fp")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(ID "policy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_encoded_EMPTY")
(PUNCT "=")
(LIT "")
(NEWLINE)
(KEYWORD def)
(ID "_new_buffer")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "StringIO")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "s")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "s")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write_lines")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT "=")
(ID "lines")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "lines")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "line")
(PUNCT ".")
(ID "rstrip")
(PUNCT "(")
(LIT "\r\n")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "laststripped")
(PUNCT "=")
(ID "lines")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "rstrip")
(PUNCT "(")
(LIT "\r\n")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "laststripped")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "lines")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT "!=")
(ID "len")
(PUNCT "(")
(ID "laststripped")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "oldfp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fp")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_munge_cte")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(ID "sfp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_new_buffer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_dispatch")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(ID "oldfp")
(NEWLINE)
(ID "munge_cte")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_munge_cte")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "_munge_cte")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "munge_cte")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(ID "deepcopy")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "replace_header")
(PUNCT "(")
(LIT "content-transfer-encoding")
(PUNCT ",")
(ID "munge_cte")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "replace_header")
(PUNCT "(")
(LIT "content-type")
(PUNCT ",")
(ID "munge_cte")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "meth")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "msg")
(PUNCT ",")
(LIT "_write_headers")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "meth")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write_headers")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "meth")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "sfp")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_dispatch")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "main")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "sub")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_content_subtype")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "specific")
(PUNCT "=")
(ID "UNDERSCORE")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(PUNCT "(")
(ID "main")
(PUNCT ",")
(ID "sub")
(PUNCT ")")
(PUNCT ")")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "-")
(PUNCT ",")
(LIT "_")
(PUNCT ")")
(NEWLINE)
(ID "meth")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(LIT "_handle_")
(PUNCT "+")
(ID "specific")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "meth")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "generic")
(PUNCT "=")
(ID "main")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "-")
(PUNCT ",")
(LIT "_")
(PUNCT ")")
(NEWLINE)
(ID "meth")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(LIT "_handle_")
(PUNCT "+")
(ID "generic")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "meth")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "meth")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_writeBody")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "meth")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write_headers")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "h")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "msg")
(PUNCT ".")
(ID "raw_items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "fold")
(PUNCT "(")
(ID "h")
(PUNCT ",")
(ID "v")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_handle_text")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "payload")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "payload")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "payload")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "string payload expected: %s")
(PUNCT "%")
(ID "type")
(PUNCT "(")
(ID "payload")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "_has_surrogates")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "_payload")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "charset")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_param")
(PUNCT "(")
(LIT "charset")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "charset")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(ID "deepcopy")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "msg")
(PUNCT "[")
(LIT "content-transfer-encoding")
(PUNCT "]")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "set_payload")
(PUNCT "(")
(ID "payload")
(PUNCT ",")
(ID "charset")
(PUNCT ")")
(NEWLINE)
(ID "payload")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_munge_cte")
(PUNCT "=")
(PUNCT "(")
(ID "msg")
(PUNCT "[")
(LIT "content-transfer-encoding")
(PUNCT "]")
(PUNCT ",")
(ID "msg")
(PUNCT "[")
(LIT "content-type")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "payload")
(PUNCT "=")
(ID "fcre")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(LIT ">From ")
(PUNCT ",")
(ID "payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write_lines")
(PUNCT "(")
(ID "payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_writeBody")
(PUNCT "=")
(ID "_handle_text")
(NEWLINE)
(KEYWORD def)
(ID "_handle_multipart")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msgtexts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "subparts")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "subparts")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "subparts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "isinstance")
(PUNCT "(")
(ID "subparts")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "subparts")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "subparts")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "subparts")
(PUNCT "=")
(PUNCT "[")
(ID "subparts")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "part")
(KEYWORD in)
(ID "subparts")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_new_buffer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "g")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(ID "g")
(PUNCT ".")
(ID "flatten")
(PUNCT "(")
(ID "part")
(PUNCT ",")
(ID "unixfrom")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "linesep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(ID "msgtexts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "s")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "boundary")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "get_boundary")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "boundary")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "alltext")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_encoded_NL")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "msgtexts")
(PUNCT ")")
(NEWLINE)
(ID "boundary")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_make_boundary")
(PUNCT "(")
(ID "alltext")
(PUNCT ")")
(NEWLINE)
(ID "msg")
(PUNCT ".")
(ID "set_boundary")
(PUNCT "(")
(ID "boundary")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "msg")
(PUNCT ".")
(ID "preamble")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "preamble")
(PUNCT "=")
(ID "fcre")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(LIT ">From ")
(PUNCT ",")
(ID "msg")
(PUNCT ".")
(ID "preamble")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "preamble")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "preamble")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write_lines")
(PUNCT "(")
(ID "preamble")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "--")
(PUNCT "+")
(ID "boundary")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "msgtexts")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "msgtexts")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "body_part")
(KEYWORD in)
(ID "msgtexts")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT "+")
(LIT "--")
(PUNCT "+")
(ID "boundary")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "body_part")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT "+")
(LIT "--")
(PUNCT "+")
(ID "boundary")
(PUNCT "+")
(LIT "--")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "msg")
(PUNCT ".")
(ID "epilogue")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "=")
(ID "fcre")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(LIT ">From ")
(PUNCT ",")
(ID "msg")
(PUNCT ".")
(ID "epilogue")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "epilogue")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write_lines")
(PUNCT "(")
(ID "epilogue")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_handle_multipart_signed")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "p")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "policy")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "p")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "max_line_length")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_handle_multipart")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "p")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_handle_message_delivery_status")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "part")
(KEYWORD in)
(ID "msg")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_new_buffer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "g")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(ID "g")
(PUNCT ".")
(ID "flatten")
(PUNCT "(")
(ID "part")
(PUNCT ",")
(ID "unixfrom")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "linesep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(ID "text")
(PUNCT "=")
(ID "s")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "lines")
(PUNCT "=")
(ID "text")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_encoded_NL")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "lines")
(KEYWORD and)
(ID "lines")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "_encoded_EMPTY")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_encoded_NL")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "lines")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_encoded_NL")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "blocks")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_handle_message")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_new_buffer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "g")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(ID "payload")
(PUNCT "=")
(ID "msg")
(PUNCT ".")
(ID "_payload")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "payload")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "g")
(PUNCT ".")
(ID "flatten")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(ID "unixfrom")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "linesep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(ID "payload")
(PUNCT "=")
(ID "s")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "payload")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_encode")
(PUNCT "(")
(ID "payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "classmethod")
(NEWLINE)
(KEYWORD def)
(ID "_make_boundary")
(PUNCT "(")
(ID "cls")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "token")
(PUNCT "=")
(ID "random")
(PUNCT ".")
(ID "randrange")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "maxsize")
(PUNCT ")")
(NEWLINE)
(ID "boundary")
(PUNCT "=")
(PUNCT "(")
(LIT "=")
(PUNCT "*")
(LIT 15)
(PUNCT ")")
(PUNCT "+")
(PUNCT "(")
(ID "_fmt")
(PUNCT "%")
(ID "token")
(PUNCT ")")
(PUNCT "+")
(LIT "==")
(NEWLINE)
(KEYWORD if)
(ID "text")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "boundary")
(NEWLINE)
(DEDENT)
(ID "b")
(PUNCT "=")
(ID "boundary")
(NEWLINE)
(ID "counter")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cre")
(PUNCT "=")
(ID "cls")
(PUNCT ".")
(ID "_compile_re")
(PUNCT "(")
(LIT "^--")
(PUNCT "+")
(ID "re")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "b")
(PUNCT ")")
(PUNCT "+")
(LIT "(--)?$")
(PUNCT ",")
(ID "re")
(PUNCT ".")
(ID "MULTILINE")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "cre")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "b")
(PUNCT "=")
(ID "boundary")
(PUNCT "+")
(LIT ".")
(PUNCT "+")
(ID "str")
(PUNCT "(")
(ID "counter")
(PUNCT ")")
(NEWLINE)
(ID "counter")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "b")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "classmethod")
(NEWLINE)
(KEYWORD def)
(ID "_compile_re")
(PUNCT "(")
(ID "cls")
(PUNCT ",")
(ID "s")
(PUNCT ",")
(ID "flags")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(ID "flags")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "BytesGenerator")
(PUNCT "(")
(ID "Generator")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Generates a bytes version of a Message object tree.\n\n    Functionally identical to the base Generator except that the output is\n    bytes and not string.  When surrogates were used in the input to encode\n    bytes, these are decoded back to bytes for output.  If the policy has\n    cte_type set to 7bit, then the message is transformed such that the\n    non-ASCII bytes are properly content transfer encoded, using the charset\n    unknown-8bit.\n\n    The outfp object must accept bytes in its write method.\n    ")
(NEWLINE)
(ID "_encoded_EMPTY")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "s")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "s")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ",")
(LIT "surrogateescape")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_new_buffer")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "BytesIO")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "s")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "s")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write_headers")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "h")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "msg")
(PUNCT ".")
(ID "raw_items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "fold_binary")
(PUNCT "(")
(ID "h")
(PUNCT ",")
(ID "v")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_NL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_handle_text")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "msg")
(PUNCT ".")
(ID "_payload")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "_has_surrogates")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "_payload")
(PUNCT ")")
(KEYWORD and)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "cte_type")
(PUNCT "==")
(LIT "7bit")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mangle_from_")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT ".")
(ID "_payload")
(PUNCT "=")
(ID "fcre")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(LIT ">From ")
(PUNCT ",")
(ID "msg")
(PUNCT ".")
(ID "_payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write_lines")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "_payload")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "BytesGenerator")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "_handle_text")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "_writeBody")
(PUNCT "=")
(ID "_handle_text")
(NEWLINE)
(PUNCT "@")
(ID "classmethod")
(NEWLINE)
(KEYWORD def)
(ID "_compile_re")
(PUNCT "(")
(ID "cls")
(PUNCT ",")
(ID "s")
(PUNCT ",")
(ID "flags")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(ID "s")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ")")
(PUNCT ",")
(ID "flags")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "_FMT")
(PUNCT "=")
(LIT "[Non-text (%(type)s) part of message omitted, filename %(filename)s]")
(NEWLINE)
(KEYWORD class)
(ID "DecodedGenerator")
(PUNCT "(")
(ID "Generator")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Generates a text representation of a message.\n\n    Like the Generator base class, except that non-text parts are substituted\n    with a format string representing the part.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "outfp")
(PUNCT ",")
(ID "mangle_from_")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "maxheaderlen")
(PUNCT "=")
(LIT 78)
(PUNCT ",")
(ID "fmt")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Like Generator.__init__() except that an additional optional\n        argument is allowed.\n\n        Walks through all subparts of a message.  If the subpart is of main\n        type `text', then it prints the decoded payload of the subpart.\n\n        Otherwise, fmt is a format string that is used instead of the message\n        payload.  fmt is expanded with the following keywords (in\n        %(keyword)s format):\n\n        type       : Full MIME type of the non-text part\n        maintype   : Main MIME type of the non-text part\n        subtype    : Sub-MIME type of the non-text part\n        filename   : Filename of the non-text part\n        description: Description associated with the non-text part\n        encoding   : Content transfer encoding of the non-text part\n\n        The default value for fmt is None, meaning\n\n        [Non-text (%(type)s) part of message omitted, filename %(filename)s]\n        ")
(NEWLINE)
(ID "Generator")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "outfp")
(PUNCT ",")
(ID "mangle_from_")
(PUNCT ",")
(ID "maxheaderlen")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "fmt")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fmt")
(PUNCT "=")
(ID "_FMT")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fmt")
(PUNCT "=")
(ID "fmt")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_dispatch")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "part")
(KEYWORD in)
(ID "msg")
(PUNCT ".")
(ID "walk")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "maintype")
(PUNCT "=")
(ID "part")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "maintype")
(PUNCT "==")
(LIT "text")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(ID "part")
(PUNCT ".")
(ID "get_payload")
(PUNCT "(")
(ID "decode")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "maintype")
(PUNCT "==")
(LIT "multipart")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_fmt")
(PUNCT "%")
(PUNCT "{")
(LIT "type")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get_content_type")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(LIT "maintype")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(LIT "subtype")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get_content_subtype")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(LIT "filename")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get_filename")
(PUNCT "(")
(LIT "[no filename]")
(PUNCT ")")
(PUNCT ",")
(LIT "description")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "Content-Description")
(PUNCT ",")
(LIT "[no description]")
(PUNCT ")")
(PUNCT ",")
(LIT "encoding")
(PUNCT ":")
(ID "part")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "Content-Transfer-Encoding")
(PUNCT ",")
(LIT "[no encoding]")
(PUNCT ")")
(PUNCT ",")
(PUNCT "}")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(ID "_width")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "repr")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "maxsize")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "_fmt")
(PUNCT "=")
(LIT "%%0%dd")
(PUNCT "%")
(ID "_width")
(NEWLINE)
(ID "_make_boundary")
(PUNCT "=")
(ID "Generator")
(PUNCT ".")
(ID "_make_boundary")
(NEWLINE)
(ENDMARKER)