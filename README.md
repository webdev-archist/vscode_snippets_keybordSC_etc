# vscode_snippets_keybordSC_etc
--CJS: Prototypes complete JS objects:-- https://docs.google.com/spreadsheets/d/1XKhT-rLcTI4ol2P7gYz5-Ggx35RL2E-OyWqAecIAH2I/edit#gid=0
--TODOList WEBDEV:-- https://docs.google.com/spreadsheets/d/1YktzRz1zrrS8PDY1BgAVj9bECSjMhHCHumDzEcLRsWA/edit#gid=0


# MY SNIPPET TODO LIST

## OC WEBDEV: P3 JS

- FETCHER DES DONNÉES SUR DIFFÉRENTS ENDPOINTS POUR GÉNÉRER DYNAMIQUEMENT UN VISUEL QUI SERA FILTRABLE:
un Promise.all([fetch(),...]).then(resp=>{}) ...etc avec la 1er requete qui retourne un type (paramétrable, ex: $json ) accroché à un .then(json=>{}) dans lequel il y aura:
   - un log de la réponse du 1er fetch (pour s'assurer qu'il n'y a pas d'erreur)
   - une boucle forEach pour éventuellement altérer les données avant de (pouvoirà les utiliser dans le 2nd réponse
   - la 2nd requete qui retourne un aussi type ($json par ex), dans laquelle on pourra éventuellement utiliser la réponse (altérée) de la 1er requete. Dans cette 2nd réponse on aura: 
      - un log de la réponse du 2nd fetch (pour s'assurer qu'il n'y a pas d'erreur)
      - une (liste de) variable.s contenant: 
         - entre autre le.s cible.s DOM dans la.es quelle.s on intégrera le contenu dynamique: 
            1. déjà présent sur la page
            2. que l'on ajoutera plus tard sur la page (comme une balise select par exemple)
         - une/les fonction.s qui pourront être utilisé.s au cours d'une boucle sur la.es réponse.s
      - on manipule le DOM (pour préparer le terrain avant de générer dynamiquement le contenu)
      - une boucle forEach sur cette dernière réponse pour générer le contenu dynamique:
         1. en utilisant .innerHTML (p^t essayer de privilégier l'utilisation .insertAdjacentHTML), 
         2. ou en utiliser du DOM (.createElement())
         - mais dans tous les cas, dans cette boucle il y aura: 
            - un block pour créer les balises
            - un autre pour accrocher des attributs
            - un autre pour accrocher des évènements
            - un dernier pour: 
               - soit intégrer le contenu entre eux dans le bon ordre, 
               - soit intégrer le contenu dynamiquement dans le DOM
         3. après la boucle on pourra rajouter entre autre un filtre en bouclant sur la 1er réponse: 
            - via un select
            - via un ul, menu, nav, ou encore simplement un div de divs
            - après la boucle on intègre dynamiquement le filtre à la page via un .before, .after, .append, ou encore .prepend
