import 'package:acxiom/features/admin/screens/add_membership.dart';
import 'package:acxiom/features/admin/screens/add_user.dart';
import 'package:acxiom/features/admin/screens/membership_screen.dart';
import 'package:acxiom/features/admin/screens/update_membership.dart';
import 'package:acxiom/features/admin/screens/update_user.dart';
import 'package:acxiom/features/admin/screens/user_management_screen.dart';
import 'package:acxiom/features/user/screens/cart_screen.dart';
import 'package:acxiom/features/user/screens/checkout_screen.dart';
import 'package:acxiom/features/user/screens/guest_list.dart';
import 'package:acxiom/features/user/screens/order_status.dart';
import 'package:acxiom/features/user/screens/order_success.dart';
import 'package:acxiom/features/user/screens/product_list.dart';
import 'package:acxiom/features/user/screens/vendor_list.dart';
import 'package:acxiom/features/vendor/screens/add_product.dart';
import 'package:acxiom/features/vendor/screens/product_status.dart';
import 'package:acxiom/features/vendor/screens/transaction_screen.dart';
import 'package:acxiom/features/vendor/screens/vendor_products.dart';
import 'package:flutter/material.dart';
import '../features/auth/screens/login_screen.dart';
import '../features/admin/screens/admin_dashboard.dart';
import '../features/vendor/screens/vendor_home.dart';
import '../features/user/screens/user_home.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const LoginScreen(),
    '/admin': (context) => const AdminDashboard(),
    '/vendor': (context) => const VendorHome(),
    '/user': (context) => const UserHome(),
    '/add-product': (context) => const AddProductScreen(),
    '/vendor-products': (context) => const VendorProductsScreen(),
    '/product-status': (context) => const ProductStatusScreen(),
    '/vendors': (context) => const VendorListScreen(),
    '/products': (context) => const ProductListScreen(),
    '/cart': (context) => const CartScreen(),
    '/checkout': (context) => const CheckoutScreen(),
    '/order-success': (context) => const OrderSuccessScreen(),
    '/order-status': (context) => const OrderStatusScreen(),
    '/guest-list': (context) => const GuestListScreen(),
    '/transactions': (context) => const TransactionScreen(),
    '/membership': (context) => const MembershipScreen(),
    '/user-management': (context) => const UserManagementScreen(),
    '/add-membership': (context) => const AddMembershipScreen(),
    '/update-membership': (context) => const UpdateMembershipScreen(),
    '/add-user': (context) => const AddUserScreen(),
    '/update-user': (context) => const UpdateUserScreen(),
  };
}
