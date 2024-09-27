url=$(curl "https://sourceforge.net/projects/lazarus-ccr/rss?path=/FPSpreadsheet" 2>/dev/null|
grep "<link>.*</link>" |
sed 's|<link>||;s|</link>||' |
grep -E 'fpspreadsheet.+\.zip/download$'|
head -n 1)
echo $url