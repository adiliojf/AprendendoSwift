//
//  GoTContentImage.swift
//  prototipo
//
//  Created by User on 15/09/23.
//

import Foundation
import SwiftUI

struct GoTContentImage: View{
    
    var body: some View{
        HStack{
            Image("house stark")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            VStack{
                GoTImageView("house lannister")
                GoTImageView("house targaryen")
            }
            
        }
    }
}

struct GotContentImage_Previews: PreviewProvider{
    static var previews: some View{
        GoTContentImage()
    }
}

