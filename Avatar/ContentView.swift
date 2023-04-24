//
//  ContentView.swift
//  Avatar
//
//  Created by Juan Camilo Marín Ochoa on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RandomAvatar(width: 180, height: 180)
            
            Text("El número total de avatares únicos que pueden ser generados es de 48^6 = 12.230.590.464")
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, 30)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
