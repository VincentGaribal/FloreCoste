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
