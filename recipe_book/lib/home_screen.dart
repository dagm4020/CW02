import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.blueAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 8,
        title: const Text(
          'Recipe Mini Apps',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'img/background.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: [
                RecipeCard(
                  title: 'One-Pot Spaghetti\nwith Meat Sauce',
                  imagePath: 'img/spaghetti.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(spaghetti: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Midwest Salisbury Steak',
                  imagePath: 'img/salisbury_steak.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(salisbury: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Skillet Pepper and Garlic\nPork Chops',
                  imagePath: 'img/pork_chops.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(porkChops: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Dirt Road Martini',
                  imagePath: 'img/dirt_road_martini.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(dirtRoadMartini: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Blackberry Cheesecake\nBrownies',
                  imagePath: 'img/blackberry_brownies.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(blackberryBrownies: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Ground Turkey Teriyaki\nStir-Fry',
                  imagePath: 'img/turkey_stir_fry.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(groundTurkeyTeriyaki: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Spicy Vegetable Beef\nUdon Noodles',
                  imagePath: 'img/udon_noodles.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(spicyUdon: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Sweet and Spicy Gochujang\nChicken',
                  imagePath: 'img/gochujang_chicken.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(gochujangChicken: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Blackberry Margarita',
                  imagePath: 'img/blackberry_margarita.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DetailsScreen(blackberryMargarita: true),
                      ),
                    );
                  },
                ),
                RecipeCard(
                  title: 'Apple, Strawberry, and\nBanana Smoothie',
                  imagePath: 'img/apple_strawberry_banana_smoothie.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(
                            appleStrawberryBananaSmoothie: true),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const RecipeCard(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
