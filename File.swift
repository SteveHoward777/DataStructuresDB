
import SwiftUI
internal var price = 10000
let class2 = InternalClass()
struct ContentView1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
// Модуль A (Библиотека)


open class InternalClass{
    
}
    // Внутреннее использование только внутри библиотеки
