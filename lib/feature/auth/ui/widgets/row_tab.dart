import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  final bool isLoginActive;
  final VoidCallback onSignInTap;
  final VoidCallback onSignUpTap;
  const TabsWidget({
    super.key,
    required this.isLoginActive,
    required this.onSignInTap,
    required this.onSignUpTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color activeColor = theme.colorScheme.primary;
    final Color inactiveColor = theme.colorScheme.onSurface.withOpacity(0.6);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onSignInTap,
              child: _BuildTabContent(
                title: 'SignIn',
                icon: Icons.login_outlined,
                isActive: isLoginActive,
                activeColor: activeColor,
                inactiveColor: inactiveColor,
              ),
            ),
            SizedBox(width: 40),
            GestureDetector(
              onTap: onSignUpTap,
              child: _BuildTabContent(
                title: "SignUp",
                icon: Icons.verified_outlined,
                isActive: !isLoginActive,
                activeColor: activeColor,
                inactiveColor: inactiveColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _BuildTabContent extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;
  const _BuildTabContent({
    required this.title,
    required this.icon,
    required this.isActive,
    required this.activeColor,
    required this.inactiveColor,
  });
  @override
  Widget build(BuildContext context) {
    final Color currentColor = isActive ? activeColor : inactiveColor;
    final TextStyle currentTextStyle =
        Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: currentColor,
          fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
        ) ??
        TextStyle(
          color: currentColor,
          fontSize: 18,
          fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
        );
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: currentColor),
            const SizedBox(width: 6),
            Text(title, style: currentTextStyle),
          ],
        ),
        const SizedBox(height: 4),
        isActive
            ? Container(height: 5, width: 120, color: activeColor)
            : const SizedBox(height: 5, width: 120),
      ],
    );
  }
}
