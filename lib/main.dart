import 'package:fake_coffe_app/home_screen.dart';
import 'package:fake_coffe_app/order_screen.dart';
import 'package:fake_coffe_app/why_slurp_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/orderScreen': (context) => OrderScreen(),
        '/whySlurpScreen': (context) => WhySlurpScreen(
              title: "Why SLURP?",
              description: "SLURP is the first and only coffee membership",
              imgUrl:
                  "https://s3-alpha-sig.figma.com/img/6dc4/5e57/656f5d5304ee091f3e6961721b43da06?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Xc6LnchXPLClOky8TK2p7MN36rbhQU50nlZMd9Be12QuSjjcgQbM4QkgnG5Kaa7IcS8jYw3ta8mRdbx65lRYVqTMGKfluIPtwttCKFNixEtYZHrP29HVz9uoBQk6ybd~4up3OjeacLwvNLohQd4yzmPCyA-h~-iToaSUnoetRgbBSqQ9dMzZUO0PvrwFsC6VwjxVJWWhH787wxR5kvv-jCBILSfS5ODrGCTFiZkmLmNd1p9EEtW0R-J9CxWT2pnT03-StZrDRDlUnD9GNrIXOCSlAAVk20WQN0SHjfIczYySleeSKuzLxn~UU24HbHYdXbI1v6QphQ7~0~r4hGhQSw__",
              text:
                  "Coffee is a cherished beverage enjoyed by millions worldwide, and its importance goes beyond just being a morning ritual. It serves as a vital source of energy, providing a much-needed boost to start the day.\n\nThe caffeine in coffee stimulates the central nervous system, enhancing alertness, concentration, and overall cognitive function",
            ),
        '/endlessCodee': (context) => WhySlurpScreen(
              title: "Endless Coffee",
              description: "You can get your desired size of coffee, or",
              imgUrl:
                  "https://s3-alpha-sig.figma.com/img/86cb/7481/2fbc9b40d7baf5b9da3593985d6739d1?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NaJMpZABJDl7ElkeuG6HhrPiP0bWuEAsKV9nknEqHnYsymya22mZwXMMmFqgaxVA4BsEmK~uwyDIVKjI8D-lFkazCwyv7ontEXtKHjCIOE9y-lJg4~1gT0peEtVxdtsUivfnH6ievuKd1fPy8rYOEIDamciYCoL~TBP8PXilc-vzn7npe3zfDZ61ILof1FnnqbzgDSsFCnI0xsXM0Y3L5Sp1XuOlnEfYLm3LIwesLvS6zDpwtRbLJpgeCdUX-P2wXt2SmPNqfI2OABNUp6GfkZkMgo2q4GpHleEmze7qCVzQOowlDPJVekXFvNluspZNUuAwFRDirrBpzh1z86EAdg__",
              text:
                  "The caffeine in coffee stimulates the central nervous system, enhancing alertness, concentration, and overall cognitive function. Additionally, coffee has social significance, often serving as a focal point for gatherings and conversations. Its rich aroma and diverse flavors offer a comforting experience, making it a favorite choice for relaxation and enjoyment. Whether for productivity or pleasure, coffee holds a special place in daily life.",
            ),
      },
    );
  }
}
