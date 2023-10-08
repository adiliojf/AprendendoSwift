//
//  GoTXImageView.swift
//  prototipo
//
//  Created by User on 15/09/23.
//

import Foundation
import SwiftUI

struct GoTImageView: View{
    
    let imageName: String
    
    init(_ imageName: String) {
        self.imageName = imageName
    }
    
    var body: some View{
        ZStack{
            VStack{
                Text("OBJETIVO PRICIPAL")
                    .font(.system(size: 44))
                    .foregroundColor(.white)
                    .bold()
            }
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                
        }
    }
}

struct XImageView_Previews: PreviewProvider{
    static var previews: some View{
        XImageView("h")
    }
}

