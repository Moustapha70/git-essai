class DbOffre{
  String one;
  String two;
  String three;
  String four;
  DbOffre({this.one,this.two,this.three,this.four});
}

List<DbOffre> list_offre = [
  new DbOffre(one: "fourniture de pick up",two: "fourniture de pieces",three: "fourniture de 4*4",four: "fourniture d'outil"),
  new DbOffre(one: "fourniture de 4*4",two: "fourniture de pieces",three: "fourniture de pick up",four: "fourniture d'outil"),
  new DbOffre(one: "fourniture de pick up",two: "fourniture de pieces",three: "fourniture de 4*4",four: "fourniture d'outil"),
  new DbOffre(one: "fourniture de pick up",two: "fourniture de pieces",three: "fourniture de 4*4",four: "fourniture d'outil"),
];