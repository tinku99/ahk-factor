USING: ahk alien.c-types alien.syntax present vocabs.loader io.pathnames sequences io.backend ;                 
IN: temporary                                                   
                                                                
"ahk" vocab-source-path absolute-path parent-directory          
"testscript.ahk" append normalize-path                          
""                                                              
""                                                              
ahk-dll                                                         
                                                                
: echo-callback ( -- alien )                                    
    c-string { c-string } cdecl [ dup drop ] alien-callback ;   
                                                                
"functionPointer" echo-callback alien-address present ahk-assign
 
! press F3 to run callback from an autohotkey hotkey. 
                                                                
1 ahk-Terminate                                                   



