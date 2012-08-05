! Copyright (C) 2012 Your name.                        
! See http://factorcode.org/license.txt for BSD license.
USING: ahk.libahk ;                              
                                                       
IN: ahk                                             
                                                       
: ahk-dll ( filename options parameters -- handle )    
    ahkdll ;                                           
                                                       
: ahk-textdll ( filename options parameters -- handle )
    ahktextdll ;                                       
                                                       
                                                       
: ahk-Terminate ( timeout -- boolp )                   
    ahkTerminate ;                                     
: ahk-Ready ( -- boolp )                               
    ahkReady ;                                         
: ahk-Reload (  timeout -- boolp )                     
    ahkReload ;                                        
: ahk-Pause (  aChangeTo --  boolp )                   
    ahkPause ;                                         
: ahk-FindLabel (  aLabelName -- labelp )              
    ahkFindLabel ;                                     
: ahk-getvar (  name getVar  -- varvalue )             
    ahkgetvar ;                                        
: ahk-assign (  name  value -- intcode )               
    ahkassign ;                                        
: ahk-ExecuteLine ( line aMode wait -- uintcode )      
    ahkExecuteLine ;                                   
: ahk-Label (  aLabelName nowait  -- boolp )         
    ahkLabel ;                                         
                                                       
: ahk-Function ( funcname param1   param2   param3 -- resultstring )
    ""   ""   ""   ""  ""   ""   ""   ahkFunction  ;
                             
: ahk-PostFunction (  funcname  param1   param2   param3 -- uintcode )
    ""   ""   ""   ""  ""   ""   "" ahkPostFunction ;
                                                       
: add-File (  filename aAllowDuplicateInclude  aIgnoreLoadFailure -- uintp )
    addFile ;                                          
: add-Script (  script aReplace -- uintp )             
    addScript ;                                        
: ahk-Exec (  script -- boolp )                        
    ahkExec ;                                          
                                                       
                                                       
                                                       
                                                       
                                                       
