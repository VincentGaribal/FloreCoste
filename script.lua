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
