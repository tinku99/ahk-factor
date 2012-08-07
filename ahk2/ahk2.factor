! Copyright (C) 2012 Your name.                        
! See http://factorcode.org/license.txt for BSD license.
USING: ahk.libahk2 ;                                  
                                                       
IN: ahk.ahk2                                             
                                                       
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
                                                       
: ahk-Function ( funcname -- resultstring )
    ""   ""   ""   ""  ""   ""   "" "" "" ""  ahkFunction  ;
: ahk-Function1 ( funcname param1 -- resultstring )
    ""   ""   ""   ""  ""   ""   "" "" ""  ahkFunction  ;
: ahk-Function2 ( funcname param1 param2 -- resultstring )
    ""   ""   ""   ""  ""   ""   "" ""   ahkFunction  ;
: ahk-Function3 ( funcname param1 param2 param3 -- resultstring )
    ""   ""   ""   ""  ""   ""   ""   ahkFunction  ;

: ahk-PostFunction ( funcname -- uintcode )                   
    ""   ""   ""   ""  ""   ""   "" "" "" ""  ahkPostFunction  ;
: ahk-PostFunction1 ( funcname param1 -- uintcode )           
    ""   ""   ""   ""  ""   ""   "" "" ""  ahkPostFunction  ; 
: ahk-PostFunction2 ( funcname param1 param2 -- uintcode )    
    ""   ""   ""   ""  ""   ""   "" ""   ahkPostFunction  ;   
: ahk-PostFunction3 ( funcname param1 param2 param3 -- uintcode )
    ""   ""   ""   ""  ""   ""   ""   ahkPostFunction  ;
                                                       
: add-File (  filename aAllowDuplicateInclude  aIgnoreLoadFailure -- uintp )
    addFile ;                                          
: add-Script (  script aReplace -- uintp )             
    addScript ;                                        
: ahk-Exec (  script -- boolp )                        
    ahkExec ;                                          
                                                       
                                                       
                                                       
                                                       
                                                       
