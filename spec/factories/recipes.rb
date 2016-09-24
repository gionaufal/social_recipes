FactoryGirl.define do
  factory :recipe do
    name 'Petit Gateau'
    cuisine 'Francesa'
    kind 'Sobremesa'
    serves 4
    time 35
    level 'Médio'
    ingredients 'Ingrediente 1, Ingrediente 2, Ingrediente 3'
    steps 'Passo 1, Passo 2, Passo 3'
  end
end
