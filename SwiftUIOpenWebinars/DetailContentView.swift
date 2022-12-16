//
//  DetailContentView.swift
//  SwiftUIOpenWebinars
//
//  Created by Gustavo Lizárraga on 15/12/22.
//

import SwiftUI

struct DetailContentView: View {
    let nombre: String
    
    var body: some View {
        Text("Hola \(nombre)")
    }
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContentView(nombre: "Nombre")
    }
}
