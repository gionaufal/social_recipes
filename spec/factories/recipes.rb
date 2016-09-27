FactoryGirl.define do
  factory :recipe do
    name 'Petit Gateau'
    cuisine
    dish
    serves 4
    time 35
    level 'Médio'
    ingredients "Ingrediente 1, ingrediente 2, ingrediente 3"
    steps 'Passo 1, Passo 2, Passo 3'
  end
end
