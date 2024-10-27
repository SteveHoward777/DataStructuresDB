import SwiftUI
import SQLite3
import Foundation

var balance = 12000
//let dbPath = Bundle.main.path(forResource: "NewDataBase", ofType: "sqlite")
var db: OpaquePointer?
let fileURL = try! FileManager.default
    .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    .appendingPathComponent("NewDataBase.sqlite")


struct ContentView: View {
    @State private var result: String = ""
    var LibraryInstance = Library()
    var PersonInstance = Person(name: "John", age: "Howard")
    
    func SQLTest(){
        if sqlite3_open(fileURL.path,&db) != SQLITE_OK{
        print("Error connect")
    } else{
        print("DB conected")
        let selectQuery = "select * from Users"
        
        
    }
    }
    func printStuff(){
        let calculation = balance - price
        print(calculation)
        let x = InternalClass()
        print(x)
        result = "Balance - Price = \(calculation)"
        
            }
    
//    func PrintDatabase(){
//        print(dbPath)
//    }
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text(result)
            
                .onAppear{
                    printStuff()
                    //LibraryInstance.checkAvailability(amount: 7)
                    LibraryInstance.lendbook()
                    PersonInstance.printName()
//                    PrintDatabase()
                    SQLTest()
                    
                    
                    
                }

        }
        
    }
    
    
}
class Person{
   public var name : String
    internal var age : String
    init(name: String, age: String) {
        self.name = name
        self.age = age
    }
    
    func printName(){
        print(name, age)
    }
    
}

class Library {
    func lendbook(){
        print("Lend book")
    }
    
    
    
     private func checkAvailability(amount: Int){
        if amount > 0  {
            print("You have books")
        } else{
            print("You don`t have books")
        }
        
        
    }
    
    
    
}



