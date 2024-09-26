#ifndef SPREADSHEETCONVERT_H
#define SPREADSHEETCONVERT_H

namespace spreadsheetconvert
{

extern  "C" char convert(const char *srcName, const char *dstName, char * ErrorBuffer, uint16_t ErrorBufferSize=256);

}


#endif // SPREADSHEETCONVERT_H
