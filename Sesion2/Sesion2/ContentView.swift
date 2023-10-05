//
//  ContentView.swift
//  Sesion2
//
//  Created by Abel on 29/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Box(content:"Hello World")
            Box(content:"Hola Mundo")
            Box(content:"Bonjour le monde")
            Text("\nLorem Ipsum de Prueba")
        }
        .foregroundColor(.black)
        .padding()
    }
}


//Creamos este struct para tener la Caja Negra con el Hello World Para que el main quede más limpio. Asi evitamos pegar todo el codigo varias veces.
struct Box:View{
    @State var visible:Bool = true //Si queremos controlar la visibilidad de algun elemento debemos usar el @State para modificar ese estado de Visible a NO_Visible.
    var content:String  //Es como los parametros que se le pasan a una funcion. Todas las variables sin inicializar antes del body se deben pasar al instanciar esta estructura BOX en el main
    var body: some View{
        ZStack {    //Hstack -> Horizontal content   ---    VStack -> Vertical content
            RoundedRectangle(cornerRadius: 15)
                .aspectRatio(3/2, contentMode: .fit)
            
            VStack{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                if visible{
                    Text(content)
                        .foregroundColor(.white)
                        .padding(.top)
                }
            }.onTapGesture {
                //Controlador para realizar acciones al pulsar sobre esa zona de la pantalla.
                //En este caso sobre el VStack de la imagen y el texto
                print("Hola Buenas")
            }
        }.onTapGesture {
            //Este Controlador es para el ZStack que es el cuadrado completo negro
            print("Seleccionando...")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
