import 'package:flutter/material.dart';
import '../screens/player_screen.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         ClipRRect(
            borderRadius: BorderRadius.circular(40),
           child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlayerScreen(url: "https://youtu.be/Q4Js9OEODHM"),
                )
              );
            },
            child: const Image(
              image: AssetImage('assets/images/assets/images/the_franchise_e1.png'),
            ),
          ),
         ),
        Column(
          children: [ 
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Mundial Qatar 2022', 
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Text("Argentina gana su tercer campeonato del mundo en una final inigualable",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text("Fecha: 12/19/2022",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
                        SizedBox(
              width: 300,
              height: 50,
              child: Text("Duración: 15:30",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
          ],          
        ),
      ],
    );
  }
}