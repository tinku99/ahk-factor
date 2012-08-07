USING: accessors alien alien.accessors alien.c-types alien.libraries 
alien.syntax classes.struct combinators io.encodings.ascii io.encodings.utf16 kernel
locals math system present vocabs.loader io.pathnames sequences io.backend ;
                                         
IN: ahk.libahk2                    
<< "libahk2" "ahk.libahk2" vocab-source-path absolute-path parent-directory
"AutoHotkey2u32.dll" append normalize-path cdecl add-library >>            
                                                                                 
LIBRARY: libahk2
                           
FUNCTION: uint* ahkdll ( c-string[utf16le] filename, c-string[utf16le] argv, c-string[utf16le] args ) ;
FUNCTION: uint* ahktextdll ( c-string[utf16le] filename, c-string[utf16le] argv, c-string[utf16le] args ) ;
FUNCTION: bool ahkTerminate ( int timeout ) ;
FUNCTION: bool ahkReady (  ) ;       
FUNCTION: bool ahkReload ( int timeout ) ;
FUNCTION: bool ahkPause ( c-string[utf16le] aChangeTo ) ;
FUNCTION: uint* ahkFindLabel ( c-string[utf16le] aLabelName ) ;
FUNCTION: c-string[utf16le] ahkgetvar ( c-string[utf16le] name, uint getVar  ) ;
FUNCTION: uint ahkassign ( c-string[utf16le] name,  c-string[utf16le] value ) ;
FUNCTION: uint* ahkExecuteLine ( uint* line, uint aMode, uint wait ) ;
FUNCTION: bool ahkLabel ( c-string[utf16le] aLabelName,  uint nowait  ) ;
FUNCTION: uint* ahkFindFunc ( c-string[utf16le] funcname ) ;
FUNCTION: c-string[utf16le] ahkFunction ( c-string[utf16le] func,  c-string[utf16le] param1,  c-string[utf16le] param2,  c-string[utf16le] param3,
                              c-string[utf16le] param4,  c-string[utf16le] param5,  c-string[utf16le] param6,  c-string[utf16le] param7,
                              c-string[utf16le] param8,  c-string[utf16le] param9,  c-string[utf16le] param10  ) ;
FUNCTION: uint ahkPostFunction ( c-string[utf16le] func,  c-string[utf16le] param1,  c-string[utf16le] param2,  c-string[utf16le] param3,
                                 c-string[utf16le] param4,  c-string[utf16le] param5,  c-string[utf16le] param6,  c-string[utf16le] param7,
                                 c-string[utf16le] param8,  c-string[utf16le] param9,  c-string[utf16le] param10  ) ;
FUNCTION: uint* addFile ( c-string[utf16le] filename,  bool aAllowDuplicateInclude,  int aIgnoreLoadFailure ) ;
FUNCTION: uint* addScript ( c-string[utf16le] script,  int aReplace ) ;
FUNCTION: bool ahkExec ( c-string[utf16le] script ) ;
