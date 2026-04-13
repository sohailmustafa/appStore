# 📱 Flutter App - Two Screens Navigation

## 📌 Overview

This project contains **two beautifully designed screens** built using Flutter:

* **Main Home Screen**
* **Sub Home Screen**

Both screens are structured with modern UI components like lists, categories, restaurant cards, and search functionality.

---

## 🧩 Screens Description

### 🏠 Main Home Screen

* Displays greeting message (Good Morning)
* Search bar for dishes and restaurants
* Horizontal category list (All, Burger, Pizza, etc.)
* List of open restaurants with details (rating, distance, delivery time)
* Top menu button (☰)

👉 **Navigation:**

* When the **menu button is clicked**, it navigates to the **Sub Home Screen**

---

### 📄 Sub Home Screen

* Displays greeting message (Good Afternoon)
* Search bar
* Horizontal item cards (Pizza, Burger, Pasta, etc.) with prices
* Restaurant list similar to main screen
* Top menu button (☰)

👉 **Navigation:**

* When the **menu button is clicked**, it navigates back to the **Main Home Screen**

---

## 🔁 Navigation Logic

Navigation is handled using **GetX (Get.to)**:

* From **MainHome → SubhomeScreen**
* From **SubhomeScreen → MainHome**

```dart
Get.to(SubhomeScreen()); // Navigate to Sub Home
Get.to(MainHome());      // Navigate back to Main Home
```

---

## ⚙️ Key Features

* Clean UI Design
* Reusable Widgets (Category Tiles, Restaurant Tiles, Item Cards)
* Smooth Navigation between screens
* Scrollable layouts (ListView + Horizontal Scroll)
* Custom TextField Component

---

## 📂 Project Structure (Simplified)

```
lib/
 ├── common/
 │    └── appTextField.dart
 ├── modules/
 │    └── home/
 │         └── view/
 │              ├── main_home.dart
 │              └── subhome_screen.dart
```

---

## 🚀 Conclusion

This project demonstrates how to:

* Design **multiple screens**
* Implement **UI components efficiently**
* Enable **navigation between screens using GetX**

👉 Simple, clean, and scalable — exactly how a production-ready UI should start.

---
