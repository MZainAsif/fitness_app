import 'package:fitness_app/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> catego = [
    Category(
      imagUrl: "assets/images/emily.png",
      name: "Yoga Excercises",
    ),
    Category(
      imagUrl: "assets/images/sule.png",
      name: "Example excercises",
    ),
    Category(
      imagUrl: "assets/images/alexsandra.png",
      name: "Example excercises",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/image3.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hey,",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Colors.white,
                            letterSpacing: 1.8,
                          ),
                        ),
                        Text(
                          "Zain",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Colors.green,
                            letterSpacing: 1.8,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amberAccent,
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/zain1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find",
                          style: GoogleFonts.lato(
                            fontSize: 26,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " your Workout",
                          style: GoogleFonts.lato(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.filter_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: Container(
                  width: 330,
                  height: 46,
                  decoration: BoxDecoration(
                    color: const Color(0xFF232441),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "SEARCH WORKOUT",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Hard Workout",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Full Body",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Cross Fit",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      "Popular Workout",
                      style: GoogleFonts.lato(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                    itemCount: catego.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(catego[index].imagUrl),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              catego[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
