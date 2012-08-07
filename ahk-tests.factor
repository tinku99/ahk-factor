USING: ahk, alien.c-types, alien.syntax, present
IN: temporary                                  
                                               
"ahk" vocab-source-path absolute-path parent-directory
"testscript.ahk" append normalize-path
""                                             
""                                             
ahkdll                                         
                                    
                                    
: echo-callback ( -- alien )        
    c-string { c-string } cdecl [ dup drop ] alien-callback ;
                            
"functionPointer" echo-callback alien-address present ahk-assign
                                                                
                                                                
ahk-Terminate                                                   



