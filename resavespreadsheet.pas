unit ResaveSpreadsheet;

{$mode ObjFPC}{$H+}

interface

uses
   SysUtils //for Exception
   ,ResaveSpreadsheetHeader //publication part
  ,fpSpreadsheet{,fpsUtils, fpstypes,fpsExprParser,fpsConditionalFormat},fpsallformats //неявное подключение известных форматов файлов
  ,HeapHandler // for specialize TObjectHandlerCreater
   ;

function resave(const srcName, dstName:string; out Errors:string):ResaveResultCode;


implementation


function WBreadfile(book:TsWorkbook;const filename:string;out Message:string):boolean;
begin
try
  book.ReadFromFile(filename{, sfOOXML});
  result:=true;
except on E:Exception do
  begin
    result:=false;
    Message:=E.Message;
  end;
end;

end;

function WBWritefile(book:TsWorkbook;const filename:string;out Message:string):boolean;
begin

try
  book.WriteToFile(filename,true);
  result:=true;
except on E:Exception do
  begin
  result:=false;
  Message:=E.Message;
  end;
end;

end;

type
HCD_TsWorkbook=specialize TObjectHandlerCreater<TsWorkbook>;


function resave(const srcName, dstName:string; out Errors:string):ResaveResultCode;
var SrcBook:TsWorkbook;
  BookHandler:HCD_TsWorkbook;
begin
SrcBook:= BookHandler.Heap;
result:=RE_success;

if not WBreadfile(SrcBook,srcName,Errors) then begin
  exit(RE_open);
end;

if not WBWritefile(SrcBook,dstName,Errors)then begin
  exit(RE_save);
end;

end;

end.

