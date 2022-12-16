//
//  ContentView.swift
//  SwiftUIOpenWebinars
//
//  Created by Gustavo Lizárraga on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    let nombres = ["Gustavo", "Luisa", "Gonzalo", "Amalia", "Pedro", "Rocio", "Josue", "Andrea" , "Julio", "Leonel"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(nombres, id:\.self) { nombre in
                    ItemPersona(nombre: nombre)
                }
            }
            .navigationTitle("People List")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                    })
            )
        }
    }
}

struct ItemPersona: View {
    let nombre: String
    
    var body: some View {
        NavigationLink(destination: DetailContentView(nombre: nombre)) {
            HStack {
                VStack(alignment: .leading) {
                    Text(nombre)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Subtitulo para \(nombre)")
                }
                Spacer()
                Image(systemName: "heart").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
