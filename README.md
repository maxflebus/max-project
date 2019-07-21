# max-project
Test con Maven yourl nginx+letsencrypt come proxy
Ho iniziato Sabato pomeriggio convertendo la chiave privata da RSA a SSH e convincendo SecureCRT ad usarla
Non essendo, come detto, un esperto di Docker, cerco e trovo una guida all'installazione di Docker-CE https://docs.docker.com/install/linux/docker-ce/ubuntu/, che poi alla fine è aggiungi il repository e installa i package docker-ce docker-ce-cli containerd.io. In una decina di minuti sono a far girare "docker run hello-world". E funziona \o/

A questo punto le istruzioni sono di creare un contaier con il servizio myurl in maven. Seguo le istruzioni di entrambi i pacchetti, ma mi confondo. Anche perche' la famiglia inizia a cercarmi e quindi mi prendo una pausa di riflessione.

Recentemente avevo scaricato un libro su Docker, mi metto a leggerlo e dopo un paio di prove(anche di più) capisco come fare una build con Dockerfile, lanciarla in modo che il container venga poi rimosso, fare il publish di una porta.
Ecco quindi attivato il servizio yourl sulla porta 8080:
$ sudo docker run --rm -p 8080:8080 max-project

Attivo quindi nginx come reverse proxy basandomi su https://www.keycdn.com/support/nginx-reverse-proxy e attivo letsencrypt su nginx con "certbot --nginx -d pr-flebus.mondora.com"

Mi sembrava di avere un account github e quindi dopo aver resettato la password dell'account maxflebus, creo un nuovo progetto, metto il Dockerfile, la configurazione di nginx e completo questo readme.

Max, Varese 21/7/19 
