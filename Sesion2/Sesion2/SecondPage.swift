//
//  SecondPage.swift
//  Sesion2
//
//  Created by alumno on 29/9/23.
//

import SwiftUI

struct SecondPage: View {
    var red_color = Color(.red)
    var body: some View {
        VStack{
            TabView{
                Text("Tab Content 1")
                    .tabItem {
                        VStack{
                            Image(systemName: "globe")
                                .imageScale(.large)
                            Text("Tab Menu 1")
                        }
                        .foregroundColor(.red)
                    }.tag(1)
                Text("Tab Content 2").tabItem {
                    VStack{
                        Image(systemName: "globe")
                            .imageScale(.large)
                        Text("Tab Menu 2")
                            .padding(.top)
                    }
                }.tag(2)
                .toolbarBackground(
                    .red,
                    for: .tabBar
                )
                
            }
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
