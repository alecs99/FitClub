import 'package:flutter/material.dart';

import 'models/user.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
                      InputDecoration(labelText: 'Introduceti inaltimea:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Va rugam, introduceti inaltimea';
                    }
                  },
                  onSaved: (value) => setState(() => _user.inaltime = value),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Introduceti greutatea:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Va rugam, introduceti greutatea';
                    }
                  },
                  onSaved: (value) => setState(() => _user.greutate = value),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Introduceti varsta:'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Va rugam, introduceti varsta';
                    }
                  },
                  onSaved: (value) => setState(() => _user.varsta = value),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Obiectiv',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                CheckboxListTile(
                  title: Text('Slabire'),
                  value: _user.obiectiv[User.Slabit],
                  onChanged: (value) =>
                      setState(() => _user.obiectiv[User.Slabit] = value),
                ),
                CheckboxListTile(
                  title: const Text('Mentinere'),
                  value: _user.obiectiv[User.Mentinere],
                  onChanged: (value) =>
                      setState(() => _user.obiectiv[User.Mentinere] = value),
                ),
                CheckboxListTile(
                  title: const Text('Crestere masa musculara'),
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
                    child: Text('Confirma'),
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
      appBar: AppBar(
        title: Text('Nutritie recomandata:'),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
            children: [
              Container(
              //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
              child: Text('Pentru a putea slabi va propunem un meniu zilnic cu mai putin de 1200 calorii:',
              style:
              TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
              ),
              ),
              Text(' '),
              Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Image.asset(
              'assets/micdejunSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Text('Puneti 300g de cereale din tarate intr-un bol, o banana si 100ml de lapte fara grasimi.'),
              Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Image.asset(
              'assets/PranzSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Text('Un bol de supa de rosii(200ml). Se pot adauga si crutoane.'),
              Text(' '),
              Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Image.asset(
              'assets/CinaSlabit1.jpg',
              width:450,
              height: 200,
              ),
              Text('O portie de 300g muschi de porc alaturi de 200g de salata verde.'),
              ]

        ),

      ),


    );
    }
    else if(id == 2){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a putea slabi va propunem un meniu zilnic cu mai putin de 1200 calorii:',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Puneti la cuptorul cu microunde 300g de ovaz si 100ml de lapte de soya.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de quesadilla in care puteti adauga  bucati de piept de pui fara piele, rosii si cascaval.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaSlabit2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de 300g de orez maro. Orezul maro este mai slab in grasimi decat cel alb si mai hranitor.'),
              ]

          ),

        ),


      );
    }
    else if(id == 3){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a putea slabi va propunem un meniu zilnic cu mai putin de 1200 calorii:',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunSlabit3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Va recomandam un smoothie hranitor de fructe. Se adauga 100g fructe de padure, 1 banana si 200 ml de apa. Daca inca aveti senzatia de foame puteti manca si un ou fiert.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit3.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('Pentru masa de pranz puteti manca 200g de iaurt grecesc fara grasimi cu miere, nuci si fructe de padure.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaSlabit3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de somon (200g) asezonata cu salata coleslaw.'),
              ]

          ),

        ),


      );
    }
    else if(id == 4){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a va putea mentine o greutate normala va recomandam un meniu zilnic cu 2800 calorii.',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunMentinere1.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Pentru micul dejun va recomandam 4 oua fierte.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere1Crestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de piept de pui la tigaie (400g). Se amesteca pieptul de pui cu suc de lamaie, ulei si sare si se prajeste la tigaie fara ulei.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere1.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('Va recomandam un sandwhich cu sunca de curcan. Paine trebuie sa fie neaparat neagra. Pe langa sunca puteti adauga salata verde, rosii si cascaval.'),
              ]

          ),

        ),


      );
    }
    else if(id == 5){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a va putea mentine o greutate normala va recomandam un meniu zilnic cu 2500 calorii.',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Pentru micul dejun va recomandam o omleta cu bacon (2 oua si 3 felii de bacon).'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('230g de iaurt grecesc fara grasimi si o banana felii. Puteti adauga si miere dupa gust.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de 85g de Quinoa. Adaugati sare dupa gust.'),
              ]

          ),

        ),


      );
    }
    else if(id == 6){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a va putea mentine o greutate normala va recomandam un meniu zilnic cu 2300 calorii.',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunMentinere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('Intr-un bol adaugam 80g de ovaz, 300g de capsune si 200ml de lapte fara grasimi.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de 75 de grame de humus si 120g de morcovi.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaMentinere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('Pui tras la tigaie cu sos Teriyaki. 500g de piept de pui fara os si piele, 50ml de sos teriyaki, sare si piper dupa gust. Se pot adauga si seminte de susan pe deasupra.'),
              ]

          ),

        ),


      );
    }
    else if(id == 7){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a putea creste in masa musculara va recomandam urmatorul meniu bazate pe 3400 de calorii pe zi:',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunCrestere1.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Va recomandam un smoothie hranitor de fructe. Se adauga 100g fructe de padure, 1 banana si 400 ml de lapte.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzCrestere1.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de paste  cu sos de rosii si piept de pui. Paste(120g), Sos de rosii(150g) si piept de pui (200g). Adaugati sare si piper dupa gust.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaCrestere1.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de iaurt grecesc picant(120g). Adaugati sos picant in iaurtul grecesc si serviti cu morcovi.'),
              ]

          ),

        ),


      );
    }
    else if(id == 8){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a putea creste in masa musculara va recomandam urmatorul meniu bazate pe 3200 de calorii pe zi:',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunCrestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Pentru micul dejun va recomandam 5 oua fierte.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzMentinere1Crestere2.jpg',
                  width:450,
                  height: 200,
                ),
                Text('O portie de piept de pui la tigaie (400g). Se amesteca pieptul de pui cu suc de lamaie, ulei si sare si se prajeste la tigaie fara ulei.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzSlabit1.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Un bol de supa de rosii(500ml). Se pot adauga si crutoane.'),
              ]

          ),

        ),


      );
    }
    else if(id == 9){
      return Scaffold(
        appBar: AppBar(
          title: Text('Nutritie recomandata:'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  //              padding: const EdgeInsets.fromLTRB(0, 20, 330, 10),
                  child: Text('Pentru a putea creste in masa musculara va recomandam urmatorul meniu bazate pe 3000 de calorii pe zi:',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                ),
                Text(' '),
                Text('Mic dejun', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/micdejunCrestere3.jpeg',
                  width:450,
                  height: 200,
                ),
                Text('2 portocale.'),
                Text('Pranz', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/PranzCrestere3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Pui oriental la tigaie. Se adauga 400g de piept de pui, 2 catei de usturoi, ceapa verde (1 legatura), un ardei rosu. Sos de soia si sare dupa gust.'),
                Text(' '),
                Text('Cina', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/CinaCrestere3.jpg',
                  width:450,
                  height: 200,
                ),
                Text('Salata de ton cu castraveti si rosii. 330g ton, 400g castraveti, 70g salata, 500g rosii.'),
              ]

          ),

        ),


      );
    }
  }
}

