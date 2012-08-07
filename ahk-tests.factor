USING: ahk, alien.c-types, alien.syntax, present
 
"C:\\Users\\naveen\\apps\\factor32\\work\\ahk\\testscript.ahk" "" ""
ahkdll  
        
"echo" "hello " "" "" ahk-Function 
        
: echo-callback ( -- alien )
    c-string { c-string } cdecl [ dup drop ] alien-callback ;
                            
"functionPointer" echo-callback alien-address present ahk-assign
                                                                
                                                                
ahk-Terminate                                                   

