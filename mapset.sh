#!/bin/bash
source ~/JTWP/mapselector/config.txt

topMAPS=( $(wget --output-file="logs.csv" "https://docs.google.com/spreadsheets/d/e/2PACX-1vTizXvS_2t76H5lSz7rOuVH4Jn7m23T8G_xZC576FpkL1EsAE54SyYlcO9JUFToRaqgKq2mM1W5Wb2M/pub?gid=1625075868&single=true&output=csv" -O " downloaded_content.csv" ; cat ' downloaded_content.csv' | head -1 | awk -F"," '{print $2 " COBRA\n" $3 " Lafiere\n" $4 " Village\n" $5 " BrecourtManor\n" $6 " OMG\n" $7 " FOY\n" $8 " 1918\n" $9 " SteMere-Eglise\n" $10 " SteMarieduMont\n" $11 " OPERATIONABERDEEN\n" $12 " VillageTactical\n" $13 " RAID\n" $14 " DemyanskPocket\n" $15 " Tunisia\n" $16 " DOG\n" $17 " Carentan\n" $18 " SnowTrail"}' | sort -nr | head -${numMAPS} | awk '{print $2}' ; rm ~/JTWP/mapselector/logs.csv) )




echo """[/Script/Pavlov.DedicatedServer]
bEnabled=${bEnabled}
ServerName=${SERVERNAME}
MaxPlayers=${MaxPlayers}
bSecured=${bSecured}
#Password=0000 
bCustomServer=${bCustomServer}
bVerboseLogging=${bVerboseLogging}
bCompetitive=${bCompetitive}
bWhitelist=${bWhitelist}
RefreshListTime=${RefreshListTime}
LimitedAmmoType=${LimitedAmmoType}
TickRate=${TickRate}
TimeLimit=${TimeLimit}
#BalanceTableURL=${BalanceTableURL}
ApiKey=${ApiKey}""" > "$GAMEini" 

for MAP in "${topMAPS[@]}" ; do
case $MAP in
    COBRA)
        MAPname="MapRotation=(MapId="UGC2917436007", GameMode="PUSH")"
        ;;
    Lafiere)
        MAPname="MapRotation=(MapId="UGC2828386010", GameMode="PUSH")"
        ;;
    Village)
        MAPname="MapRotation=(MapId="UGC2365152706", GameMode="PUSH")"
        ;;
    BrecourtManor)
        MAPname="MapRotation=(MapId="UGC2798420121", GameMode="PUSH")"
        ;;
    OMG)
        MAPname="MapRotation=(MapId="UGC2687407050", GameMode="PUSH")"
        ;;
    FOY)
        MAPname="MapRotation=(MapId="UGC2770583591", GameMode="PUSH")"
        ;;
    1918)
        MAPname="MapRotation=(MapId="UGC2803713656", GameMode="PUSH")"
        ;;
    SteMere-Eglise)
        MAPname="MapRotation=(MapId="UGC2688520805", GameMode="PUSH")"
        ;;
    SteMarieduMont)
        MAPname="MapRotation=(MapId="UGC2687407050", GameMode="PUSH")"
        ;;
    OPERATIONABERDEEN)
        MAPname="MapRotation=(MapId="UGC2471686951", GameMode="PUSH")"
        ;;
    VillageTactical)
        MAPname="MapRotation=(MapId="UGC2365152706", GameMode="PUSH")"
        ;;
    RAID)
        MAPname="MapRotation=(MapId="UGC2385221092", GameMode="PUSH")"
        ;;
    DemyanskPocket)
        MAPname="MapRotation=(MapId="UGC2686018874", GameMode="PUSH")"
        ;;
    Tunisia)
        MAPname="MapRotation=(MapId="UGC2707666221", GameMode="PUSH")"
        ;;
    DOG)
        MAPname="MapRotation=(MapId="UGC2658527851", GameMode="PUSH")"
        ;;
    Carentan)
        MAPname="MapRotation=(MapId="UGC2177005540", GameMode="PUSH")"
        ;;
    SnowTrail)
        MAPname="MapRotation=(MapId="UGC1990337643", GameMode="PUSH")"
        ;;                                                                                                
    esac
echo $MAPname >> "$GAMEini" 
done

cat "$GAMEini"
