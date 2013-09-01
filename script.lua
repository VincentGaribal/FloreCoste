TitreFacteurs = {
  ["Lumière"] = {
    ["Min"] = "ombre",
    ["Max"] = "lumière"
  },
  ["Humidité atmosphérique"] = {
    ["Min"] = "sec",
    ["Max"] = "humide"
  },
  ["Température"] = {
    ["Min"] = "froid",
    ["Max"] = "chaud"
  },
  ["Continentalité"] = {
    ["Min"] = "marin",
    ["Max"] = "continental"
  },
  ["pH"] = {
    ["Min"] = "acide",
    ["Max"] = "basique"
  },
  ["Humidité"] = {
    ["Min"] = "sec",
    ["Max"] = "humide"
  },
  ["Texture"] = {
    ["Min"] = "argile",
    ["Max"] = "rochers"
  },
  ["Nutriments"] = {
    ["Min"] = "pauvre",
    ["Max"] = "riche"
  },
  ["Salinité"] = {
    ["Min"] = "non tolérant",
    ["Max"] = "très tolérant"
  },
  ["Matière organique"] = {
    ["Min"] = "pauvre",
    ["Max"] = "riche"
  }
}

FacteursEcologiques = {
  ["Lumière"] = {
    [1] = "hypersciaphiles",
    [2] = "sciaphiles",
    [3] = "intermédiaires entre sciaphiles et hémisciaphiles",
    [4] = "hémisciaphiles",
    [5] = "intermédiaires entre hémisciaphiles et hémihéliophiles",
    [6] = "hémihéliophiles",
    [7] = "intermédiaires entre hémihéliophiles et héliophiles",
    [8] = "héliophiles",
    [9] = "hyperhéliophiles"
  },
  ["Température"] = {
    [1] = "alpines à nivales, altiméditerranéennes",
    [2] = "subalpines, oroméditerranéennes",
    [3] = "montagnardes",
    [4] = "collinéennes, psychroatlantiques",
    [5] = "planitiaires à montagnardes",
    [6] = "planitiaires thermophiles, thermoatlantiques, thermocontinentales, subméditerranéennes, supraméditerranéennes",
    [7] = "euryméditerranéennes, méditerranéo-atlantiques",
    [8] = "mésoméditerranéennes",
    [9] = "thermoméditerranéennes à subdésertiques"
  },
  ["Humidité atmosphérique"] = {
    [1] = "aéroxérophiles",
    [2] = "intermédiaires entre aéroxérophiles et aéromésoxérophiles",
    [3] = "aéromésoxérophiles",
    [4] = "intermédiaires entre aéromésoxérophiles et aéromésohydriques",
    [5] = "aéromésohydriques",
    [6] = "intermédiaires entre aéromésohydriques et aéromésohygrophiles",
    [7] = "aéromésohygrophiles",
    [8] = "intermédiaires entre aéromésohygrophiles et aérohydrophiles",
    [9] = "aérohydrophiles" 
  },
  ["Continentalité"] = {
    [1] = "marines à maritimes",
    [2] = "hyperocéaniques",
    [3] = "océaniques",
    [4] = "subocéaniques",
    [5] = "intermédiaires entre subocéaniques et précontinentales",
    [6] = "précontinentales",
    [7] = "subcontinentales",
    [8] = "continentales",
    [9] = "hypercontinentales" 
  },
  ["pH"] = {
    [1] = "hyperacidophiles",
    [2] = "acidophiles",
    [3] = "intermédiaires entre acidophiles et acidoclines",
    [4] = "acidoclines",
    [5] = "intermédiaires entre acidoclines et neutroclines",
    [6] = "neutroclines",
    [7] = "neutrophiles",
    [8] = "basophiles",
    [9] = "hyperbasophiles"
  },
  ["Humidité"] = {
    [1] = "hyperxérophiles",
    [2] = "perxérophiles",
    [3] = "xérophiles",
    [4] = "mésoxérophiles",
    [5] = "mésohydriques",
    [6] = "mésohygrophiles",
    [7] = "hygrophiles",
    [8] = "hydrophiles",
    [9] = "amphibies saisonnières",
    [10] = "amphibies permanentes",
    [11] = "aquatiques superficielles",
    [12] = "aquatiques profondes"
  },
  ["Texture"] = {
    [1] = "argile",
    [2] = "intermédiaire entre argile et limon",
    [3] = "limon",
    [4] = "sable fin",
    [5] = "sable grossier",
    [6] = "graviers",
    [7] = "galets",
    [8] = "blocs, fentes des parois",
    [9] = "dalle"
  },
  ["Nutriments"] = {
    [1] = "hyperoligotrophiles",
    [2] = "oligotrophiles",
    [3] = "intermédiaires entre oligotrophiles et mésooligotrophiles",
    [4] = "mésooligotrophiles",
    [5] = "mésotrophiles",
    [6] = "mésoeutrophiles",
    [7] = "intermédiaires entre mésoeutrophiles et eutrophiles",
    [8] = "eutrophiles",
    [9] = "polytrophiles"
  },
  ["Salinité"] = {
    [1] = "ne supportant pas le sel",
    [2] = "hyperoligohalines, [0--0,1\\% Cl-]",
    [3] = "peroligohalines, [0,1--0,3\\% Cl-]",
    [4] = "oligohalines, [0,3--0,5\\% Cl-]",
    [5] = "mesooligohalines, [0,5--0,7\\% Cl-]",
    [6] = "mesohalines, [0,7--0,9\\% Cl-]",
    [7] = "mesoeuhalines, [0,9--1,2\\% Cl-]",
    [8] = "euhalines, [1,2--1,6\\% Cl-]",
    [9] = "polyhalines, [1,6--2,3\\% Cl-]",
    [10] = "hyperhalines, [>2,3\\% Cl-]"
  },
  ["Matière organique"] = {
    [1] = "lithosol, arénosol",
    [2] = "mull carbonaté",
    [3] = "mull actif",
    [4] = "mull acide",
    [5] = "moder",
    [6] = "mor, hydromor, xéromor",
    [7] = "ranker, tangel",
    [8] = "anmoor, gyttja",
    [9] = "tourbe"
  } 
}

