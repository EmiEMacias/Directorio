import Map "mo:base/HashMap";
import Text "mo:base/Text";
actor {
  type Name = Text;
  type Phone = Text;
  type Email = Text;
  type Address = Text;

  type Entry = {
    name: Text;
    email: Text;
    phone: Phone;
    address: Text;
  };
  let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  public func insert(name : Name, entry : Entry): async () {
    phonebook.put(name, entry);
  };
 
}