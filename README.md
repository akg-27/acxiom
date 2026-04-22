# Axciom Consulting
Event Management System App

# 🎯 Event Management System App (Flutter)

A fully functional **multi-role Event Management System** built using **Flutter**, designed to simulate real-world workflows between **Admin, Vendor, and User**.

This project demonstrates end-to-end application flow including product management, cart system, order processing, and admin controls — all implemented using **local state (no backend)**. **For more Information and better UI/UX understanding please go through the Snapshots and Video of App provided.**

---

## 🚀 Features

### 👤 User Module

* Browse vendors and their services (Catering, Florist, Decoration, etc.)
* View products and add to cart
* Manage cart (increase/decrease quantity, remove items)
* Checkout with address & payment method
* Track order status
* Manage guest list

---

### 🏪 Vendor Module

* Add new products/services
* View all added products
* Update and delete products
* Manage product status (Pending / Approved / Out for Delivery)
* View transaction history

---

### 🧑‍💼 Admin Module

* Dashboard overview
* Manage memberships (Add / Update)
* Manage users (Add / Update)
* Structured control panel UI

---

## 🧠 Key Highlights

* 🔄 **Role-based Navigation** (Admin / Vendor / User)
* 🛒 Complete **Cart & Checkout Flow**
* 📦 **Order Management System**
* 🧾 Vendor-side **Product CRUD Operations**
* ⚡ Smooth navigation with clean UI structure
* 📱 Fully built using **Flutter (Material UI)**

---

## 🏗️ Tech Stack

* **Frontend:** Flutter (Dart)
* **State Handling:** Local in-memory state (for demo)
* **Architecture:** Feature-based folder structure
* **UI Design:** Custom reusable widgets

---

## 📂 Project Structure

```bash
lib/
├── core/            # Reusable widgets
├── data/            # Models & dummy data
├── features/
│   ├── auth/
│   ├── admin/
│   ├── vendor/
│   ├── user/
├── routes/          # App routing
└── main.dart
```

---

## ⚙️ How to Run

```bash
git clone https://github.com/akg-27/axciom.git
cd axciom
flutter pub get
flutter run
```

---

## 📌 Notes

* This is a **demo project** (no backend integration)
* All data is stored locally and resets on app restart
* Designed to showcase **application flow, UI, and logic building**

---

## 💡 Future Improvements

* 🔗 Integrate backend (Node.js / Firebase)
* 💾 Add local persistence (Hive / SQLite)
* 🔐 Implement proper authentication
* 📊 Admin analytics dashboard
* 🌐 Deploy as full-stack application

---

## 👨‍💻 Author

**Aniket Ganorkar** 

**aniketganorkar08@gmail.com** 

**CSE(AI)** 

**B.Tech 4th Year** 

**Bhilai Institute of Technology Durg** 
