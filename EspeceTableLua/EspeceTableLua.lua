-- flore
Flore = {
  -- araliaceae
  Araliaceae = {
    -- hedera
    Hedera = {
      helix = {
        botaniste = "Linné",
        vernaculaire = {
          [1] = {["Lierre"] = "grimpant"}
        }
      }
    },
    -- cornus
    Cornus = {
      -- mas
      mas = {
        botaniste = "Linné",
        vernaculaire = {
          [1] = {["Cornouiller"] = "mâle"}
        }
      },
      -- sanguinea
      sanguinea = {
        botaniste = "Linné",
        vernaculaire = {
          [1] = {["Cornouiller"] = "sanguin"}
        }
      }
    }
  },
  -- début de la sous-table "solanaceae" (famille)
  Solanaceae = {
    -- début de la sous-table "solanum" (genre)
    Solanum = {
      -- début de la sous-table "dulcamara" (espece)
      dulcamara = {
        botaniste = "Linné",
        vernaculaire = {
        -- synonymes
          [1] = "Douce amère",
          [2] = {["Morelle"] = "douce amère"},
          [3] = {["Vigne"] = "de Judée"},
          [4] = "Crève-chien",
          [5] = "Loque",
          [6] = {["Herbe"] = "à la quarte"},
          [7] = {["Herbe"] = "à la fièvre"},
          [8] = "Réglisse sauvage",
          [9] = {["Morelle"] = "grimpante"},
          [10] = "Bronde",
          [11] = "Bois de ru"
        },
        ["Biologie"] = {
          ["Appareil végétatif"] = [[\glossaire{Arbuste}{Arbuste} \glossaire{sarmenteux}{Sarmenteux} de \SIrange{1}{2}{\meter}, \glossaire{glabre}{Glabre} ou \glossaire{pubescent}{Pubescent}, à écorce amère et à bois sucré, à rameaux \glossaire{herbacés}{Herbacé}, un peu \glossaire{volubile}{Volubile}, cylindrique ; feuilles ovales-acuminées, souvent en cœur, entières ou les supérieures triséquées, les 2 segments latéraux plus petits.]],
          ["Inflorescence"] = [[Fleurs violettes, en cymes corymbiformes divariquées, multiflores, longuement pédonculées.]],
          ["Fleur"] = [[Calice vert, petit, à lobes courts ; Corolle de \SIrange{12}{20}{\milli\meter}, à lobes réfléchis, marqués chacun vers la base de 2 taches vertes ; anthères jaunes.]],
          ["Fruit"] = [[Baies ovoïdes, rouges.]]
        },
        ["Écologie"] = {
          ["Lumière"] = {
            ["Min"] = 6,
            ["Max"] = 8
          },
          ["Humidité atmosphérique"] = {
            ["Min"] = 4,
            ["Max"] = 9
          },
          ["Température"] = {
            ["Min"] = 4,
            ["Max"] = 6
          },
          ["Continentalité"] = {
            ["Min"] = 1,
            ["Max"] = 6
          },
          ["pH"] = {
            ["Min"] = 6,
            ["Max"] = 8
          },
          ["Humidité"] = {
            ["Min"] = 6,
            ["Max"] = 8
          },
          ["Texture"] = {
            ["Min"] = 1,
            ["Max"] = 6
          },
          ["Nutriments"] = {
            ["Min"] = 7,
            ["Max"] = 7
          },
          ["Salinité"] = {
            ["Min"] = 1,
            ["Max"] = 1
          },
          ["Matière organique"] = {
            ["Min"] = 1,
            ["Max"] = 8
          }
        }
      }
    }
  }
}
