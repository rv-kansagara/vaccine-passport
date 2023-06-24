import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isLoading;
  final VoidCallback onTap;

  const GradientButton({
    required this.label,
    required this.icon,
    required this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 400,
        margin: EdgeInsets.symmetric(vertical: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.pinkAccent],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: isLoading
            ? Center(child: CircularProgressIndicator(color: Colors.white))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  const SizedBox(width: 14),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
