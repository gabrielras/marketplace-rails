ProductRent.destroy_all
ProductCategory.destroy_all
Profile.destroy_all
Category.destroy_all

puts 'Criando Categorias'

path_image = 'public/images/categories/mexican.jpg'
c = Category.create(id: 1, title: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, title: 'italian')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonese.jpeg'
c = Category.create(id: 3, title: 'japonese')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, title: 'vegan')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

path_image = 'public/images/categories/peruvian.jpg'
c = Category.create(id: 5, title: 'peruvian')
c.image.attach(io: File.open(path_image), filename: 'peruvian.jpg')

puts "Cadastrando Perfil"

path_image = 'public/images/restaurants/1.jpeg'
r = Profile.create!(
    name: 'Los Sombreros',
    description: 'Nossa missão tem sido ajudar as pessoas',
    status: 'open', state: 'SP', city: 'São Paulo', street: 'Melo Barreto',
    number: '1393', neighborhood: 'Brás',
    cpf: '06976507310', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', profile: r)
prod = ProductRent.create!(name:'Nacho Guacamole', price: 19, description: 'Tortilhas com queijo', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = ProductRent.create!(name:'Nacho ', price: 19, description: 'Tortilhas', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')


path_image = 'public/images/restaurants/2.jpeg'
r = Profile.create!(
    name: 'Ola que Tal',
    description: 'Para ajudar as pessoas',
    status: 'open', state: 'SP', city: 'São Paulo', street: 'Viela Eugênio MOnteiro Junior',
    number: '659', neighborhood: 'Paraíso',
    cpf: '06976507310', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '2.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', profile: r)
prod = ProductRent.create!(name:'Burrito', price: 19, description: 'Tortilhas com queijo', product_category: pc)
prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'nachosg.jpg')
prod = ProductRent.create!(name:'Nacho ', price: 25, description: 'Tortilhas', product_category: pc)
prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'nachosg2.jpg')

path_image = 'public/images/restaurants/3.jpeg'
r = Profile.create!(
    name: 'Bravo',
    description: 'O Restaurante Top',
    status: 'open', state: 'SP', city: 'São Paulo', street: 'Rua Coperema',
    number: '250', neighborhood: 'Jardim Jaú (Zona Leste)',
    cpf: '06976507310', category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '3.jpg')
pc = ProductCategory.create!(title: 'Porções', profile: r)
prod = ProductRent.create!(name:'Beringela', price: 70, description: 'com queijo, arroz e milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'nachosg.jpg')
prod = ProductRent.create!(name:'Fritas ', price: 35, description: 'Batata frita', product_category: pc)
prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'nachosg2.jpg')
