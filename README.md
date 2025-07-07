# WiFi Password Viewer

Un semplice script batch per Windows che permette di visualizzare le password di tutte le reti WiFi salvate sul sistema.

## 📋 Descrizione

Questo script utilizza i comandi nativi di Windows (`netsh`) per recuperare e mostrare le password delle reti WiFi memorizzate nel sistema. È utile quando hai dimenticato la password di una rete WiFi a cui ti sei già connesso in passato.

## ⚡ Funzionalità

- **Scansione automatica**: Trova tutte le reti WiFi salvate sul sistema
- **Visualizzazione password**: Mostra la password per ogni rete (se disponibile)
- **Interfaccia semplice**: Output chiaro e organizzato
- **Controllo privilegi**: Verifica automaticamente i permessi di amministratore

## 🔧 Requisiti

- **Sistema operativo**: Windows (qualsiasi versione con supporto `netsh`)
- **Privilegi**: Esecuzione come **Amministratore** (obbligatorio)
- **Dipendenze**: Nessuna (utilizza solo comandi nativi di Windows)

## 🚀 Utilizzo

### Metodo 1: Esecuzione diretta
1. Salva il codice in un file con estensione `.bat` (es. `wifi_passwords.bat`)
2. **Fai clic destro** sul file
3. Seleziona **"Esegui come amministratore"**
4. Lo script mostrerà automaticamente tutte le reti e le relative password

### Metodo 2: Da prompt dei comandi
```cmd
# Apri il prompt come amministratore
# Naviga nella cartella contenente lo script
cd C:\percorso\dello\script

# Esegui lo script
wifi_passwords.bat
```

## 📊 Output di esempio

```
========================================
       WIFI PASSWORD VIEWER
========================================

Cercando reti WiFi salvate...

----------------------------------------
Rete: Casa_WiFi
Password: miapassword123

----------------------------------------
Rete: Ufficio_Guest
Password: Nessuna/Aperta

----------------------------------------
Rete: Vodafone_12345
Password: chiavesegreta

Completato!
```

## ⚠️ Note importanti

### Sicurezza
- **Usa responsabilmente**: Questo script mostra password in chiaro
- **Privacy**: Non condividere l'output con persone non autorizzate
- **Ambiente sicuro**: Esegui solo su computer di tua proprietà

### Limitazioni
- Funziona solo su **Windows**
- Richiede **privilegi di amministratore**
- Mostra solo reti WiFi **precedentemente salvate**
- Non può recuperare password di reti a cui non ti sei mai connesso

## 🛠️ Come funziona

Lo script utilizza una serie di comandi Windows:

1. **`net session`**: Verifica i privilegi di amministratore
2. **`netsh wlan show profiles`**: Elenca tutte le reti WiFi salvate
3. **`netsh wlan show profile name="..." key=clear`**: Recupera la password per ogni rete

## 🔍 Risoluzione problemi

### "ERRORE: Esegui come amministratore!"
**Soluzione**: Fai clic destro sul file .bat e seleziona "Esegui come amministratore"

### Lo script non trova nessuna rete
**Possibili cause**:
- Non ci sono reti WiFi salvate sul sistema
- Il servizio WLAN è disabilitato
- Problemi con i driver WiFi

### Password non visualizzate
**Possibili cause**:
- Alcune reti potrebbero essere aperte (senza password)
- Profili corrotti nel sistema
- Restrizioni di sicurezza aziendali

## 📝 Licenza

Questo script è fornito "così com'è" per scopi educativi e di utilità personale. Utilizzalo responsabilmente e nel rispetto delle leggi locali sulla privacy e sicurezza informatica.

## 🤝 Contributi

Sentiti libero di migliorare questo script o segnalare problemi. Alcune possibili migliorie:
- Esportazione risultati in file
- Interfaccia grafica
- Supporto per altri tipi di connessioni

---

**⚡ Suggerimento**: Salva questo script in una cartella facilmente accessibile per utilizzarlo quando necessario!