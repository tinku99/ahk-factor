ToolTip, hello world, 0, 0
f2::
tooltip
msgbox hello
return 
        
f3::
factorcall()
return
     
!q::    
exitapp 
return  
        
        
echo(msg){
return msg
}                      
        
        
                       
factorcall(){
global functionPointer
msgbox % dllcall(functionPointer, "str", "hello callback", "cdecl str") 
}                      
