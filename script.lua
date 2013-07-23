FacteursEcologiques = {
  ["Lumiere"] = {
    [1] = "hypersciaphiles",
    [2] = "sciaphiles",
    [3] = "intermédiaires",
    [4] = "hémisciaphiles",
    [5] = "intermédiaires",
    [6] = "hémihéliophiles",
    [7] = "intermédiaires",
    [8] = "héliophiles",
    [9] = "hyperhéliophiles"
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

function botaniste(Abreviation,Nom)
  if type(Botaniste) == "table" then
    Botaniste[Abreviation] = Nom
  else 
    Botaniste = {}
    Botaniste[Abreviation] = Nom
  end
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

function barre (Famille, Genre, Espece, LargeurFonteSP, LargeurTexteSP, Facteur, MinRange, MaxRange)
  local NombreEntreesTable = nombreentreetable(FacteursEcologiques[Facteur])
  local Minimum = Flore[Famille][Genre][Espece]["ecologie"][Facteur]["min"]
  local Maximum = Flore[Famille][Genre][Espece]["ecologie"][Facteur]["max"]
  local UniteSP = math.floor((LargeurTexteSP - LargeurFonteSP) / NombreEntreesTable)
  local chaine = {}
  table.insert(chaine,[[\noindent]])
  table.insert(chaine,[[\begin{tikzpicture}[x=]]..UniteSP.."sp]")
  table.insert(chaine,[[\draw (1,0) -- (]]..NombreEntreesTable..[[*]]..UniteSP..[[sp,0);]])
  table.insert(chaine,[[\foreach \x/\nom in {]])
  for i=1,NombreEntreesTable do
    table.insert(chaine,i..[[/]]..FacteursEcologiques[Facteur][i]..",")
  end
  table.insert(chaine,[[} {\draw (\x,0) -- (\x,-.2cm) node[anchor=north] {\pdftooltip{\x}{\nom}};}]])
  if Minimum == Maximum then
    table.insert(chaine,[[\filldraw[anchor=base] (]]..Minimum..[[,O) circle (.1cm);]])
  else
    table.insert(chaine,[[\draw[anchor=base,ultra thick] (]]..Minimum..[[,0) -- (]]..Maximum..[[,0);]])
  end
  table.insert(chaine,[[\node[anchor=base west,inner sep=0sp] at (1,.2cm) {]]..MinRange..[[};]])
  table.insert(chaine,[[\node[anchor=base east,inner sep=0sp] at (]]..NombreEntreesTable..[[,.2cm) {]]..MaxRange..[[};]])
  table.insert(chaine,[[\end{tikzpicture}]])
  tex.tprint(chaine)
end

function lumiere (Famille, Genre, Espece, LargeurFonteSP, LargeurTexteSP)
  local Minimum = "ombre"
  local Maximum = "lumière"
  tex.print([[{\centering]])
  barre (Famille, Genre, Espece, LargeurFonteSP, LargeurTexteSP, "Lumiere", Minimum, Maximum)
  tex.print("}")
end

function vernaculaire (Famille, Genre, Espece)
  local chaine = ""
  -- contrôle de l'existence de la table
  if type(Flore[Famille][Genre][Espece]["vernaculaire"]) == nil then
    chaine = "Il n'y a aucun nom vernaculaire associé"
  else -- il existe un ou plusieurs noms
    if type(Flore[Famille][Genre][Espece]["vernaculaire"]) == "table" then
      local compteur = 1
      local NonPrincipalIndex = ""
      while compteur <= nombreentreetable(Flore[Famille][Genre][Espece]["vernaculaire"]) do
        if type(Flore[Famille][Genre][Espece]["vernaculaire"][compteur]) == "table" then
          for cle,valeur in pairs(Flore[Famille][Genre][Espece]["vernaculaire"][compteur]) do
            if chaine == "" then
              chaine = [[\textbf{\Large{]] .. cle ..  [[ ]] .. valeur .. [[}}\index[vernaculaire]{]] .. cle .. [[!]] .. valeur .. [[}]]
              NomPrincipalIndex = cle .. " " .. valeur
            else
              chaine = chaine .. [[, ]] .. cle .. [[ ]] .. valeur .. [[\index[vernaculaire]{]] .. cle .. [[!]] .. valeur .. [[|see{]] .. NomPrincipalIndex .. [[}}]]
            end
          end
        else
          if chaine == "" then
            chaine = [[\textbf{\Large{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[}}\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[}]]
            NomPrincipalIndex = Flore[Famille][Genre][Espece]["vernaculaire"][compteur]
          else
            chaine = chaine .. ", " .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"][compteur] .. [[|see{]] .. NomPrincipalIndex .. [[}}]]
          end
        end
        compteur = compteur + 1
      end
    else
      chaine = [[\textbf{\Large{]] .. Flore[Famille][Genre][Espece]["vernaculaire"] .. [[}}\index[vernaculaire]{]] .. Flore[Famille][Genre][Espece]["vernaculaire"] .. [[}]]
    end
    tex.sprint([[\textsf{]] .. chaine .. [[}]])
  end
end
