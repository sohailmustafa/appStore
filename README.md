# 📱 Flutter App - Three Screens Navigation

## 📌 Overview

This project contains **three beautifully designed screens** built using Flutter:

- Main Home Screen  
- Sub Home Screen  
- Search Screen  

The app follows a modern UI design with reusable components and smooth navigation using GetX.

---

## 🧩 Screens Description

### 🏠 Main Home Screen

- Displays greeting message (Good Morning)
- Search bar for dishes and restaurants
- Horizontal category list (All, Burger, Pizza, etc.)
- List of open restaurants with details (rating, distance, delivery time)
- Top menu button (☰)

👉 **Navigation:**

- Menu button → Sub Home Screen

---

### 📄 Sub Home Screen

- Displays greeting message (Good Afternoon)
- Search bar
- Horizontal item cards (Pizza, Burger, Pasta, etc.)
- Restaurant list similar to main screen
- Top menu button (☰)

👉 **Navigation:**

- Menu button → Main Home Screen  
- Search interaction → Search Screen  

---

### 🔍 Search Screen

- Custom header with back button
- Search text field (AppTextField)
- Recent keywords (horizontal scroll)
- Suggested restaurants list with ratings
- Popular fast food items (horizontal cards)
- Store/cart icon with badge

👉 **Navigation:**

- Back button → Sub Home Screen  

---

## 🔁 Navigation Logic

Navigation is handled using **GetX (Get.to)**:

```dart
Get.to(SubhomeScreen()); // Navigate to Sub Home
Get.to(MainHome());      // Navigate to Main Home
Get.to(SearchView());    // Navigate to Search Screen
