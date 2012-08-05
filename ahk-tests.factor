USING: ahk, alien.c-types, alien.syntax, present
IN: temporary                                  
                                               
"ahk" vocab-source-path "testscript.ahk" append
""                                             
""                                             
ahkdll                                         


: echo-callback ( -- alien )
    c-string { c-string } cdecl [ dup drop ] alien-callback ;
                            
"functionPointer" echo-callback alien-address present ahk-assign
                                                                
                                                                
ahk-Terminate                                                   



