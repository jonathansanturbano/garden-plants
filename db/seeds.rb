Garden.destroy_all if Rails.env == "development"

gardens = [
  {
    name: "Tuileries",
    banner_url: "https://en.parisinfo.com/var/otcp/sites/images/media/1.-photos/52.-paris-en-image/jardin-des-tuileries-en-automne-850x540-c-thinkstock/2907123-4-fre-FR/Jardin-des-Tuileries-en-automne-850x540-C-Thinkstock.jpg"
  },
  {
    name: "Vondelpark",
    banner_url: "https://nltimes.nl/sites/nltimes.nl/files/styles/news_article_full/public/2021-02/Depositphotos_226962946_l-2015.jpg?h=56d0ca2e&itok=l-MwoNvK"
  },
  {
    name: "Hyde Park",
    banner_url: "https://cdn2.civitatis.com/reino-unido/londres/guia/hyde-park.jpg"
  }
]

gardens.each do |garden|
  Garden.create!(
    name: garden[:name],
    banner_url: garden[:banner_url]
  )
end

vondelpark = Garden.second

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: vondelpark
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: vondelpark
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: vondelpark
)

names = %w[Fruit\ tree Cactus Greasy\ Plant Flower Ferns Conifers]

names.each do |name|
  Tag.create!(name: name)
end
