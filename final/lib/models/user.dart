class User{
  static const String Slabit = 'slabit';
  static const String Mentinere = 'mentinere';
  static const String CrestereMasa = 'cresteremasamusculara';

  String inaltime = '';
  String greutate = '';
  String varsta = '';
  Map<String,bool>  obiectiv = {
    Slabit: false,
    Mentinere: false,
    CrestereMasa: false
  };
  save(){
    print('Operatiunea a fost efectuata cu succes');
  }

}