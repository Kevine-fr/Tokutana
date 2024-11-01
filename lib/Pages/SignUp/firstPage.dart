import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tokutana/Pages/SignUp/signUp.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  int _currentIndex = 0;
  Timer? _timer;

  final List<String> _imageUrls = [
    'https://i.pinimg.com/736x/83/31/df/8331df777a435f011293ef033569cba2.jpg',
    'https://media.gettyimages.com/id/1331637318/fr/photo/portrait-dune-jeune-femme-afro-au-maquillage-lumineux.jpg?s=612x612&w=gi&k=20&c=lDwPEEt6Zbm741jgXKxRTFBg-CygChCVvvUof3vQO5A=',
    'https://img.over-blog-kiwi.com/1/57/32/29/20150520/ob_4ace3a_l-oreal.JPG'
  ];

  final List<String> _titles = ['Algorithm', 'Matches', 'Premium'];
  final List<String> _subtitles = [
    'Users going through a vetting process to ensure you never match with bots.',
    'We match you with people that have a large array of similar interests.',
    'Sign up today and enjoy the first month of premium benefits on us.'
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) %
            _imageUrls.length; // Utilisation du modulo pour boucler
      });
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemCount: _imageUrls.length,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double value = 1.0;
                    if (_pageController.position.haveDimensions) {
                      value = _pageController.page! - index;
                      value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                    }

                    return Center(
                      child: SizedBox(
                        height: Curves.easeOut.transform(value) *
                            MediaQuery.of(context).size.height *
                            0.45,
                        width: Curves.easeOut.transform(value) * 275,
                        child: child,
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      _imageUrls[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  _titles[_currentIndex],
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    _subtitles[_currentIndex],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (i) {
                    return Container(
                      width: 8.5,
                      height: 8.5,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:
                            i == _currentIndex ? Colors.pink : Colors.grey[300],
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 45),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUp()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    Text(
                      ' Sign In',
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
