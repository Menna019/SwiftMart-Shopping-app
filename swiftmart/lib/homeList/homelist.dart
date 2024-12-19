class HomeList {
  dynamic image;
  String productName;
  String type;
  String price;

  HomeList({
  required this.image,
  required this.productName,
  required this.type,
  required this.price});
}

List <HomeList> homeList= [
HomeList(
image: "assets/barbie doll.png",
productName: "Barbie Doll",
type: "Toys and Games", 
price: "14\$",
),

HomeList(
image: "assets/playstation.png",
productName: "Playstation",
type: "Games and Electronics",
price: "15\$"
),

HomeList(
image: "assets/lamp.jpg",
productName: "Lamp",
type: "Electronics",
price: "10\$"),

HomeList(image: "assets/tshirt.png",
productName: "Women T-shirt",
type: "Clothes", 
price: "12\$"),

HomeList(image: "assets/cat food.png",
productName: "Cat Food", 
type: "Animal Food",
price: "12\$"),

HomeList(
image: "assets/book.jpg",
productName: "The Art of Thinking Clearly", 
type: "English Books", 
price: "8\$"),

HomeList(
image: "assets/brush.png", 
productName: "Facial cleansing brush", 
type: "Skin care", 
price: "4\$"
),

HomeList(
image: "assets/iphone16.png", 
productName: "Iphone 16 - White", 
type: "Mobile", 
price: "883\$"
),

HomeList(
image: "assets/accessories.jpg", 
productName: "pearl necklace", 
type: "accessories", 
price: "5\$")
];