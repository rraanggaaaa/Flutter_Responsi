import 'package:flutter/material.dart';
import '../theme/custom_color.dart';

class WidgetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Divider(
        color: CustomColor.secondaryColor,
        thickness: 1.0,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.music_note, color: CustomColor.primaryColor, size: 110,),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Headline',
                      style: TextStyle(
                        color: CustomColor.thirthColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Description duis aute irure dolor in reprehenderit in volup...',
                      style: TextStyle(
                        color: CustomColor.thirthColor,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyebar ikon dan teks
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.add, color: CustomColor.thirthColor, size: 32.0), // Ikon plus
                            SizedBox(width: 4.0), // Jarak antara ikon dan teks
                            Text(
                              'Today - 23 min',
                              style: TextStyle(
                                color: CustomColor.thirthColor,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.play_arrow, color: CustomColor.thirthColor, size: 32.0), // Ikon play
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}