function nombreentreetable (table)
  local count = 0
  for k in pairs(table) do
    count = count + 1
  end
  return count
end

function glossaire(Terme, Definition)
  if type(Glossaire) == "table" then
    Glossaire[Terme] = Definition
  else
    Glossaire = {}
    Glossaire[Terme] = Definition
  end
end

function definitionglossaire (Terme)
  if Glossaire[Terme] == nil then
    tex.sprint("Terme non défini")
  else
    tex.sprint(Glossaire[Terme])
  end
end

function listelettrebotaniste (Lettre)
  local Chaine = {}
  table.insert(Chaine,[[\begin{description}]])
  for i,v in ipairs(Botaniste) do
    if Botaniste[i]["Lettre"] == Lettre then
      table.insert(Chaine,[[\item[]]..Botaniste[i]["Abréviation"].."]"..Botaniste[i]["Nom"])
    end
  end
  table.insert(Chaine,[[\end{description}]])
  tex.tprint(Chaine)
end

function nomcompletbotaniste (Abreviation)
  if Botaniste[Abreviation] == nil then
    tex.sprint("Erreur dans le nom du botaniste")
  else
    tex.sprint(Botaniste[Abreviation])
  end
end

function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

function barre (Famille, Genre, Espece, Facteur)
  local NombreEntreesTable = nombreentreetable(FacteursEcologiques[Facteur])
  local Minimum = Flore[Famille][Genre][Espece]["Écologie"][Facteur]["Min"]
  local Maximum = Flore[Famille][Genre][Espece]["Écologie"][Facteur]["Max"]
  local MinRange = TitreFacteurs[Facteur]["Min"]
  local MaxRange = TitreFacteurs[Facteur]["Max"]
  local UnitePT = round((((tex.dimen[0] - (14 * 65536)) / (NombreEntreesTable - 1)) / 65536),4)
  local Chaine = {}
  table.insert(Chaine,[[\noindent]])
  table.insert(Chaine,[[\begin{tikzpicture}[x=]]..UnitePT.."pt]")
  table.insert(Chaine,[[\draw (1,0) -- (]]..NombreEntreesTable..[[,0);]])
  table.insert(Chaine,[[\foreach \x/\nom in {]])
  for i=1,NombreEntreesTable do
    table.insert(Chaine,i..[[/{]]..FacteursEcologiques[Facteur][i].."},")
  end
  table.insert(Chaine,[[} {\draw (\x,0) -- (\x,-.2cm) node[anchor=north] {\pdftooltip{\x}{\nom}};}]])
  if Minimum == Maximum then
    table.insert(Chaine,[[\filldraw[anchor=base] (]]..Minimum..[[,0) circle (.1cm);]])
  else
    table.insert(Chaine,[[\draw[anchor=base,line width=2pt] (]]..Minimum..[[,0) -- (]]..Maximum..[[,0);]])
  end
  table.insert(Chaine,[[\node[anchor=base west,inner sep=0sp,font=\small\sffamily] at (1,.2cm) {]]..MinRange..[[};]])
  table.insert(Chaine,[[\node[anchor=base east,inner sep=0sp,font=\small\sffamily] at (]]..NombreEntreesTable..[[,.2cm) {]]..MaxRange..[[};]])
  table.insert(Chaine,[[\node[anchor=center,font=\bfseries\sffamily] at (]]..((NombreEntreesTable + 1) / 2)..[[,-0.8cm) {]]..Facteur..[[};]])
  table.insert(Chaine,[[\end{tikzpicture}]])
  tex.tprint(Chaine)
end

function vernaculaire (Famille, Genre, Espece)
  local Chaine = ""
  -- contrôle de l'existence de la table
  if type(Flore[Famille][Genre][Espece]["vernaculaire"]) == nil then
    Chaine = "Il n'y a aucun nom vernaculaire associé"
  else -- il existe un ou plusieurs noms
    if type(Flore[Famille][Genre][Espece]["vernaculaire"]) == "table" then
      local compteur = 1
      local NonPrincipalIndex = ""
      while compteur <= nombreentreetable(Flore[Famille][Genre][Espece]["vernaculaire"]) do
        if type(Flore[Famille][Genre][Espece]["vernaculaire"][compteur]) == "table" then
          for cle,valeur in pairs(Flore[Famille][Genre][Espece]["vernaculaire"][compteur]) do
            if Chaine == "" then
              Chaine = [[\textbf{\Large{]] .. cle ..  [[ ]] .. valeur .. [[}}\index[vernaculaire]{]] .. cle .. [[!]] .. valeur .. [[}]]
              NomPrincipalIndex = cle .. " " .. valeur
            else
              Chaine = Chaine .. [[, ]] .. cle .. [[ ]] .. valeur .. [[\index[vernaculaire]{]] .. cle .. [[!]] .. valeur .. [[|see{]] .. NomPrincipalIndex .. [[}}]]
            end
          end
        else
          if Chaine == "" then
            Chaine = [[\textbf{\Large{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[}}\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[}]]
            NomPrincipalIndex = Flore[Famille][Genre][Espece]["vernaculaire"][compteur]
          else
            Chaine = Chaine .. ", " .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[|see{]] .. NomPrincipalIndex .. [[}}]]
          end
        end
        compteur = compteur + 1
      end
    else
      Chaine = [[\textbf{\Large{]] .. Flore[Famille][Genre][Espece]["vernaculaire"] .. [[}}\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"] .. [[}]]
    end
    tex.sprint([[\textsf{]] .. Chaine .. [[}]])
  end
end
