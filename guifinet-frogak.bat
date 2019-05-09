:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: Ideia: http://stackoverflow.com/questions/21245545/ping-test-using-bat-file-trouble-with-errorlevel 
:: Ereñotzuko Guifineteko sarean froga batzu egiteko.
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:: garbiketa
@echo off
cls

:: aldagaiak
set ip_01=192.168.1.1
set ip_02=10.69.53.163
set ip_03=10.69.53.194
set ip_04=10.69.53.193
set ip_05=10.69.72.65
set ip_06=10.69.72.66
set ip_07=10.69.72.35
set ip_08=10.69.72.33
set ip_09=10.69.72.129
set ip_10=10.69.72.131
set ip_11=8.8.8.8

:: hasierakoa

echo.
echo Erenotzutik GUIFINET bidez interneteko konexioa frogatzeko
echo -----------------------------------------------------------
echo.
echo.



:: frogak

echo 1. FROGA: Etxeko routerra frogatzen.
ping -n 1 %ip_01% | find "TTL=" >nul
if errorlevel 1 (
    echo EMAITZA: Ez dut etxeko routerra aurkitzen.
	echo GOMENDIOA: Routerra itzali eta piztu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 2. FROGA: Etxeko antena frogatzen.
ping -n 1 %ip_02% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut etxeko antena aurkitzen.
	echo GOMENDIOA: Antena itzali eta piztu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 3. FROGA: Erenotzuko AP-a frogatzen.
ping -n 1 %ip_03% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Erenotzuko AP-a aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 4. FROGA: Erenotzuko RB493G routerra frogatzen.
ping -n 1 %ip_04% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Erenotzuko RB493G routerra aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 5. FROGA: Erenotzuko RB450G routerra frogatzen.
ping -n 1 %ip_05% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Erenotzuko RB450G routerra aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 6. FROGA: Erenotzu-Hernani antena frogatzen.
ping -n 1 %ip_06% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Erenotzu-Hernani antena aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 7. FROGA: Santa Barbarako NB6 antena frogatzen.
ping -n 1 %ip_07% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut NB6 antena aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 8. FROGA: Santa Barbarako routerra frogatzen.
ping -n 1 %ip_08% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Santa Barbarako routerra aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 9. FROGA: Santa Barbarako antena sektoriala frogatzen.
ping -n 1 %ip_09% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Santa Barbarako antena sektoriala aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 10. FROGA: Latsunbeko antena frogatzen.
ping -n 1 %ip_10% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut Latsunbeko antena aurkitzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)

echo 11. FROGA: Interneteko konexioa frogatzen.
ping -n 1 %ip_11% | find "TTL=" >nul
if errorlevel 1 (
	echo EMAITZA: Ez dut interneteko konexiorik lortzen.
	echo GOMENDIOA: Minutu pare bat itxoin eta berriz ere frogatu. Bestela, Joxeani abixatu!
	goto end
) else (
    echo EMAITZA: ondo dabil!
	echo.
)






:end
echo.
echo.
echo.
echo.
pause
