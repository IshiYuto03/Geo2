//
//  ContentView.swift
//  GeometryReader01
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI


struct ContentView: View {
    @State var text = "こんにちは！"
    var body: some View {
        VStack{
            Text(text)
                .padding()
            Button(action: {
                text = "おはようございます"
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        
        ZStack{
            GeometryReader{ geometry in
                Text(geometry.size.debugDescription)
                    .padding()
            }
           
        }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
