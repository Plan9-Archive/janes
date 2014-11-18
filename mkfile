WERC=/usr/sl/www/werc
PLAN9=$WERC/sites/plan9.stanleylieber.com

web:V:
	src=`{basename `{pwd}}
	rm -rf $PLAN9/werc/apps/$src
	cd $WERC/apps
	tar zcvf $PLAN9/werc/apps/$src.tgz $src
	cd $PLAN9/werc/apps
	tar zxvf $src.tgz
