local config = {}
config.reset = {}
config.motd = {}
config.timesync = {}
config.weathersync = {}

config.messageDuration = 6000 -- Durée globale du message toast en ms

config.restrictMenu = true -- Active ou désactive le menu (latéral) pour les mods, le spawn des véhicules, le tuning, l'environnement, le trackbuilder et le replay

config.restrictActions = true -- Active ou désactive la restriction globale des actions (voir ci-dessous)
config.disabledActions = {
    "switch_next_vehicle", -- Passe au véhicule suivant
    "switch_previous_vehicle", -- Passe au véhicule précédent
    "loadHome", -- Déplace le véhicule à sa position de départ
    "saveHome", -- Enregistre la position actuelle du véhicule pour un accès rapide
    "recover_vehicle", -- Rembobine la position du véhicule
    "reload_vehicle", -- Recharge les fichiers du véhicule à partir du disque
    "reload_all_vehicles", -- Recharge tous les fichiers de véhicules à partir du disque
    "vehicle_selector", -- Ouvre l'écran de sélection des véhicules
    "parts_selector", -- Ouvre l'écran de configuration des véhicules
    "nodegrabberRender", -- Affiche les nœuds pouvant être déplacés
    "slower_motion", -- Ralentit le temps
    "faster_motion", -- Accélère le temps
    "toggle_slow_motion", -- Ralentit le temps ou le rétablit en temps réel
    "dropPlayerAtCamera", -- Place le joueur à la caméra
}

config.reset.enabled = true -- Active ou désactive la possibilité de réinitialiser les véhicules
config.reset.timeout = 30 -- Fréquence à laquelle un véhicule peut être réinitialisé, -1 pour aucune limite
config.reset.title = "Limiteur de réinitialisation des véhicules" -- Titre affiché lorsque la réinitialisation est limitée ou désactivée
config.reset.message = "Vous pouvez réinitialiser votre véhicule dans {secondsLeft} secondes." -- Message affiché lorsque la réinitialisation est limitée
config.reset.disabledMessage = "La réinitialisation des véhicules est désactivée sur ce serveur." -- Message affiché lorsque la réinitialisation est complètement désactivée

config.motd.enabled = true -- Active ou désactive le motd (message du jour)
config.motd.type = "selectableVehicle" -- htmlOnly: motd simple (grand) || selectableVehicle: motd avec possibilité de sélectionner un véhicule
config.motd.title = "Bienvenue sur un serveur BeamMP !"
config.motd.description = [[
    [img]ui_base/welcome.png[/img]
    [br]
    [color=#808080]L'heure actuelle du serveur est : [i]{serverTime}[/i].[/color]
    [br]
    [h2]Introduction[/h2]
    Ceci est un exemple de motd fourni par [i]ιMσDzF4Π4ΤιK Base[/i]. ιMσDzF4Π4ΤιK Base fournit quelques addons client indispensables pour votre serveur BeamMP. Ce motd prend en charge le BBCode. [color=#FF69B4]Incroyable[/color], n'est-ce pas ?
    [h2]Règles[/h2]
    [list]
        [*]Soyez respectueux
        [*]Ne spammez pas les voitures
    [/list]
    [MEDIA=youtube]btnT7kKx8RI[/media]
    [br]
    Attendez-vous à voir de nombreuses autres fonctionnalités ajoutées à ιMσDzF4Π4ΤιK Base à l'avenir !
    [br][br]
    [color=#FFC0CB][i][right]Créé avec ❤️ par ιMσDzF4Π4ΤιK[/right][/i][/color]
]] 

-- Vous pouvez trouver tous les BBCodes dans le fichier LISSEZ-MOI.md

config.timesync.enabled = true -- Active ou désactive la synchronisation de l'heure du jeu avec l'heure réelle
config.timesync.offsetHours = 0 -- 0 pour UTC, peut être positif (+) ou négatif (-)
config.timesync.realtime = true -- Détermine si l'heure du jeu doit être synchronisée activement avec l'heure réelle (fonctionne uniquement lorsque timesync.enabled = true)

-- REMARQUE : tous les paramètres météo ne fonctionnent pas sur toutes les cartes
config.weathersync.enabled = true -- Active ou désactive la synchronisation météo en jeu
config.weathersync.cloudCover = 30 -- 0-100 (0 = pas de nuages ; 100 = très nuageux)
config.weathersync.windSpeed = 1 -- 0-10 (0 = pas de vent ; 10 = très venteux) -- affecte les nuages et la pluie
config.weathersync.rainDrops = 20 -- 0-100 (0 = pas de pluie ; 100 = très pluvieux)
config.weathersync.rainIsSnow = false -- Définissez sur true pour activer la neige
config.weathersync.fogDensity = 0 -- 0-100 (0 = pas de brouillard ; 100 = très brumeux)
config.weathersync.gravity = -9.81 -- -9.81 = gravité terrestre

return config