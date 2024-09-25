import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final bool spaghetti;
  final bool salisbury;
  final bool porkChops;
  final bool dirtRoadMartini;
  final bool blackberryBrownies;
  final bool groundTurkeyTeriyaki;
  final bool spicyUdon;
  final bool gochujangChicken;
  final bool blackberryMargarita;
  final bool appleStrawberryBananaSmoothie; 

  const DetailsScreen({
    super.key,
    this.spaghetti = false,
    this.salisbury = false,
    this.porkChops = false,
    this.dirtRoadMartini = false,
    this.blackberryBrownies = false,
    this.groundTurkeyTeriyaki = false,
    this.spicyUdon = false,
    this.gochujangChicken = false,
    this.blackberryMargarita = false,
    this.appleStrawberryBananaSmoothie = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          spaghetti
              ? 'One-Pot Spaghetti with Meat Sauce'
              : salisbury
                  ? 'Midwest Salisbury Steak'
                  : porkChops
                      ? 'Skillet Pepper and Garlic Pork Chops'
                      : dirtRoadMartini
                          ? 'Dirt Road Martini'
                          : blackberryBrownies
                              ? 'Blackberry Cheesecake Brownies'
                              : groundTurkeyTeriyaki
                                  ? 'Ground Turkey Teriyaki Stir-Fry'
                                  : spicyUdon
                                      ? 'Spicy Vegetable Beef Udon Noodles'
                                      : gochujangChicken
                                          ? 'Sweet and Spicy Gochujang Chicken'
                                          : blackberryMargarita
                                              ? 'Blackberry Margarita'
                                              : appleStrawberryBananaSmoothie
                                                  ? 'Apple, Strawberry, and Banana Smoothie'
                                                  : '',
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            spaghetti
                ? 'img/spaghetti.png'
                : salisbury
                    ? 'img/salisbury_steak.png'
                    : porkChops
                        ? 'img/pork_chops.png'
                        : dirtRoadMartini
                            ? 'img/dirt_road_martini.png'
                            : blackberryBrownies
                                ? 'img/blackberry_brownies.png'
                                : groundTurkeyTeriyaki
                                    ? 'img/turkey_stir_fry.png'
                                    : spicyUdon
                                        ? 'img/udon_noodles.png'
                                        : gochujangChicken
                                            ? 'img/gochujang_chicken.png'
                                            : blackberryMargarita
                                                ? 'img/blackberry_margarita.png' 
                                                : appleStrawberryBananaSmoothie
                                                    ? 'img/apple_strawberry_banana_smoothie.png' 
                                                    : '',
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(0.3),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: appleStrawberryBananaSmoothie
                          ? const [
                              Text('3/4 cup vanilla almond milk'),
                              Text('1 apple - peeled, cored, and cubed'),
                              Text('1 cup halved frozen strawberries'),
                              Text('1 frozen banana, peeled and cubed'),
                              Text('1/4 cup vanilla Greek yogurt (such as Cabot® 2% lowfat vanilla Greek yogurt)'),
                            ]
                          : blackberryMargarita
                              ? const [
                                  Text('1 teaspoon coarse salt'),
                                  Text('1 lime wedge'),
                                  Text('2 cups ice, or as needed'),
                                  Text('12 blackberries'),
                                  Text('2 fluid ounces silver tequila'),
                                  Text('1 fluid ounce triple sec'),
                                  Text('1 fluid ounce simple syrup'),
                                  Text('3/4 fluid ounces lime juice'),
                                ]
                              : spaghetti
                                  ? const [
                                      Text('1 pound ground Italian sausage'),
                                      Text('1 small white onion, diced'),
                                      Text('4 cloves garlic, minced'),
                                      Text('1 (26 ounce) jar tomato-basil pasta sauce'),
                                      Text('2 cups water'),
                                      Text('1 teaspoon Italian seasoning'),
                                      Text('1 (8 ounce) package spaghetti noodles, broken in half'),
                                      Text('½ cup freshly grated Parmesan cheese for serving (Optional)'),
                                    ]
                                  : salisbury
                                      ? const [
                                          Text('Patties:'),
                                          Text('1 pound ground sirloin'),
                                          Text('½ cup panko bread crumbs'),
                                          Text('1 egg, beaten'),
                                          Text('2 tablespoons milk'),
                                          Text('½ (1 ounce) package dry onion soup mix'),
                                          Text('1 teaspoon Worcestershire sauce'),
                                          Text('¼ teaspoon ground black pepper'),
                                          SizedBox(height: 8),
                                          Text('Gravy:'),
                                          Text('3 tablespoons butter'),
                                          Text('2 cups fresh mushrooms, sliced'),
                                          Text('1 sweet onion, sliced'),
                                          Text('3 tablespoons all-purpose flour'),
                                          Text('½ (1 ounce) package dry onion soup mix'),
                                          Text('1 ½ cups beef stock'),
                                          Text('1 cup water'),
                                          Text('salt and ground black pepper to taste'),
                                        ]
                                      : porkChops
                                          ? const [
                                              Text('4 (1 1/2 inches thick) boneless center-cut pork chops'),
                                              Text('4 tablespoons Worcestershire sauce'),
                                              Text('4 tablespoons olive oil, divided'),
                                              Text('2 cloves garlic, crushed'),
                                              Text('2 tablespoons coarsely ground black pepper'),
                                            ]
                                          : dirtRoadMartini
                                              ? const [
                                                  Text('2 ounces vodka'),
                                                  Text('2 ounces unsweetened tea'),
                                                  Text('1/4 ounce brine from Mezzetta Italian Mix Giardiniera'),
                                                  Text('Spanish Queen martini olives (pitted or stuffed), for garnish'),
                                                  Text('Vegetable pieces from Mezzetta Italian Mix Giardiniera, for garnish'),
                                                ]
                                              : blackberryBrownies
                                                  ? const [
                                                      Text('Blackberry Sauce:'),
                                                      Text('1 1/2 cups frozen blackberries'),
                                                      Text('1/4 cup white sugar, or to taste'),
                                                      Text('1 tablespoon fresh lemon juice'),
                                                      Text('1/4 teaspoon freshly grated lemon zest, or to taste'),
                                                      Text('1 teaspoon cornstarch'),
                                                      Text('1 tablespoon water'),
                                                      SizedBox(height: 8),
                                                      Text('Brownie Layer:'),
                                                      Text('1/2 cup unsalted butter, melted'),
                                                      Text('1 cup firmly packed light brown sugar'),
                                                      Text('1/2 teaspoon salt'),
                                                      Text('1 large egg, at room temperature'),
                                                      Text('1 large egg yolk, at room temperature'),
                                                      Text('2 teaspoons vanilla extract'),
                                                      Text('1/2 cup unsweetened cocoa powder'),
                                                      Text('1/2 cup all-purpose flour'),
                                                      Text('1/4 teaspoon baking soda'),
                                                      SizedBox(height: 8),
                                                      Text('Cheesecake Layer:'),
                                                      Text('8 ounces full fat cream cheese, at room temperature'),
                                                      Text('1/3 cup white sugar'),
                                                      Text('1 pinch salt'),
                                                      Text('1 pinch ground nutmeg'),
                                                      Text('1 large egg white, at room temperature'),
                                                      Text('2 teaspoons fresh lemon juice'),
                                                      Text('1 teaspoon vanilla extract'),
                                                      Text('3/4 cup heavy whipping cream, at room temperature'),
                                                    ]
                                                  : groundTurkeyTeriyaki
                                                      ? const [
                                                          Text('1/3 cup soy sauce'),
                                                          Text('1/4 cup mirin'),
                                                          Text('1/4 cup sake'),
                                                          Text('3 cloves garlic minced'),
                                                          Text('1 teaspoon grated fresh ginger'),
                                                          Text('2 tablespoons brown sugar'),
                                                          Text('1 teaspoon cornstarch'),
                                                          Text('2 teaspoons oil'),
                                                          Text('1 pound ground turkey'),
                                                          Text('1 small onion, diced'),
                                                          Text('2 cups frozen stir fry vegetables, or more to taste'),
                                                          Text('2 1/2 cups cooked jasmine rice'),
                                                          Text('1 teaspoon toasted sesame seeds, or as needed'),
                                                          Text('1/4 cup sliced green onion, or as needed'),
                                                        ]
                                                      : spicyUdon
                                                          ? const [
                                                              Text('1 1/2 tablespoons soy sauce'),
                                                              Text('1 tablespoon dark soy sauce'),
                                                              Text('1 teaspoon chili oil, or to taste'),
                                                              Text('1 1/2 tablespoons oyster sauce'),
                                                              Text('1 1/2 tablespoons honey'),
                                                              Text('1 1/2 tablespoons sesame oil'),
                                                              Text('1 1/2 tablespoons water'),
                                                              Text('1 1/2 teaspoons sesame seeds'),
                                                              Text('1 pound udon noodles'),
                                                              Text('1 tablespoon grapeseed oil'),
                                                              Text('4 cloves garlic, minced'),
                                                              Text('2 cups frozen stir-fry vegetables'),
                                                              Text('1/2 pound rib eye steak, thinly sliced'),
                                                              Text('2 green onions, thinly sliced'),
                                                            ]
                                                          : const [
                                                              Text('1 pound chicken breast, diced'),
                                                              Text('2 tablespoons gochujang (Korean chili paste)'),
                                                              Text('3 tablespoons soy sauce'),
                                                              Text('2 tablespoons sweet rice wine (mirin)'),
                                                              Text('1 tablespoon honey'),
                                                              Text('3 cloves garlic, minced'),
                                                              Text('2 teaspoons sesame oil'),
                                                              Text('1 teaspoon grated ginger'),
                                                              Text('1 tablespoon oil for frying'),
                                                              Text('1 tablespoon sesame seeds, for garnish'),
                                                              Text('1/4 cup chopped green onions, for garnish'),
                                                              Text('Cooked rice for serving'),
                                                            ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Directions:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: appleStrawberryBananaSmoothie
                          ? const [
                              Text('1. Place almond milk, apple, strawberries, banana, and yogurt in a blender, being sure the milk goes in first.'),
                              Text('2. Process until smooth, occasionally scraping down the sides of the blender with a rubber spatula, if necessary.'),
                              Text('3. Pour into serving glasses and serve immediately.'),
                            ]
                          : blackberryMargarita
                              ? const [
                                  Text('1. Sprinkle salt onto a plate. Moisten the rim of a glass with lime wedge. Press the moistened rim into the salt. Fill the glass with ice.'),
                                  Text('2. Fill a cocktail shaker with 10 blackberries, reserving 2 blackberries for garnish. Use a muddler to crush berries to release their juices.'),
                                  Text('3. Add tequila, triple sec, simple syrup and lime juice to the shaker and add 1 cup of ice. Seal and shake vigorously until outside is frosted, 10 to 15 seconds.'),
                                  Text('4. Strain margarita into the glass and garnish with remaining blackberries.'),
                                ]
                              : spaghetti
                                  ? const [
                                      Text('1. Gather all ingredients.'),
                                      Text('2. Combine ground sausage, onions, and garlic in a large pot or skillet with tall sides. Cook over medium heat until sausage is cooked through, 5 to 8 minutes. Drain and discard grease. Stir pasta sauce, water, and Italian seasoning into the mixture.'),
                                      Text('3. Stir in broken spaghetti noodles. Bring to a boil, reduce heat to medium-low, cover, and simmer for 20 minutes. Stir occasionally, and add water as needed to keep the noodles submerged.'),
                                      Text('4. Serve topped with Parmesan cheese.'),
                                    ]
                                  : salisbury
                                      ? const [
                                          Text('1. In a large bowl, combine ground sirloin, panko bread crumbs, egg, milk, onion soup mix, Worcestershire sauce, and black pepper. Form mixture into 6 patties.'),
                                          Text('2. Heat a large skillet over medium heat. Add patties and cook until browned and cooked through, about 5 minutes per side. Remove from skillet and keep warm.'),
                                          Text('3. In the same skillet, melt butter over medium heat. Add mushrooms and onion, cooking until tender. Stir in flour and onion soup mix; cook for 1 minute. Slowly whisk in beef stock and water, cooking until thickened.'),
                                          Text('4. Serve patties topped with gravy.'),
                                        ]
                                      : porkChops
                                          ? const [
                                              Text('1. Preheat oven to 400°F (200°C). Season pork chops with salt and pepper.'),
                                              Text('2. Heat olive oil in a large skillet over medium-high heat. Add pork chops and cook until browned, about 3 minutes per side. Transfer to a baking dish.'),
                                              Text('3. Bake in the preheated oven until cooked through, about 15 minutes.'),
                                              Text('4. Serve with garlic sauce.'),
                                            ]
                                      : dirtRoadMartini
                                          ? const [
                                              Text('1. In a shaker, combine vodka, tea, and giardiniera brine.'),
                                              Text('2. Fill with ice and shake well. Strain into a martini glass.'),
                                              Text('3. Garnish with olives and vegetable pieces. Serve immediately.'),
                                            ]
                                      : blackberryBrownies
                                          ? const [
                                              Text('1. Prepare blackberry sauce: In a saucepan over medium heat, combine blackberries, sugar, lemon juice, and zest. Cook until simmering.'),
                                              Text('2. In a small bowl, mix cornstarch and water; stir into sauce and cook until thickened. Cool completely.'),
                                              Text('3. Prepare brownie layer: In a bowl, whisk melted butter, brown sugar, and salt. Whisk in egg, yolk, and vanilla. Stir in cocoa powder, flour, and baking soda.'),
                                              Text('4. Prepare cheesecake layer: Beat cream cheese, sugar, salt, and nutmeg until smooth. Mix in egg white, lemon juice, and vanilla, then heavy cream.'),
                                              Text('5. Pour brownie batter into a prepared pan, top with cheesecake, and swirl in blackberry sauce. Bake until set. Cool and refrigerate before serving.'),
                                            ]
                                          : groundTurkeyTeriyaki
                                              ? const [
                                                  Text('1. Stir soy sauce, mirin, sake, garlic, ginger, brown sugar, and cornstarch together in a small bowl; set aside.'),
                                                  Text('2. Heat oil in a skillet over medium-high. Add ground turkey; cook until browned.'),
                                                  Text('3. Add onions and stir-fry vegetables; cover and cook for 3 minutes.'),
                                                  Text('4. Uncover and add teriyaki sauce; cook until thickened. Serve over rice, garnished with sesame seeds and green onions.'),
                                                ]
                                              : spicyUdon
                                                  ? const [
                                                      Text('1. Stir soy sauce, dark soy sauce, chili oil, oyster sauce, honey, sesame oil, water, and sesame seeds in a bowl. Set aside.'),
                                                      Text('2. Cook udon noodles until tender. Drain and rinse. Set aside.'),
                                                      Text('3. Heat oil; add garlic and stir-fry vegetables. Cook for 2 minutes, then add beef. Cook until browned.'),
                                                      Text('4. Add noodles and sauce; toss until coated. Season and garnish with green onions before serving.'),
                                                    ]
                                                  : const [
                                                      Text('1. Gather all ingredients.'),
                                                      Text('2. Stir together gochujang, soy sauce, sweet rice wine, honey, garlic, sesame oil, and ginger in a bowl.'),
                                                      Text('3. Heat oil in a wok over medium-high. Add half of the chicken; cook until no longer pink. Remove and repeat with remaining chicken.'),
                                                      Text('4. Return chicken to wok, add sauce, and cook until thickened. Serve topped with sesame seeds and green onions over rice.'),
                                                    ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
