import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Relax Places',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPlaceListItem(
            context,
            'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=400',
            'Türkiye',
            'Bosphorus strait',
          ),
          _buildPlaceListItem(
            context,
            'https://images.unsplash.com/photo-1539768942893-daf53e448371?w=400',
            'Egypt',
            'Pyramids',
          ),
          _buildPlaceListItem(
            context,
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
            'Chaina',
            'Beach + c. Rest',
          ),
          _buildPlaceListItem(
            context,
            'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400',
            'Saudi Arabia',
            'Al ula',
          ),
          _buildPlaceListItem(
            context,
            'https://images.unsplash.com/photo-1549144511-f099e773c147?w=400',
            'Paris',
            'Luxembourg',
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceListItem(BuildContext context, String image, String country, String place) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  place,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF4DD5C5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}