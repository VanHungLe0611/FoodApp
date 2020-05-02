import 'package:FoodApp/screens/categories_screen.dart';
import 'package:FoodApp/screens/category_meals_screen.dart';
import 'package:FoodApp/screens/meal_detail_screen.dart';
import 'package:FoodApp/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
              ))),
      // home: CategoriesScreen(),
      initialRoute: 'mainScreen',
      routes: {
        'mainScreen': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName : (context) => MealDetailScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        return MaterialPageRoute(builder: (context) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      } ,
    );
  }
}
