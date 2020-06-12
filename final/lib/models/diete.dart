import 'package:flutter/material.dart';
import 'user.dart';
import 'package:fitclubmenu/models/side_menu.dart';

class Diete extends StatefulWidget {
  @override
  _dieteState createState() => _dieteState();

}

class _dieteState extends State<Diete> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: Container(
            child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter height:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please, enter height!';
                    }
                  },
                  onSaved: (value) => setState(() => _user.inaltime = value),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter weight:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please, enter weight!';
                    }
                  },
                  onSaved: (value) => setState(() => _user.greutate = value),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter age:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please, enter age!';
                    }
                  },
                  onSaved: (value) => setState(() => _user.varsta = value),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Objective',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                CheckboxListTile(
                  title: Text('Weight loss'),
                  value: _user.obiectiv[User.Slabit],
                  onChanged: (value) =>
                      setState(() => _user.obiectiv[User.Slabit] = value),
                ),
                CheckboxListTile(
                  title: const Text('Keep current weight'),
                  value: _user.obiectiv[User.Mentinere],
                  onChanged: (value) =>
                      setState(() => _user.obiectiv[User.Mentinere] = value),
                ),
                CheckboxListTile(
                  title: const Text('Muscle gain'),
                  value: _user.obiectiv[User.CrestereMasa],
                  onChanged: (value) =>
                      setState(() => _user.obiectiv[User.CrestereMasa] = value),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      final form = _formKey.currentState;
                      if (form.validate()) {
                        form.save();
                        _user.save();
                        var varsta =  int.parse(_user.varsta);
                        var optiune = 0;
                        if(_user.obiectiv[User.Slabit] == true){
                          if(varsta < 30)
                            optiune = 1;
                          else if(varsta < 50)
                            optiune = 2;
                          else if(varsta >= 50)
                            optiune = 3;
                        }
                        else if(_user.obiectiv[User.Mentinere] == true){
                              if(varsta < 30)
                                optiune = 4;
                              else if(varsta < 50)
                                optiune = 5;
                              else if(varsta >= 50)
                                optiune = 6;
                        }
                        else if(_user.obiectiv[User.CrestereMasa] == true){
                          if(varsta < 30)
                            optiune = 7;
                          else if(varsta < 50)
                            optiune = 8;
                          else if(varsta >= 50)
                            optiune = 9;
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rezultat(optiune)),
                        );
                      }

                    },
                    child: Text('Confirm'),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}

class Rezultat extends StatefulWidget {
  int id;
  Rezultat(int i){
    this.id = i;
  }
  @override
  _RezultatState createState() => _RezultatState(id);
}

