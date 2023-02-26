:symbol

# an idea of differences between symbols and strings
"string" == "string"  #=> true
"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true