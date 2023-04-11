import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.near_me,
            size: 50,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchView(),
                  ),
                );
              },
              child: Icon(
                Icons.location_city,
                size: 50,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 100,
                left: 140,
                child: Text(
                  '⛅',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 40,
                child: Text(
                  '8\u2103',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 0,
                right: 50,
                child: Text(
                  'Eshik issik  \n jenil kiin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 320,
                //left: ,
                right: 0,
                child: Text(
                  '👚',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: 50,
                // right: 0,
                child: Text(
                  'Bishkek',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
