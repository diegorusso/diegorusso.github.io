---
title: 'HOWTO: Il modello di branching di Git'
categories:
- private
- car
- friends
- apple
- various links
- job
- howto
- lavoro
- libro
tags:
- howto
- test
---
**_"Questo post e la traduzione del post originale '[A successful Git branching model](http://nvie.com/git-model?utm_source=diegor&utm_medium=blog&utm_campaign=branch-model)' di Vincent Driessen." Se troverai errori o incomprensioni nella traduzione ti prego di farmelo presente. Lo correggero prima possibile._**

  
In questo post ti presento il modello di sviluppo che ho introdotto per tutti
i miei progetti (sia sul lavoro e privato) circa un anno fa, e che ha rivelato
un grande successo. Sono sempre stato motivato a scrivere su Git, ma non ho
mai trovato il tempo per farlo bene, fino ad ora. Non voglio parlare di uno
qualsiasi dei dettagli dei progetti ma solo sulla strategia di branching e
della gestione delle release.

[![]({{site.url}}/images/git1.png)]({{site.url}}/images/git1.png)

Ci concentreremo su [Git](http://git-scm.com/) come strumento di versione per
tutti i nostri sorgenti

## **Perche Git?**

  
Per una discussione approfondita sui pro ed i contro di Git rispetto ai
sistemi centralizzati di revisione del codice sorgente,
[vedi](http://whygitisbetterthanx.com/) [il](http://www.looble.com/git-vs-svn-
which-is-better/)
[web](https://git.wiki.kernel.org/index.php/GitSvnComparsion). Ci sono un
sacco di flame la. Come sviluppatore, preferisco Git rispetto a tutti gli
altri strumenti in giro oggi. Git ha veramente cambiato il modo di pensare
degli sviluppatori riguardo il merging ed il branching. Dal classico mondo
CVS/Subversion da cui provengo,  il merging/branching e sempre stato
considerato un po' inquietante ("Attenzione ai conflitti del merge, ti
mordono!"), come qualcosa da fare una volta ogni tanto.

Ma con Git, queste azioni sono estremamente economiche e semplici, e sono
considerate una delle parti fondamentali del flusso di lavoro giornaliero,
davvero. Per esempio, nei [libri](http://svnbook.red-bean.com/) di
CVS/Subversion, branching e merging sono discussi solo negli ultimi capitoli
(per utenti avanzati), mentre in [ogni](http://book.git-scm.com/)[
libro](http://pragprog.com/titles/tsgit/pragmatic-version-control-using-git)
di [Git](http://github.com/progit/progit) gia rientra nel capitolo 3 (basi).

Come conseguenza della sua semplicita e natura ripetitiva, branching e merging
non sono piu qualcosa di cui aver paura. Strumenti di controllo di versione
sono tenuti a contribuire al branching e merging piu di ogni altra cosa.

Basta sugli strumenti, entriamo nel merito sul modello di sviluppo. Il modello
che ho intenzione di presentare qui, e sostanzialmente non piu di un insieme
di procedure che ogni membro del team deve seguire al fine di giungere ad un
processo di sviluppo software gestito.

## Decentralizzato ma centralizzato

  
La configurazione repository che usiamo e che funziona bene con questo modello
di branching, e quella con un repo centrare "vero". Si noti che questo repo e
considerato solo per essere quello centrale (dato che Git e un DVCS, non c'e
nessuna cosa considerata come un repo centrale a livello tecnico). Si fara
riferimento a questo repository come **_origin_**, dal momento che questo nome
e familiare a tutti gli utenti Git.

[![]({{site.url}}/images/git2.png)]({{site.url}}/images/git2.png)

Ogni sviluppatore compie i propri push e pull in **origin**. Ma oltre le
relazioni centralizzata push-pull, ogni sviluppatore puo effettuare i pull di
modifiche da altri peers e formare sottosquadre. Ad esempio, questo potrebbe
essere utile per lavorare insieme a due o piu sviluppatori su una grande
novita, prima di effettuare il push prematuro dei lavori in corso in
**_origin_**. Nella figura sopra, ci sono sottosquadre di Alice e Bob, Alice e
Davide, e Clair e David.  
Tecnicamente, questo non significa niente piu che Alice ha definito un Git
remoto, di nome **bob**, che punta al repository di Bob, e viceversa.

## I branch principali

  
Nel core, il modello di sviluppo e fortemente ispirato ai modelli gia
esistenti precedentemente. Il repository centrale ha due branch principali,
con durata infinita:

  * **master**
  * **develop**
  

  
Il branch **master** in **origin** dovrebbe essere familiare ad ogni utente
Git. Parallelamente al branch **master,** ne esiste un altro chiamato
**develop**.

Consideriamo **origin/master** come branch principale dove il codice sorgente
di **HEAD** rispecchia sempre lo stato di produzione.

Consideriamo **origin/develop** come branch principale dove il codice sorgente
di **HEAD** rispecchia sempre uno stato con gli ultimi cambiamenti di sviluppo
consegnati per la prossima release. Qualcuno vorrebbe chiamare questo branch
"integration branch" (branch di integrazione). Questo e da dove ogni
automatica build giornaliera viene compilata.

Quando il codice sorgente nel branch **develop** raggiunge un punto stabile ed
e pronto per essere rilasciato, tutti i cambiamenti dovrebbero essere portati
nel **master** in qualche modo e poi "taggati" con il numero di release. Come
fare questo verra discusso piu avanti.

Quindi, ogni volta che i cambiamenti sono portati nel **master**, per
_definizione_ questa e la nuova release di produzione. Tendiamo ad essere
molto severi in questo, in modo che, teoricamente, si potrebbe usare uno hook
script di Git per fare il build e il roll-out del nostro software nei server
di produzione ogni volta che c'e un commit nel master.

## I branch di supporto

  
Accanto ai branch principali **master** e **develop**, il nostro modello di
sviluppo usa una varieta di branch di supporto per aiutare lo sviluppo
parallelo tra i membri del team, facilitare il tracking delle funzionalita,
preparare le release di produzione e contribuire a risolvere i problemi di
produzione in maniera rapida. A differenza dei branch principali, questi hanno
sempre una durata limitata, in quanto saranno rimossi alla fine della loro
vita.

I diversi branch che possiamo utilizzare sono i seguenti:

  * _Feature branches_: branch di nuove features
  * _Release braches_: branch per i rilasci
  * _Hotfix branches_: branch per la risoluzione di problemi
  

  
Ognuno di questi branch ha degli scopi precisi e sono limitati a delle regole
severe, ovvero da dove dovrebbero essere generati e dove devono essere
rimergiati.. Li analizzeremo tra poco.

In nessun caso sono branch "speciali" dal punto di vista tecnico. I tipi di
branch sono suddivisi in categorie dipendentemente da come li usiamo.

### Feature branches

  
Si dovrebbero formare da: **develop  
**Devono essere rimergiati in: **develop  
**I nomi che solitamente si usano: tutti tranne **master, develop, release-*, hotfix-***

** **![]({{site.url}}/images/git4.png)

  
_Feature branches_ (a volte chiamati topic branches) sono usati per sviluppare
nuove features per release future piu o meno lontane. Quando si parte allo
sviluppo di una nuova feature, la release di destinazione in cui la
funzionalita dovra essere incorporata potrebbe essere sconosciuta fino a quel
momento. L'essenza del feature branch e che esiste finche la funzionalita e in
sviluppo, fin quando eventualmente sara rimergiata in **develop** (per
aggiungerla definitivamente alla prossima release) oppure scartata
(esperimento fallito).

Feature branch esiste tipicamente solo nel repository dello sviluppatore, non
in **origin**.

#### Creazione di un feature branch

  
Quando si inizia a lavorare su una nuova feature, si dirama dal branch
**develop**

    
    
    **$ git checkout -b myfeature develop**  
    
    Switched to a new branch "myfeature"

#### Incorporare una feature terminata nel develop

  
Le funzionalita terminate dovrebbero essere fuse nel branch **develop** in
modo da aggiungerle nella prossima release:

    
    
    **$ git checkout develop**  
    
    Switched to branch 'develop'  
    
    **$ git merge --no-ff myfeature**  
    
    Updating ea1b82a..05e9557  
    
    (Summary of changes)  
    
    **$ git branch -d myfeature**  
    
    Deleted branch myfeature (was 05e9557).  
    
    **$ git push origin develop**

  
Il flag **\--no-ff** causa il merge per creare sempre un nuovo oggetto commit,
anche se il merge potrebbe essere eseguito con un fast-forward. Cio evita la
perdita di informazioni circa l'esistenza storica del feature branch e
raggruppa tutti i commit che hanno aggiunto questa feature. Confronta:

[![]({{site.url}}/images/git5.png)]({{site.url}}/images/git5.png)

In quest'ultimo caso, e impossibile vedere dalla storia di git che l'insieme
di commit hanno implementato una nuova funzionalita \- si dovrebbero leggere
manualmente dai messaggi di log. Il ripristino di una intera funzionalita
(cioe un gruppo di commit) fa venire il mal di testa in questo ultimo caso,
mentre e presto fatto se e stato usato il flag **\--no-ff**.

Si, verranno creati un po' piu oggetti commit (vuoti), ma il guadagno e molto
piu grande del costo.

Sfortunatamente, non ho trovato un modo per avere il **\--no-ff** come
comportamento di default per il **git merge**, ma in realta dovrebbe esserlo.

### Release branches

  
Si dovrebbero formare da: **develop**  
Devono essere rimergiati in: **develop** e **master**  
I nomi che solitamente si usano: **release-***

I branch di release supportano la preparazione per una nuova release di
produzione. Essi consentono gli aggiustamenti e le rifiniture dell'ultimo
minuto (n.d.r. [mettere i puntini sulle
i](http://en.wiktionary.org/wiki/dot_the_i's_and_cross_the_t's)). Inoltre,
essi consentono le correzioni di bug minori e la preparazione di meta-dati per
un rilascio (numero di versione, build date, ecc.). Facendo tutto questo
lavoro su un release branch, il branch **develop** e autorizzato a ricevere
funzionalita per la prossima grande release.

Il momento chiave per creare un branch di release branch da **develop** e
quando develop rispecchia (quasi) lo stato desiderato della nuova release.
Almeno tutte le caratteristiche previste per la release-da-buildare devono
essere mergiate in **develop **a questo punto nella timeline. Tutte le
caratteristiche previste per le versioni future, non possono/devono aspettare
fino a dopo che il release branch e stato formato.

Ed e proprio all'inizio di unrelease branch che alla prossima release viene
assegnato un numero di versione - nessuno precedentemente. Fino a quel
momento, il branch **develop** rispecchiava i cambiamentei per la "prossima
release", ma non e chiaro se questa "prossima release" diventera eventualmente
un 0.3 oppure una 1.0, fino a quando release branch sara avviato. Tale
decisione e effettuata all'inizio della release branch ed il numero e
assegnato secondo le regole del progetto.

#### Creare un release branch

  
I release branch sono creati dal branch **develop**. Per esempio, diciamo che
la versione 1.1.5 e la release di produzione corrente ed abbiamo una nuova
grande release che sta arrivando. Lo stato di **develop** e pronto per la
"prossima release" ed abbiamo deciso che questa diventera la versione 1.2
(invece che la 1.1.6 oppure 2.0). Allora creiamo un branch e diamo al release
branch un nome che rispecchi il nuovo numero di versione:

    
    
    **$ git checkout -b release-1.2 develop**  
    
    Switched to a new branch "release-1.2"  
    
    **$ ./bump-version.sh 1.2**  
    
    Files modified successfully, version bumped to 1.2.  
    
    **$ git commit -a -m "Bumped version number to 1.2"**  
    
    [release-1.2 74d9424] Bumped version number to 1.2  
    
    1 files changed, 1 insertions(+), 1 deletions(-)

  
Dopo la creazione del nuovo branch e dopo aver cambiato in esso, gli diamo il
numero di versione. Qui, _bump-version.sh_ e un finto script di shell che
cambia qualche file nella working copy per rispecchiare la nuova versione.
(Questo puo essere fatto anche manualmente - il punto e che alcuni file
cambiano). Successivamente, la versione numerata e committata.

Questo nuovo branch puo esistere per un po' di tempo, finche la release non
verra lanciata definitivamente. Durante questo intervallo, i bug fix possono
essere applicati a questo branch (anziche al branch **develop**). Aggiungere
nuove grandi feature e severamente vietato. Devono essere mergiate nel
**develop**, e quindi, aspettare la prossima grande release.

#### Finire un release branch

  
Quando lo stato del release branch e pronto per diventare una vera release, e
necessario eseguire qualche azione. Primo, il release branch e mergiato nel
**master** (ricorda che ogni commit nel **master** e una nuova release** _per
definizione). Successivamente, quel commit nel **master** deve essere taggato
per una facile consultazione futura a questa versione storica. Alla fine, i
cambiamenti fatti nel release branch nccessitano di essere rimergiati nel
**develop**, cosi le future release contengono questi bug fix._**

I primi due step in Git:

    
    
    **$ git checkout master**  
    
    Switched to branch 'master'  
    
    **$ git merge --no-ff release-1.2**  
    
    Merge made by recursive.  
    
    (Summary of changes)  
    
    **$ git tag -a 1.2**

  
La release e creata e taggata per una futura consultazione.  
**Edit**: Puoi usare anche il flag **-s** oppure **-u ** per firmare crittograficamente i tuoi tag.

Per mantenere i cambiamenti apportati nel release branch, dobbiamo mergiarli
nel **develop**. In Git:

    
    
    **$ git checkout develop**  
    
    Switched to branch 'develop'  
    
    **$ git merge --no-ff release-1.2**  
    
    Merge made by recursive.  
    
    (Summary of changes)

  
Questo passaggio puo anche portare ad un conflitto di merge (probabilmente
anche dal fatto che abbiamo cambiato il numero di versione). Se cosi fosse,
correggilo e committa.  
A questo punto abbiamo veramente finito ed il release branch puo essere
rimosso dal momento che non ne abbiamo piu bisogno:

    
    
    **$ git branch -d release-1.2**  
    
    Deleted branch release-1.2 (was ff452fe).

### Hotfix branches

  
Si dovrebbero formare da: **master**  
Devono essere rimergiati in: **develop** e **master**  
I nomi che solitamente si usano: **hotfix-***

**[![]({{site.url}}/images/git6.png)]({{site.url}}/images/git6.png)**

** **

  
** **

Gli hotfix branch sono molto simili ai release branch in quanto hanno anche lo
scopo di preparare una versione nuova produzione, anche se non pianificata.
Essi nascono dalla necessita di agire immediatamente, a uno stato indesiderato
di una versione di produzione in circolo. Quando un bug critico in una
versione di produzione deve essere risolto immediatamente, un hotfix branch
puo essere branchato fuori dal tag corrispondente sul branch principale che
contraddistingue la versione di produzione.

L'essenza e che il lavoro dei membri del gruppo (sul branch develop) puo
continuare, mentre un'altra persona sta preparando una soluzione rapida per la
produzione.

#### Creare un hotfix branch

  
Gli Hotfix branch vengono creati dal branch **master**. Ad esempio, diciamo
che la versione 1.2 e la release di produzione attualmente in esecuzione e sta
avendo problemi a causa di un errore grave. I cambiamenti sul **develop** sono
ancora instabili. Possiamo creare un hotfix branch ed iniziare a fixare il
problema:

    
    
    **$ git checkout -b hotfix-1.2.1 master**  
    
    Switched to a new branch "hotfix-1.2.1"  
    
    **$ ./bump-version.sh 1.2.1**  
    
    Files modified successfully, version bumped to 1.2.1.  
    
    **$ git commit -a -m "Bumped version number to 1.2.1"**  
    
    [hotfix-1.2.1 41e61bb] Bumped version number to 1.2.1  
    
    1 files changed, 1 insertions(+), 1 deletions(-)

  
Non dimenticate di eliminare il numero di versione dopo aver creato il branch!

Successivamente, correggi il bug e committa la correzione in uno o piu commit.

    
    
    **$ git commit -m "Fixed severe production problem"**  
    
    [hotfix-1.2.1 abbe5d6] Fixed severe production problem  
    
    5 files changed, 32 insertions(+), 17 deletions(-)

#### Finire un hotfix branch

  
Alla fine, i bugfix devono essere rimergiati  nel **master**, ma anche nel
**develop**, in modo da garantire che il bugfix e incluso nella prossima
release. Questo e del tutto simile a come finire i release branch.

Prima di tutto, aggiorniamo il **master** e tagghiamo la release:

    
    
    **$ git checkout master**  
    
    Switched to branch 'master'  
    
    **$ git merge --no-ff hotfix-1.2.1**  
    
    Merge made by recursive.  
    
    (Summary of changes)$ git tag -a 1.2.1

  
**Edit**: Puoi usare anche il flag **-s** oppure **-u ** per firmare crittograficamente i tuoi tag.

Successivamente, includiamo il bugfix in **develop**:

    
    
    **$ git checkout develop**  
    
    Switched to branch 'develop'  
    
    **$ git merge --no-ff hotfix-1.2.1**  
    
    Merge made by recursive.  
    
    (Summary of changes)

  
L'unica eccezione alla regola e che, **quando esiste un release branch, i
cambiamenti di hotfix devono essere rimergiati in quel release branch
piuttosto che nel develop**. Il merge dei bugfix nel release branch  portera i
bugfix nel **develop** anche quando il release branch finira. (Se il lavoro in
**develop** richiede questo bugfix e non si puo aspettare che il release
branch sia finito, si possono mergiare tranquillamente i bugfix ndel
**develop.**)

Alla fine, rimuoviamo il branch temporaneo:

    
    
    **$ git branch -d hotfix-1.2.1**  
    
    Deleted branch hotfix-1.2.1 (was abbe5d6).

## Conclusioni

  
Mentre non vi e nulla di nuovo in questo modello di ramificazione, la "grande
immagine" che si trova all'inizio di questo post si e rivelata veramente utile
nei nostri progetti. Essa costituisce un elegante modello mentale che e
semplice da comprendere e permette ai membri del team di sviluppare una
comprensione condivisa dei processi di branching e releasing.

Una versione ad alta qualita della figura e fornita qui sotto. Scaricala,
stampala ed appendila al muro per una rapida consultazione.

**Aggiornamento:** e per chiunque lo ha richiesto: qui sotto anche il diagramma principale in formato Apple Keynote.

[![]({{site.url}}/images/pdf.png)]({{site.url}}/files/Git-branching-model.pdf)[
![]({{site.url}}/images/keynote.png)]({{site.url}}/files/gitflow-model.src.key)

  
Sentitevi liberi di commentare! :)

