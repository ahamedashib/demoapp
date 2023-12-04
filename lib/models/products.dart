class Products {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  Products({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}


var demoItems = [
  Products(
    id: 1,
    name: "Black Simple Lamp",
    description: "Description 1",
    price: 12.0,
    imagePath: "assets/images/jonny-caspari-wsvCC6UyKjs-unsplash 1.png",
  ),
  Products(
    id: 2,
    name: "Minimal Stand",
    description: "Description 2",
    price: 20.0,
    imagePath: "assets/images/2681826 1.png"
  ),
  Products(
    id: 3,
    name: "Coffee chair",
    description: "Description 3",
    price: 30.0,
    imagePath: "assets/images/sarah-dorweiler-fr0J5-GIVyg-unsplash 1.png"
  ),
  Products(
    id: 3,
    name: "Simple Desk",
    description: "Description 3",
    price: 30.0,
    imagePath: "assets/images/3968901 1.png"),];