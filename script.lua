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

function barre (LargeurBarrePt, NombreDivisions, MinValeur, MaxValeur)
  local LargeurBarre = string.gsub(LargeurBarrePt, "pt", "")
  local Largeur = tonumber(LargeurBarre)
  local Diviseur = tonumber(NombreDivisions)
  local Minimum = tonumber(MinValeur)
  local Maximum = tonumber(MaxValeur)
  local LongueurUniteArrondie = round((Largeur / (Diviseur - 1)),2)
  local LongueurUniteArrondiePt = LongueurUniteArrondie .. "pt"
  tex.print([[\noindent
\begin{tikzpicture}[x=]]..LongueurUniteArrondiePt..[[]
\draw (1,0) -- (]].. Diviseur .. [[*]] .. LongueurUniteArrondiePt ..[[,0);
\foreach \x in {1,...,]]..Diviseur..[[} {\draw (\x,0) -- (\x,-.2cm) node[anchor=north] {\x};}
\draw[anchor=base,ultra thick] (]]..MinValeur..[[,0) -- (]]..MaxValeur..[[,0);
\end{tikzpicture}]])
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
