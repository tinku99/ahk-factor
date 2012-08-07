USING: accessors alien alien.accessors alien.c-types alien.libraries
alien.syntax classes.struct combinators io.encodings.ascii kernel
locals math system ;
                                         
IN: ahk.libahk                     
                                         
<< "libahk" "AutoHotkeyA32.dll" cdecl add-library >> 
                                                                                 
LIBRARY: libahk

FUNCTION: uint* ahkdll ( c-string filename, c-string argv, c-string args ) ;
FUNCTION: uint* ahktextdll ( c-string filename, c-string argv, c-string args ) ;
FUNCTION: bool ahkTerminate ( int timeout ) ;
FUNCTION: bool ahkReady (  ) ;
FUNCTION: bool ahkReload ( int timeout ) ;
FUNCTION: bool ahkPause ( c-string aChangeTo ) ;
FUNCTION: uint* ahkFindLabel ( c-string aLabelName ) ;
FUNCTION: c-string ahkgetvar ( c-string name, uint getVar  ) ;
FUNCTION: uint ahkassign ( c-string name,  c-string value ) ;
FUNCTION: uint* ahkExecuteLine ( uint* line, uint aMode, uint wait ) ;
FUNCTION: bool ahkLabel ( c-string aLabelName,  uint nowait  ) ;
FUNCTION: uint* ahkFindFunc ( c-string funcname ) ;
FUNCTION: c-string ahkFunction ( c-string func,  c-string param1,  c-string param2,  c-string param3,
                              c-string param4,  c-string param5,  c-string param6,  c-string param7,
                              c-string param8,  c-string param9,  c-string param10  ) ;
FUNCTION: uint ahkPostFunction ( c-string func,  c-string param1,  c-string param2,  c-string param3,
                                 c-string param4,  c-string param5,  c-string param6,  c-string param7,
                                 c-string param8,  c-string param9,  c-string param10  ) ;


FUNCTION: uint* addFile ( c-string filename,  bool aAllowDuplicateInclude,  int aIgnoreLoadFailure ) ;
FUNCTION: uint* addScript ( c-string script,  int aReplace ) ;
FUNCTION: bool ahkExec ( c-string script ) ;
