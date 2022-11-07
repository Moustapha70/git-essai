class Note{
  String titre;
  String details;
  Note(this.titre,this.details);

  factory Note.fromMap(Map<String,dynamic>maps)=>Note(
    maps["titre"];
    maps["details"];
  );

  Map<String,dynamic> toMap(){
    return{
      "titre": titre,
      "details": details,
    };
  }
}