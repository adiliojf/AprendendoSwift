//
//  ContentView.swift
//  prototipo
//
//  Created by User on 12/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.pink
                .ignoresSafeArea()
            VStack(spacing: 35 ){
                Text("OBJETIVO PRINCIPAL")
                    .font(.system(size: 44))
                    .foregroundColor(.white)
                    .bold()
                HStack{
                    Image("candace")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                    VStack{
                        ZStack{
                            Image("phineas copy")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            Image("x copy")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                        ZStack{
                            Image("ferb copy")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            Image("x copy")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                    }
                }
                VStack{
                    Text("Desmascarar meus irmãos")
                        .font(.headline)
                        .foregroundColor(.white)
                        .bold()
                    
                    Button{
                        
                    }label: {
                        Text("Avançar")
                            .font(.headline)
                            .foregroundColor(.pink)
                            .bold()
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .background(Color.white)
                            .cornerRadius(50)
                    }
                        
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
