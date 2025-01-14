import 'package:flutter/material.dart';

class Food {
  //int? id;
  String? name;
  String? content;
  List<String>? ingredients;
  ImageProvider? image;
  String? category;
  String? description;
  String? method;
  int? incredentcount;
  String? time;

  Food({
    // required this.id,
    required this.name,
    required this.content,
    required this.image,
    required this.category,
    required this.description,
    this.ingredients,
    required this.method,
    required this.incredentcount,
    required this.time,
  });
}

final List<Food> foodList = [
  Food(
    //id: 1,
    name: 'Samosa Chaat',
    content:
        'A popular Indian street food dish where crispy samosas are crushed and topped with yogurt, chutneys, chopped onions, tomatoes, and a blend of spices.',
    image: NetworkImage(
        'https://sinfullyspicy.com/wp-content/uploads/2024/03/1200-by-1200-images.jpg'),
    category: 'Snack',
    description: 'A tangy and spicy chaat made with samosas.',
    ingredients: [
      'Samosas',
      'Yogurt',
      'Tamarind Chutney',
      'Mint Chutney',
      'Onions',
      'Tomatoes',
      'Cilantro',
      'Chaat Masala',
      'Sev',
      'Pomegranate Seeds',
    ],
    method: 'Medium',
    incredentcount: 10,
    time: '20 min',
  ),
  Food(
    //id: 6,
    name: 'Haggis',
    content:
        'A traditional Scottish dish made from sheep\'s offal (heart, liver, lungs) mixed with onions, oatmeal, suet, and spices, encased in the animal\'s stomach and simmered.',
    image: NetworkImage(
        'https://d1ssu070pg2v9i.cloudfront.net/pex/simonhowie/2020/12/17120250/haggis-neeps-tatties.jpg'),
    category: 'Main Course',
    description: 'A savory Scottish pudding containing sheep\'s pluck.',
    ingredients: [
      'Sheep\'s Heart',
      'Sheep\'s Liver',
      'Sheep\'s Lungs',
      'Onions',
      'Oatmeal',
      'Suet',
      'Salt',
      'Black Pepper',
      'Nutmeg',
      'Sheep\'s Stomach',
    ],
    method: 'Hard',
    incredentcount: 10,
    time: '3 hrs',
  ),
  Food(
    // id: 7,
    name: 'Tripe Stew',
    content:
        'The edible lining of a ruminant\'s stomach, commonly used in dishes worldwide. It has a distinct texture and is often prepared in stews or soups.',
    image: NetworkImage(
        'https://mydominicankitchen.com/wp-content/uploads/2017/12/Dominican-Style-Tripe-Stew-Mondongo-Smart-Little-Cookie-4.jpg'),
    category: 'Main Course',
    description: 'A hearty stew made with tripe and vegetables.',
    ingredients: [
      'Beef Tripe',
      'Onions',
      'Carrots',
      'Celery',
      'Garlic',
      'Tomatoes',
      'Bay Leaves',
      'Thyme',
      'White Wine',
      'Parsley',
    ],
    method: 'Hard',
    incredentcount: 10,
    time: '2 hrs 30 min',
  ),
  Food(
    //id: 1,
    name: 'Chocolate Lava Cake',
    content: 'A warm chocolate cake with a gooey molten center.',
    image: NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4QnvkIXEVQY4Yu1QclTrQEMwfDFXKLjr8MA&s'),
    category: 'Dessert',
    description: 'A rich chocolate dessert with a molten interior.',
    ingredients: ['Chocolate', 'Flour', 'Sugar', 'Butter', 'Eggs'],
    method: 'Easy',
    incredentcount: 5,
    time: '30 min',
  ),
  Food(
    //id: 2,
    name: 'Baklava',
    content: 'A sweet pastry made with layers of filo dough, honey, and nuts.',
    image: NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXKrX8YONgniBJuB5m-OoPm7tEip_Lnez4cw&s'),
    category: 'Dessert',
    description: 'A flaky, nut-filled pastry with honey syrup.',
    ingredients: ['Filo Dough', 'Honey', 'Pistachios', 'Walnuts', 'Sugar'],
    method: 'Medium',
    incredentcount: 5,
    time: '1 hour',
  ),
  Food(
    //id: 3,
    name: 'Mochi Ice Cream',
    content:
        'A Japanese dessert made with a chewy rice dough wrapped around ice cream.',
    image: NetworkImage(
        'https://cdn.shopify.com/s/files/1/0567/2298/1022/t/13/assets/dalle-2023-12-28-12.44.35---create-a-hyper-realistic-image-of-whole-strawberry-mochi-ice-cream-pieces.-each-mochi-should-have-a-smooth-matte-soft-pink-exterior-capturing-the-au-1703796291205.png?v=1703796296'),
    category: 'Dessert',
    description:
        'A bite-sized dessert with a chewy exterior and creamy interior.',
    ingredients: ['Mochi Rice Flour', 'Ice Cream', 'Sugar'],
    method: 'Easy',
    incredentcount: 3,
    time: '1 hour',
  ),
  Food(
    // id: 4,
    name: 'Crème Brûlée',
    content:
        'A creamy custard dessert topped with a crispy caramelized sugar layer.',
    image: NetworkImage(
        'https://natashaskitchen.com/wp-content/uploads/2020/02/Creme-Brule-Recipe-SQ.jpg'),
    category: 'Dessert',
    description: 'A delicate custard with a burnt sugar crust.',
    ingredients: ['Egg Yolks', 'Sugar', 'Heavy Cream', 'Vanilla Bean'],
    method: 'Medium',
    incredentcount: 4,
    time: '1 hour 30 min',
  ),
  Food(
    // id: 5,
    name: 'Cheesecake',
    content: 'A creamy dessert made with cream cheese and a biscuit crust.',
    image: NetworkImage(
        'https://sugarspunrun.com/wp-content/uploads/2023/06/Strawberry-cheesecake-recipe-6-of-8.jpg'),
    category: 'Dessert',
    description: 'A smooth, rich dessert with a graham cracker crust.',
    ingredients: [
      'Cream Cheese',
      'Sugar',
      'Eggs',
      'Vanilla Extract',
      'Graham Crackers'
    ],
    method: 'Easy',
    incredentcount: 5,
    time: '1 hour 30 min',
  ),
  Food(
    // id: 6,
    name: 'Orange Juice',
    content: 'Freshly squeezed orange juice for a refreshing start to the day.',
    image: NetworkImage(
        'https://www.alphafoodie.com/wp-content/uploads/2020/11/Orange-Juice-1-of-1.jpeg'),
    category: 'Juice',
    description: 'A natural citrus drink that’s packed with vitamin C.',
    ingredients: ['Oranges'],
    method: 'Easy',
    incredentcount: 1,
    time: '10 min',
  ),
  Food(
    //id: 7,
    name: 'Mango Lassi',
    content: 'A traditional Indian yogurt-based drink with mango flavor.',
    image: NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJ8THlTmUMV4Y_vJD__BMYhaA2nGeTQyb5A&s'),
    category: 'Juice',
    description: 'A creamy, sweet yogurt drink with tropical mango.',
    ingredients: ['Mango', 'Yogurt', 'Sugar', 'Ice'],
    method: 'Easy',
    incredentcount: 4,
    time: '10 min',
  ),
  Food(
    //id: 8,
    name: 'Green Juice',
    content: 'A healthy juice made from cucumber, kale, and apple.',
    image: NetworkImage(
        'https://hips.hearstapps.com/hmg-prod/images/green-detox-juice-with-ginger-and-mint-in-glasses-royalty-free-image-1590670270.jpg'),
    category: 'Juice',
    description: 'A refreshing, nutritious drink made from green vegetables.',
    ingredients: ['Cucumber', 'Kale', 'Apple'],
    method: 'Easy',
    incredentcount: 3,
    time: '10 min',
  ),
  Food(
    //id: 9,
    name: 'Pineapple Juice',
    content: 'A sweet and tangy juice made from fresh pineapples.',
    image: NetworkImage(
        'https://cookathomemom.com/wp-content/uploads/2022/12/Pineapple-Ginger-Juice-in-glasses.jpg'),
    category: 'Juice',
    description: 'A tropical drink with the sweet taste of pineapple.',
    ingredients: ['Pineapple'],
    method: 'Easy',
    incredentcount: 1,
    time: '10 min',
  ),
  Food(
    //id: 10,
    name: 'Carrot Juice',
    content:
        'A healthy juice made from fresh carrots and a touch of sweetness.',
    image: NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuugM5hmwYE3sTC1oyr75jRsAJ3zB_rBFFfg&s'),
    category: 'Juice',
    description: 'A vibrant orange drink packed with nutrients.',
    ingredients: ['Carrots', 'Sugar'],
    method: 'Easy',
    incredentcount: 2,
    time: '10 min',
  ),
  Food(
    //id: 11,
    name: 'Grilled Cheese Sandwich',
    content:
        'A crispy sandwich with melted cheese between two slices of bread.',
    image: NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7vj3-uBCjNn2SmI5jxio6gSI5yeHciXOZ3w&s'),
    category: 'Lunch',
    description: 'A simple yet delicious sandwich with gooey cheese.',
    ingredients: ['Bread', 'Cheese', 'Butter'],
    method: 'Easy',
    incredentcount: 3,
    time: '10 min',
  ),
  Food(
    //id: 12,
    name: 'Chicken Caesar Salad',
    content:
        'A salad made with grilled chicken, romaine lettuce, and Caesar dressing.',
    image: NetworkImage(
        'https://www.gimmesomeoven.com/wp-content/uploads/2015/08/Caesar-Pasta-Salad-Recipe-9.jpg'),
    category: 'Lunch',
    description: 'A hearty salad with tender chicken and creamy dressing.',
    ingredients: ['Chicken', 'Romaine Lettuce', 'Caesar Dressing', 'Croutons'],
    method: 'Easy',
    incredentcount: 4,
    time: '15 min',
  ),
  Food(
    //id: 13,
    name: 'Burrito',
    content:
        'A flour tortilla wrapped around a filling of rice, beans, and your choice of protein.',
    image: NetworkImage(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Burrito.JPG/640px-Burrito.JPG'),
    category: 'Lunch',
    description: 'A wrapped Mexican dish filled with tasty ingredients.',
    ingredients: ['Tortilla', 'Rice', 'Beans', 'Protein', 'Cheese'],
    method: 'Medium',
    incredentcount: 5,
    time: '20 min',
  ),
  Food(
    //id: 14,
    name: 'Chicken Fried Rice',
    content: 'A stir-fried dish with chicken, rice, and vegetables.',
    image: NetworkImage(
        'https://easychickenrecipes.com/wp-content/uploads/2022/05/featured-chicken-fried-rice-recipe.jpg'),
    category: 'Lunch',
    description: 'A quick and savory rice dish with chicken and vegetables.',
    ingredients: ['Rice', 'Chicken', 'Vegetables', 'Soy Sauce'],
    method: 'Medium',
    incredentcount: 4,
    time: '20 min',
  ),
  Food(
    //id: 15,
    name: 'Veggie Wrap',
    content: 'A wrap filled with fresh vegetables and a light dressing.',
    image: NetworkImage(
        'https://www.acouplecooks.com/wp-content/uploads/2023/02/Veggie-Wrap-002.jpg'),
    category: 'Lunch',
    description: 'A healthy and light wrap with a mix of veggies.',
    ingredients: ['Tortilla', 'Lettuce', 'Tomatoes', 'Cucumber', 'Dressing'],
    method: 'Easy',
    incredentcount: 5,
    time: '10 min',
  ),
];
