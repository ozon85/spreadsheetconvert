library spreadsheetconvert;

uses ResaveSpreadsheet
  , ResaveSpreadsheetHeader //take 'convert' original definition here
  ;

// extern  "C" char convert(const char *srcName, const char *dstName, char * ErrorBuffer, uint16_t ErrorBufferSize=256);

exports
  convert name 'convert'
  ;

begin

end.
