#!/bin/bash 
#указываем где у нас хранится bash-интерпретатор 
exec 2> /dev/null
timeout=$(grep 'timeout' config.ini | grep -o '[0-9]*')
while (true)
do
	wget 6.pogoda.by
	awk '/meta name="Description"/' index.html | grep -o '[+|-][0-9]*\.[0-9]'
	rm index.html
	sleep $timeout
done
exit 0 #Выход с кодом 0 (удачное завершение работы скрипта)
