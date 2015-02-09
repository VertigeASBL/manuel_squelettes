Formation aux squelettes de SPIP
================================

Serveur, fichiers et données
----------------------------

Principe général du stack *AMP, accès FTP, MySQL

Principe général de SPIP
------------------------

[Principe général sur spip.net](http://www.spip.net/fr_article3437.html)

- Type de pages <-> squelettes
- Contexte
- Cache

Les bases de l'écriture des squelettes
--------------------------------------

### Statique ###

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Titre</title>
  </head>
  <body>
    Bonjour !
  </body>
</html>
```

### Balise simple ###

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Titre</title>
  </head>
  <body>
    Bonjour #EMAIL_WEBMASTER !
  </body>
</html>
```

### Balise avec filtre  ###

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Titre</title>
  </head>
  <body>
    Bonjour [(#EMAIL_WEBMASTER|majuscules)]!
  </body>
</html>
```

- [Syntaxe complète des balises](http://programmer.spip.net/Syntaxe-complete-des-balises)
- [Des balises à connaître](http://programmer.spip.net/-Des-balises-a-connaitre-)

### Boucle simple ###

```html
<BOUCLE_article(ARTICLES){id_article=1}>
  <h1>#TITRE</h1>
  #TEXTE
</BOUCLE_article>
```

### Boucle avec contexte ###

```html
<BOUCLE_article(ARTICLES){id_article}>
  <h1>#TITRE</h1>
  #TEXTE
</BOUCLE_article>
```

### Boucle avec partie optionnelle et critère de tri ###

```html
<B_rubriques>
  <ul>
    <BOUCLE_rubriques(RUBRIQUES) {par titre}>
      <li>#TITRE</li>
    </BOUCLE_rubriques>
  </ul>
</B_rubriques>
```

- [Syntaxe complète des boucles](http://programmer.spip.net/Syntaxe-complete-des-boucles) 
- [Manuel de référence des boucles et balises](http://www.spip.net/fr_rubrique143.html)

Pages et contexte
-----------------

### Afficher l'environnement dans squelette ###

```html
[(#ENV*|unserialize|var_dump)]
```

### Inclusions, et traffic de contexte ###

[Inclure des squelettes](http://programmer.spip.net/Inclure-des-squelettes)

### Notion de chemin et surcharge de fichiers ###

[La notion de chemin](http://programmer.spip.net/La-notion-de-chemin)

`var_mode=inclure` !

ZPIP
----

Un peu confusant au début rien de bien compliqué !
Système d'inclusions pour que tout le monde soit d'accord…


