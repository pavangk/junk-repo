#!/bin/bash 
# this script is written to send weekly status report to manager
# pavangk@juniper.net

MANAGER=yprasad@juniper.net
CC=pavangk@juniper.net,yp-staff@juniper.net
FROM=pavangk@juniper.net
WEEK=`date +%V`

SUBJECT=`date +week_%V`
FILENAME=$SUBJECT"_status_report.txt"

if [ ! -f ./$FILENAME ]
then
cat > ./$FILENAME << BEGIN
To:$MANAGER 
Cc:$CC
From:$FROM 
Subject: weekly status - $SUBJECT 
-------------------------------------------------------------
WEEKLY STATUS - 
-------------------------------------------------------------
BEGIN
fi
#show the status file
/bin/cat $FILENAME
#take input from the terminal
/bin/bash -c < "/dev/tty" /bin/cat >> $FILENAME

#sendmail to your manager
#sendmail -odb -oem -oi -t < $FILENAME

NUMBER=`ls *.gz | cut -d . -f 1`
NUMBER=`expr $NUMBER+1`
#archive status mails/weekly reports on 15 th day 
MAX=10
NO_OF_REPORTS=`ls -ltr *week_*_status_report.txt | wc -l`

if [ $NO_OF_REPORTS -ge $MAX ]
then
tar -czvf 1.tar.gz week_*
fi
