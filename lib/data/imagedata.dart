


class itemdetailed
{
  final name;
  double price;
  String ImagePath;


  itemdetailed({required this.name,required this.price,required this.ImagePath});
}

List<itemdetailed> items=[
  itemdetailed(name: 'Cappuccino', price: 400,ImagePath: 'assets/Images/cappuccino/square/cappuccino_pic_2_square.png'),
  itemdetailed(name: 'Americano', price: 200,ImagePath: 'assets/Images/americano/square/americano_pic_3_square.png'),
  itemdetailed(name: 'Black Coffee', price: 400,ImagePath: 'assets/Images/black_coffee/square/black_coffee_pic_2_square.png'),
  itemdetailed(name: 'Latte', price: 12.0,ImagePath: 'assets/Images/latte/square/latte_pic_3_square.png'),
];

List<itemdetailed> portrait=[
  itemdetailed(name: 'Cappuccino', price: 400,ImagePath: 'assets/Images/cappuccino/portrait/cappuccino_pic_2_portrait.png'),
  itemdetailed(name: 'Americano', price: 200,ImagePath: 'assets/Images/americano/portrait/americano_pic_3_portrait.png'),
  itemdetailed(name: 'Black Coffee', price: 400,ImagePath: 'assets/Images/black_coffee/portrait/black_coffee_pic_2_portrait.png'),

];

class coffeebeans
{
  final name;
  double price;
  String ImagePath;

  coffeebeans({required this.name,required this.ImagePath, required this.price});
}


List<coffeebeans> itemsBeans=[
  coffeebeans(name: 'Arabic beans', price: 12.0,ImagePath: 'assets/Images/arabica_coffee_beans/arabica_coffee_beans_square.png'),
  coffeebeans(name: 'Liberica beans', price: 12.0,ImagePath: 'assets/Images/liberica_coffee_beans/liberica_coffee_beans_square.png'),
  coffeebeans(name: 'Latte', price: 12.0,ImagePath: 'assets/Images/robusta_coffee_beans/robusta_coffee_beans_square.png'),
];