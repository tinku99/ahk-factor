USING: ahk.ahk2 alien.c-types alien.syntax present vocabs.loader io.pathnames sequences io.backend
alien io.encodings.utf8 io.encodings.utf16 ;                                                      
IN: temporary                                                                                     
                                                                                                  
"ahk" vocab-source-path absolute-path parent-directory                                            
"testscript.ahk" append normalize-path utf8 file-contents                                         
""                                                                                                
""                                                                                                
ahk-textdll                                                                                       
                                                                                                  
                                                                                                  
: echo-callback ( -- alien )                                                                      
    { c-string utf16le } { { c-string utf16le } } cdecl [ dup drop ] alien-callback ;             
                                                                                                  
"assign" "functionPointer" echo-callback alien-address present ahk-Function2                      
! "functionPointer" echo-callback alien-address present ahk-assign                                  
                                                                                                  
"mousemove"                                                                    
"5"        
"5"        
ahk-Function2
 
! press F3 to run callback from an autohotkey hotkey.                                             
                                                                                                  
1 ahk-Terminate                                                                
                                                                               
"!q::exitapp \n msgbox hello"                                                                 
""                                                                             
""                                                                             
ahk-textdll                                                                    
                                                                               

 
