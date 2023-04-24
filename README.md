# googleSheetsMapRotation
pulls and build map rotation for pavlov from a google sheet 

<hr>
editable vars in config.txt <br>
<br><br>

then add to crontab to trigger how often u want it to run <br>
<br><br>
having problems with resetting the google sheet with there script so it will need to be done manually <br><br>

also u need to build the case's in mapset.sh <hr>

    COBRA)
        MAPname="MapRotation=(MapId="UGC2917436007", GameMode="PUSH")"
        ;;

<hr>
u need to set where COBRA is to match the name in your CSV then u need the UGC for the map and mode 
