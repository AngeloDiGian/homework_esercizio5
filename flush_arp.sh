#!/bin/bash

NODI="r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 veneto liguria toscana marche campania puglia calabria sardegna sicilia"

echo "Pulizia tabelle ARP su tutti i nodi"


for NODO in $NODI; do
    if kathara exec "$NODO" "ip neigh flush all"; then
        echo "[OK] $NODO: ARP pulita"
    else
        echo "[ERRORE] $NODO: Impossibile pulire ARP"
    fi
done

echo "Finito"