class User {
  String id;
  String nom;
  String prenom;
  String username;
  String password;
  String status;
  int age ;
  String tel;
  String email;
  String secteur;
  String acces ;

  User({this.nom="",this.prenom="",this.password="",this.id="",this.acces="",this.status="",this.username="",this.age=0,this.tel="",this.email="",this.secteur=""});


}

List<User> list_user = [
  new User(prenom: "moussa",nom: "Traore",tel: "50368054",secteur: "secteur4",email: "@gmail.com"),
  new User(prenom: "ali",nom: "coulibaly",tel: "60784950",secteur: "mine",email: "@gmail.com"),
  new User(prenom: "adama",nom: "maiga",tel: "50789632",secteur: "secteur27",email: "@gmail.com"),
  new User(prenom: "lamine",nom: "diarra",tel: "897254036",secteur: "secteur78",email: "@gmail.com"),
  new User(prenom: "dramane",nom: "diallo",tel: "60669840",secteur: "hydrolique",email: "@gmail.com"),
  new User(prenom: "bourama",nom: "togola",tel: "92354780",secteur: "informatique",email: "@gmail.com"),
];

