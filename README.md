# Pejsek – klikací hra

Klepneš na pejska → +1 bod. Skóre je nahoře a pamatuje si se i po zavření appky.

## Jak získat .ipa (bez Macu)

Na Windows se .ipa postavit nedá (Apple to dovolí jen na macOS), proto to za tebe postaví GitHub zdarma:

1. Založ si na github.com nový repozitář (klidně **private**).
2. Nahraj do něj obsah této složky `PejskoKlik` (včetně skryté složky `.github`).
   Nejjednodušší je v PowerShellu v téhle složce:
   ```
   git init
   git add .
   git commit -m "Pejsek"
   git branch -M main
   git remote add origin https://github.com/TVUJ_UCET/PejskoKlik.git
   git push -u origin main
   ```
3. Na GitHubu otevři záložku **Actions** → běh „Build IPA“ → po ~3 min dole v **Artifacts** stáhni `PejskoKlik-ipa` (zip, uvnitř je `PejskoKlik.ipa`).

## Instalace na iPhone

.ipa je nepodepsaná – podepíše ji nástroj při instalaci tvým Apple ID:

- **Sideloadly** (sideloadly.io) – připoj iPhone kabelem, přetáhni .ipa, zadej Apple ID, Start.
- Na iPhonu: Nastavení → Obecné → Správa VPN a zařízení → důvěřovat svému Apple ID.
- Na iOS 16+ ještě zapnout Nastavení → Soukromí a zabezpečení → **Režim pro vývojáře**.

S bezplatným Apple ID appka vyprší po 7 dnech – stačí ji v Sideloadly nainstalovat znovu.

## Jiný obrázek

Nahraď `Sources/dog.jpg` jiným obrázkem se stejným jménem a pushni znovu.
