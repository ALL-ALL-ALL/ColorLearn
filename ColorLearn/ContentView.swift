//
//  ContentView.swift
//  ColorLearn
//
//  Created by  Ixart on 12/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var textColor = Color.blue
    
    var body: some View {
        HStack {
            Image(systemName: "pencil.tip")
                .imageScale(.large)
                .foregroundStyle(.black)
            
            Text("learning")
                .font(.largeTitle)
                
            Text("swiftui ")
                .font(.largeTitle)
            
                .foregroundColor(textColor) // Lier la couleur du texte à la variable d'état

        } // HSTACK
        
        .padding()
        
        
        VStack{
            
            Button("change color") {
                
                textColor = (textColor == .blue) ? .red : (textColor == .red) ? .purple : (textColor == .purple) ? .green : (textColor == .green) ? .cyan : .blue



                
                } // boutton

            } // VSTACK
            .font(.largeTitle)
            .background(Color.gray) // Couleur de fond du bouton
            .foregroundStyle(.white)
            .padding(.top, 100)


        }
        
        
        
        
        
    } // BODY
// STRUCT

#Preview {
    ContentView()
}
