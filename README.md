🍽️ Al-Baraka Restaurant App
A clean and simple Flutter restaurant UI app that allows users to browse food categories, view item details, and manage a shopping cart — all with a modern dark theme.

📱 Screenshots

Coming soon


✨ Features

🏠 Home Screen — Browse food categories in a responsive grid layout
📂 Category Screen — View all items inside a selected category
🍔 Food Details — Full details page with image, description, price, and add-to-cart button
🛒 Cart System — Add items to cart with a live badge counter on the bottom nav
🗑️ Clear Cart — Remove all items from the cart in one tap
👤 Profile Screen — Placeholder for user account
🌙 Dark Theme — Full dark mode with orange accent color
🔤 Arabic UI — Full Arabic language support with Cairo font


🛠️ Tech Stack
TechnologyUsageFlutterUI FrameworkDartProgramming LanguageProviderState Management (Cart)Cairo FontArabic Typography

📁 Project Structure
lib/
├── main.dart                        # App entry point + Provider setup
├── home.dart                        # Home screen with categories grid
├── models/
│   ├── food_category.dart           # FoodCategory model
│   └── food_item.dart               # FoodItem model
├── providers/
│   └── cart_provider.dart           # Cart state management (ChangeNotifier)
├── screen/
│   ├── category_card.dart           # Category card widget
│   ├── category_screen.dart         # Items grid for a category
│   ├── food_card.dart               # Food item card widget
│   └── food_details.dart            # Full food details page
├── show/
│   ├── main_navigation.dart         # Bottom nav bar with cart badge
│   ├── cart_screen.dart             # Cart items list
│   └── profile.dart                 # Profile placeholder
└── shared/
    └── styled_text.dart             # Reusable text widgets (Cairo font)

🗄️ Data Models
FoodCategory
dartFoodCategory({
  required String title,   // Category name e.g. "بركر"
  required String image,   // Category cover image
  required List<FoodItem> items,
});
FoodItem
dartFoodItem({
  required String name,
  required String description,
  required String price,
  required String image,
  bool isPopular,          // Flag for popular items
  List<String> drinks,     // Optional drink options
  int quantity,            // Order quantity counter
});

🛒 Cart System (Provider)
The cart is managed globally using Provider + ChangeNotifier:
CartProvider
├── List<FoodItem> _items     → stores cart items
├── addItem(FoodItem)         → adds item & notifies listeners
├── clearCart()               → empties cart & notifies listeners
└── itemCount                 → returns number of items (used for badge)
The cart badge on the bottom nav bar updates instantly when items are added:
dartif (cart.itemCount > 0)
  Positioned(
    child: Container(
      child: Text('${cart.itemCount}'),
    ),
  )

🎨 Theme
dartThemeData.dark().copyWith(
  primaryColor: Colors.orange,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
)

🚀 Getting Started
Prerequisites

Flutter SDK >=3.0.0
Dart SDK

Installation
1. Clone the repository
bashgit clone https://github.com/ahmedhadi7/simple-restaurant-Ui-interface.git
cd simple-restaurant-Ui-interface
2. Install dependencies
bashflutter pub get
3. Run the app
bashflutter run

📦 Dependencies
yamldependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0

🔮 Future Improvements

 Connect to a real backend or Firebase
 Add quantity control (+ / -) in cart
 Implement search functionality
 Complete profile & authentication screen
 Add order confirmation flow
 Support multiple languages


👨‍💻 Author
Ahmed Hadi

GitHub: @ahmedhadi7


📄 License
This project is licensed under the MIT License.
