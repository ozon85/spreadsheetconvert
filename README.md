# spreadsheetconvert
library for converting spreadsheets from one format to another. For example, from xls to xlsx.

This library is a simple wrapper over the capabilities of opening and saving spreadsheets of the [laz_fpspreadsheet](https://sourceforge.net/projects/lazarus-ccr/files/FPSpreadsheet/) package. It was created to easily convert tables from one format to another using a C-like call.
Open formats and other information can be found on the [page](https://wiki.lazarus.freepascal.org/FPSpreadsheet#Workbook).

How it works:
Pass the paths to the input and output files to the convert method, and the algorithm will open the source file and, using the output file extension, save the table in a new format.

How to assemble:
To build, you need fpspreadsheet, lazutils, packager, and the fpc compiler
  If you want to build using the Lazarus IDE, you will need to install it, download and open the FPSpreadsheet package in Lazarus. The rest of the components and the compiler will most likely be installed with Lazarus.
 If you want to build automatically without an IDE, use the compile script. For it to work, the fpc compiler must be available in the environment paths, and the components must be in the 'components' directory.

The structure of the 'components' directory for building with fpc without Lazarus:

components<br />
&nbsp;&nbsp;fpspreadsheet<br />
&nbsp;&nbsp;[lazutils](https://gitlab.com/freepascal.org/lazarus/lazarus/-/archive/main/lazarus-main.zip?path=components/lazutils)<br />
&nbsp;&nbsp;[packager](https://gitlab.com/freepascal.org/lazarus/lazarus/-/archive/main/lazarus-main.zip?path=packager)<br />
&nbsp;&nbsp;[heaphandler.pas](https://raw.githubusercontent.com/ozon85/components/refs/heads/main/heaphandler.pas)<br />

To get a link to the archive of the latest version of fpspreadsheet, use the script fpspreadsheet_last_url.sh.

### Русский:
Библиотека для преобразования электронных таблиц из одного формата в другой. Например из xls в xlsx.
Эта библиотека простая обёртка над возможностями открытия и сохранения сводных таблиц пакета [laz_fpspreadsheet](https://sourceforge.net/projects/lazarus-ccr/files/FPSpreadsheet/). Она была создана для простого конвертирования таблиц из одного формата в другой, используя Си подобный вызов.
Открываемые форматы и прочую информацию см. на [странице](https://wiki.lazarus.freepascal.org/FPSpreadsheet#Workbook).

Как работает:
Передайте методу convert пути к входному и выходному файлу и алгоритм откроет исходный файл и, используя расширение выходного файла, сохранит таблицу в новом формате.

Как собрать:
Для сборки нужны компоненты fpspreadsheet, lazutils, packager и компилятор fpc
  Если вы хотите собрать через IDE Lazarus, вам понадобится установить его, загрузить и открыть в Lazarus пакет FPSpreadsheet. Остальные компоненты и компилятор скорее всего будут установлены с Lazarus.
 Если вы хотите собрать автоматически без IDE, воспользуйтесь скриптом compile. Для его работы требуется, чтобы компилятор fpc был доступен в путях среды, а компоненты лежали в каталоге 'components'.

Структуру каталога 'components' для сборки с fpc без Lazarus см. выше в английском описании.

Для получения ссылки на архив последней версии fpspreadsheet используйте скрипт fpspreadsheet_last_url.sh
