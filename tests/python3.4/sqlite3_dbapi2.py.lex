(KEYWORD import)
(ID "datetime")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD import)
(ID "collections")
(PUNCT ".")
(ID "abc")
(NEWLINE)
(KEYWORD from)
(ID "_sqlite3")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(ID "paramstyle")
(PUNCT "=")
(LIT "qmark")
(NEWLINE)
(ID "threadsafety")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "apilevel")
(PUNCT "=")
(LIT "2.0")
(NEWLINE)
(ID "Date")
(PUNCT "=")
(ID "datetime")
(PUNCT ".")
(ID "date")
(NEWLINE)
(ID "Time")
(PUNCT "=")
(ID "datetime")
(PUNCT ".")
(ID "time")
(NEWLINE)
(ID "Timestamp")
(PUNCT "=")
(ID "datetime")
(PUNCT ".")
(ID "datetime")
(NEWLINE)
(KEYWORD def)
(ID "DateFromTicks")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Date")
(PUNCT "(")
(PUNCT "*")
(ID "time")
(PUNCT ".")
(ID "localtime")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT "[")
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "TimeFromTicks")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Time")
(PUNCT "(")
(PUNCT "*")
(ID "time")
(PUNCT ".")
(ID "localtime")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT "[")
(LIT 3)
(PUNCT ":")
(LIT 6)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "TimestampFromTicks")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Timestamp")
(PUNCT "(")
(PUNCT "*")
(ID "time")
(PUNCT ".")
(ID "localtime")
(PUNCT "(")
(ID "ticks")
(PUNCT ")")
(PUNCT "[")
(PUNCT ":")
(LIT 6)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "version_info")
(PUNCT "=")
(ID "tuple")
(PUNCT "(")
(PUNCT "[")
(ID "int")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "version")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "sqlite_version_info")
(PUNCT "=")
(ID "tuple")
(PUNCT "(")
(PUNCT "[")
(ID "int")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "sqlite_version")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "Binary")
(PUNCT "=")
(ID "memoryview")
(NEWLINE)
(ID "collections")
(PUNCT ".")
(ID "abc")
(PUNCT ".")
(ID "Sequence")
(PUNCT ".")
(ID "register")
(PUNCT "(")
(ID "Row")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "register_adapters_and_converters")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "adapt_date")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "val")
(PUNCT ".")
(ID "isoformat")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "adapt_datetime")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "val")
(PUNCT ".")
(ID "isoformat")
(PUNCT "(")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "convert_date")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "datetime")
(PUNCT ".")
(ID "date")
(PUNCT "(")
(PUNCT "*")
(ID "map")
(PUNCT "(")
(ID "int")
(PUNCT ",")
(ID "val")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT #"-")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "convert_timestamp")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "datepart")
(PUNCT ",")
(ID "timepart")
(PUNCT "=")
(ID "val")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT #" ")
(PUNCT ")")
(NEWLINE)
(ID "year")
(PUNCT ",")
(ID "month")
(PUNCT ",")
(ID "day")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "int")
(PUNCT ",")
(ID "datepart")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT #"-")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "timepart_full")
(PUNCT "=")
(ID "timepart")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT #".")
(PUNCT ")")
(NEWLINE)
(ID "hours")
(PUNCT ",")
(ID "minutes")
(PUNCT ",")
(ID "seconds")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "int")
(PUNCT ",")
(ID "timepart_full")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT #":")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "timepart_full")
(PUNCT ")")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "microseconds")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(LIT "{:0<6.6}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "timepart_full")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "microseconds")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(ID "val")
(PUNCT "=")
(ID "datetime")
(PUNCT ".")
(ID "datetime")
(PUNCT "(")
(ID "year")
(PUNCT ",")
(ID "month")
(PUNCT ",")
(ID "day")
(PUNCT ",")
(ID "hours")
(PUNCT ",")
(ID "minutes")
(PUNCT ",")
(ID "seconds")
(PUNCT ",")
(ID "microseconds")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "val")
(NEWLINE)
(DEDENT)
(ID "register_adapter")
(PUNCT "(")
(ID "datetime")
(PUNCT ".")
(ID "date")
(PUNCT ",")
(ID "adapt_date")
(PUNCT ")")
(NEWLINE)
(ID "register_adapter")
(PUNCT "(")
(ID "datetime")
(PUNCT ".")
(ID "datetime")
(PUNCT ",")
(ID "adapt_datetime")
(PUNCT ")")
(NEWLINE)
(ID "register_converter")
(PUNCT "(")
(LIT "date")
(PUNCT ",")
(ID "convert_date")
(PUNCT ")")
(NEWLINE)
(ID "register_converter")
(PUNCT "(")
(LIT "timestamp")
(PUNCT ",")
(ID "convert_timestamp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "register_adapters_and_converters")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(PUNCT "(")
(ID "register_adapters_and_converters")
(PUNCT ")")
(NEWLINE)
(ENDMARKER)