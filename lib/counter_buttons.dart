import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final VoidCallback onReset;

  const CounterButtons({
    super.key,
    required this.onAdd,
    required this.onSubtract,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: const Color(0xFFFEE2E2),
              shape: const CircleBorder(),
              child: InkWell(
                onTap: onSubtract,
                customBorder: const CircleBorder(),
                child: const Padding(
                  padding: EdgeInsets.all(18),
                  child: Icon(
                    Icons.remove_rounded,
                    size: 32,
                    color: Color(0xFFDC2626),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 32),
            Material(
              color: const Color(0xFF4F46E5),
              elevation: 6,
              shadowColor: const Color(0x664F46E5),
              shape: const CircleBorder(),
              child: InkWell(
                onTap: onAdd,
                customBorder: const CircleBorder(),
                child: const Padding(
                  padding: EdgeInsets.all(22),
                  child: Icon(
                    Icons.add_rounded,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 28),
        TextButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.refresh_rounded, size: 18),
          label: const Text(
            'Reset ke 0',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF64748B),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}