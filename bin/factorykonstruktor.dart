class Database{
  Database(){
    print('create new database');
      }
      static Database db = Database();
      factory Database.get(){
        return db;
      }
}
void main(){
  var db1 = Database();
  var db2 = Database();
  print(db1 == db2);
}