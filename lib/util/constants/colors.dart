import 'package:flutter/material.dart';

class TColors{
  TColors._(); // private

  static const primary = Color(0xFF4A90E2); // appbar background
  static const secondary = Color(0xFF50E3C2); 
  static const accent = Color(0xFFFFD700); // for important tasks/ pinned / urgent
  static const background = Color(0xFFFAFAFA); // main color for background
  static const primaryBackground = Color.fromARGB(255, 205, 206, 174); // for cards/tiles
  static const surface = Color(0xFFF5F5F5);
  static const error = Color(0xFFFF4C4C); // failed remainders or errors 
  static const textPrimary = Color(0xFF212121); // main text
  static const textSecondary = Color(0xFF616161); // muted text low opacity one
  static const icon = Color(0xFF4A4A4A); // main color for icons
  static const button = primary; // main color for buttons
  static const border = Color(0xFFE0E0E0);
} 
class TDColors {
  TDColors._();
  static const primary = Color(0xFF90CAF9); // AppBar background
  static const secondary = Color(0xFF80CBC4); 
  static const accent = Color(0xFFFFD54F); // Pinned / Urgent tasks

  static const background = Color(0xFF121212); // Page background
  static const primaryBackground = Color(0xFF1E1E1E); // Cards / tiles
  static const surface = Color(0xFF2C2C2C); // Slightly elevated background

  static const error = Color(0xFFEF5350); // Errors / failed reminders

  static const textPrimary = Color(0xFFFFFFFF); // Main text
  static const textSecondary = Color(0xFFBDBDBD); // Muted text
  static const icon = Color(0xFFE0E0E0); // Icon color

  static const button = primary; // Buttons
  static const border = Color(0xFF424242);
}