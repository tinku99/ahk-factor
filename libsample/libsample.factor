USING: accessors alien alien.accessors alien.c-types alien.libraries
alien.syntax classes.struct combinators io.encodings.ascii kernel
locals math system ;
                                         
IN: sample.libsample                     
                                         
<< "libsample" "C:\\Users\\naveen\\apps\\factor32\\work\\sample\\libsample\\SampleDylib.dll" cdecl add-library >> 

LIBRARY: libsample

FUNCTION: int addFunction ( int a, int b ) ;

FUNCTION: int stringLength ( char* str ) ;

