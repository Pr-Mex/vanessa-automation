#!/bin/sh

export WORKSPACE=`pwd`
echo $WORKSPACE
if test -d $WORKSPACE/build/ib; then rm -rf $WORKSPACE/build/ib; fi

mkdir $WORKSPACE/build -p
mkdir $WORKSPACE/build/ib -p

if test -d $WORKSPACE/test-reports; then rm -rf $WORKSPACE/test-reports; fi
mkdir $WORKSPACE/test-reports/uf -p
mkdir $WORKSPACE/test-reports/of -p


if test -f /opt/1C/v8.3/x86_64/1cestart; then 
	oneC_root=/opt/1C/v8.3/x86_64;
else 
	oneC_root=/opt/1C/v8.3/i386;
fi

if [ "$CONN_STRING" ]; then
	CONN='$CONN_STRING'
else
	CONN="/F$WORKSPACE/build/ib/"
	echo "create database $oneC_root"
	$oneC_root/1cv8 CREATEINFOBASE "File='$WORKSPACE/build/ib/'" /Lru /AddInList"test"
fi

#/opt/1C/v8.3/x86_64/1cv8 CREATEINFOBASE "Srvr=localhost;Ref=test;DBMS=PostgreSQL;DBSrvr=localhost;DB=test;DBUID=postgres;DBPwd=vagrant;Locale=ru;CrSQLDB=Y;LicDstr=Y" /AddInList"test"

#echo "resotore base"
#$oneC_root/1cv8 DESIGNER $CONN /Lru /RestoreIB $WORKSPACE/Tests/TestBase.dt
echo "load cf"
$oneC_root/1cv8 DESIGNER $CONN /Lru /LoadConfigFromFiles$WORKSPACE/lib/CF/83NoSync/ -format Plain /out $WORKSPACE/build/loagcffromsource.log
$oneC_root/1cv8 DESIGNER $CONN /Lru /UpdateDBCfg /out $WORKSPACE/build/UpdateDBCfg.log


export featurepath=$WORKSPACE/features/
export ignoretags=IgnoreOnCIMainBuild,IgnoreOnLinux
export translatemassage=1
export allurecreatereport=1
export allurepath=$WORKSPACE/test-reports/uf/
export addtofeaturefilter=1
export createlogs=1
export logapath=$WORKSPACE/build/
export vanessarun=1
export vanessashutdown=1

"$oneC_root/1cv8" ENTERPRISE /Lru /VLru $CONN  /C"StartFeaturePalyer;" /Execute"$WORKSPACE\vanessa-behavior.epf" /outrunTest.txt /RunModeManagedApplication /TESTMANAGER
