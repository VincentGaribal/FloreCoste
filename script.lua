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
