//
//  ArrayScreen.swift
//  ColecoesComForeach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ErroCenario{
    let emoji: String
    let errorMessage: String
    let id = UUID()
}

struct ArrayScreen: View {
    let erroCenarios: [ErroCenario] = [
        ErroCenario(emoji: "🙈", errorMessage: "Erro: Váriavel não iniciada não foi inicializada. Tente iniciar com um valor."),
        ErroCenario(emoji: "😗", errorMessage: "Erro: O índice está fora dos limites da matriz. Provavelmente você contou até 11 em vez de 10."),
        ErroCenario(emoji: "🕹️", errorMessage: "Chaves não correspondentes. Lembre-se, abra chaves '{' precisa ter um fecha chaves '}' "),
        ErroCenario(emoji: "😴", errorMessage: "Esqueceu de fechar as aspas. Lembre-se de fechar as aspas para não ficar confuso."),
        ErroCenario(emoji: "🚫", errorMessage: "Erro: Divisão por zero. Não é possível dividir nada por zero, mesmo na programação."),
        ErroCenario(emoji: "🌀", errorMessage: "Se você está preso em um loop que nunca termina, seus personagens virtuais podem ficar tontos."),
        
    ]
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(erroCenarios, id: \.id){ erroCenario in
                    Text(erroCenario.emoji)
                        .font(.system(size:50))
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .clipShape(Circle())
                    Text(erroCenario.errorMessage)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
        .padding(.init(top: 5, leading: 16, bottom: 5, trailing:16))
        }
        
    }
}

struct ArrayScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArrayScreen()
    }
}
