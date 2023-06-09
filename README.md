# ιMσDzF4Π4ΤιK
UI_Base (2023) fournit des addons essentiels côté client pour votre serveur BeamMP, comprenant plusieurs fonctionnalités telles que le message du jour (motd) avec prise en charge du BBCode, des restrictions pour les joueurs, des limitations de réinitialisation, la synchronisation jour/nuit et la synchronisation de l'environnement (météo).

## Pour commencer
1. Téléchargez la dernière version de ιMσDzF4Π4ΤιK UI_Base.
2. Placez le fichier .zip téléchargé dans le dossier `Resources/Client` de votre serveur BeamMP Serveur.
3. Configurez l'addon en modifiant le fichier `settings/config.lua` selon vos préférences.
4. Facultativement, vous pouvez ajouter ou remplacer des images dans le dossier `ui/ui_base` pour personnaliser l'apparence.

## BBCode pour le motd
Le motd (message du jour) prend en charge le formatage BBCode. Le fichier `config.lua` contient un exemple de motd avec plusieurs balises BBCode que vous pouvez utiliser. Certaines balises BBCode prises en charge incluent `[url] [forumurl] [ico] [h1] [h2] [h3] [h4] [h5] [h6] [img] [action] [list] [olist] [strike] [code] [br] [MEDIA=youtube] [size] [color] [hr] [spoiler] [font] [left] [center] [right] [i] [b] [u] [s]`, et plus encore. Notez que les URL externes ne sont pas autorisées par BeamNG et ne fonctionneront pas. Seuls les liens locaux et les liens vers `beamng.com` sont autorisés.

Variables :
* `{serverTime}` - Cette variable affiche l'heure actuelle du serveur telle que définie dans la configuration.

## Questions, demandes de fonctionnalités et bugs
Si vous avez des questions, des demandes de fonctionnalités ou si vous rencontrez des bugs, veuillez créer une issue sur le [GitHub]([https://github.com/iMoDzF4N4T1K/ui_base/issues).

## Captures d'écran
![Capture d'écran 1](https://i.imgur.com/RSBVDko.png)
