unit ResaveSpreadsheetHeader;

{$mode ObjFPC}{$H+}

interface

//uses Classes, SysUtils;

type
ResaveResultCode=(RE_success,RE_open,RE_save);

function convert(const srcName, dstName:pchar; ErrorBuffer:pchar = nil; BufferSize:uint16 = 256 ):byte Cdecl;


implementation

uses ResaveSpreadsheet;

procedure StringToBuffer(const str:string; ErrorBuffer:pchar; BufferSize:uint16 );
begin
if( BufferSize>length(str) ) then BufferSize:=length(str);
move(str[1],ErrorBuffer[0],BufferSize);
end;

function convert(const srcName, dstName:pchar; ErrorBuffer:pchar = nil; BufferSize:uint16 = 256 ):byte Cdecl;
var ErrString:string;
  convertResult:ResaveResultCode;
begin
convertResult:=ResaveSpreadsheet.resave(srcName, dstName,ErrString);
if( (convertResult<>RE_success)and(ErrorBuffer<>nil) )then StringToBuffer(ErrString,ErrorBuffer,BufferSize);
result:=ord(convertResult);
end;

end.