class _RezultatState extends State<Rezultat> {
  int id;
  _RezultatState(int i){
    this.id = i;
  }
  @override
  Widget build(BuildContext context) {
    if(id == 1){
      return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('Recommended nutrition:'),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
            children: [
              Container(
              //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('For weight loss we propose you a diet with less then 1200 calories:',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                ),
              ),
              ),
              Text(' '),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              ),
              Image.asset(
              'assets/micdejunSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Add 300g of oat cereals, a banana and 100ml fat-free milk.'),
              ),
              Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Image.asset(
              'assets/PranzSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('A bowl of tomato soup (200ml). You can add croutons too.'),
              ),
              Text(' '),
              Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Image.asset(
              'assets/CinaSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('300g pork stake with  200g of green salad.'),
              ),
              ]

        ),

      ),


    );
    }
    else if(id == 2){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('For weight loss we propose you a diet with less then 1200 calories:',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                ),
                Image.asset(
                  'assets/micdejunSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Put in microwave 300g of oat and 100ml of soya milk.'),
                ),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A quesadilla. Add chicken slices, tomatoes and cheese.'),
                ),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A portion of 300g of brown rice. Brown rice is lower on carb then white rice and more nourishing.'),
                ),
              ]

          ),

        ),


      );
    }
    else if(id == 3){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('For weight loss we propose you a diet with less then 1200 calories:',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunSlabit3.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Fruit smoothie. You have to add 100g forest fruits, a banana and 200 ml of water. You can also eat a boiled egg.'),
                ),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit3.jpeg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('You can eat a greek yogurt with honey, nuts and forest fruits.'),
                ),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaSlabit3.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A portion of somon (200g) with coleslaw salad.'),
                ),
              ]

          ),

        ),


      );
    }
    else if(id == 4){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('For keep weight we recommend you a diet with less then 2800 calories.',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunMentinere1.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('For breakfest we recommend you 4 boiled eggs'),
                ),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere1Crestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A portion of chicken breast(400g). Add chicken in lemon juice, sunflower oil and salt. Fry it without any other oil.'),
                ),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere1.jpeg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Turkey ham sandwich. Bread have to be dark. You can add tomatoes, green salad and cheese.'),
                ),
              ]

          ),

        ),


      );
    }
    else if(id == 5){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('For keep weight we recommend you a diet with less then 2500 calories.',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Omelette with bacon (2 eggs and 3 bacon strips).'),
                ),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('230g greek yoghurt and a banana. You can add honey.'),
                ),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A portion of 85g of Quinoa. Add salt.'),
                ),
              ]

          ),

        ),


      );
    }
    else if(id == 6){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('For keep weight we recommend you a diet with less then 2300 calories.',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                ),
                Image.asset(
                  'assets/micdejunMentinere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('In a bowl add 80g of oat, 300g of strawberries and 200ml of fat-free milk.'),
                ),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere3.jpg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('75 grams of humus and 120g of carrots.'),
                ),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Teriyaki chicken. 500g of skinless chicken breast , 50ml teriyaki sauce, salt and pepper.'),
                ),
              ]

          ),

        ),


      );
    }
    else if(id == 7){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Container(
                    //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                    child: Text('For muscle gain we recommend you the following diet with less then 3400 de calories per day:',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Text(' '),
                  Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                  Image.asset(
                    'assets/micdejunCrestere1.jpg',
                    width:450,
                    height: 200,
                  ),
                  Text('Fruit smoothie. You have to add 100g forest fruits, a banana and 400 ml of milk.'),
                  Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                  Image.asset(
                    'assets/PranzCrestere1.jpeg',
                    width:450,
                    height: 200,
                  ),
                  Text('Pasta with tomato sauce and chicken breast. Pasta(120g), Tomato sauce(150g) and chicken breast (200g). Add salt and pepper.'),
                  Text(' '),
                  Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                  Image.asset(
                    'assets/CinaCrestere1.jpeg',
                    width:450,
                    height: 200,
                  ),
                  Text('Greek spicy yoghurt(120g). Add spicy sauce in greek yoghurt and carrots.'),
                ]

            ),
          ),

        ),


      );
    }
    else if(id == 8){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                    child: Text('For muscle gain we recommend you the following diet with less then 3200 de calories per day:',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunCrestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('For breakfest eat 5 boiled eggs.'),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere1Crestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('A portion of chicken breast (400g). Add chicken in lemon juice, sunflower oil and salt. Fry it without any other oil.'),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit1.jpg',
                  width:450,
                  height: 200,
                ),
                Text('A bowl of tomato soup (200ml). You can add croutons too.'),
              ]

          ),

        ),


      );
    }
    else if(id == 9){
      return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Recommended nutrition:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                    child: Text('For muscle gain we recommend you the following diet with less then 3000 de calories per day:',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Text(' '),
                Text('Breakfast', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunCrestere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('2 oranges.'),
                Text('Launch', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzCrestere3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Oriental chicken. Add 400g of chicken breast, 1 garlic, green onion, red pepper. Soya sauce and salt.'),
                Text(' '),
                Text('Dinner', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaCrestere3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Tuna salad with cucumbers and tomatoes. 330g tuna, 400g cucumbers, 70g of salad, 500g tomatoes.'),
              ]

          ),

        ),


      );
    }
  }
}

