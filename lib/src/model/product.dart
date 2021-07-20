class Product {
  final id;
  final userId;
  final name;
  final categoryId;
  final image;
  final description;
  final status;
  final price;
  final qte;
  final createdAt;
  final updatedAt;
  bool isSelected;
  bool isliked;
  String category;

  Product(
      {this.id,
      this.category = "dsf",
      this.isSelected = false,
      this.isliked = false,
      this.userId,
      this.name,
      this.categoryId,
      this.image,
      this.price,
      this.qte,
      this.description,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory Product.fromJson(Map<String, dynamic> json) {
    return new Product(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      categoryId: json['category_id'],
      image: json['front_image'],
      description: json['description'],
      status: json['status'],
      price: json['price'],
      qte: json['qte'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
