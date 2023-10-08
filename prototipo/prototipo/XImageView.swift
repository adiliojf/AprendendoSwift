//
//  XImageView.swift
//  prototipo
//
//  Created by User on 15/09/23.
//

import Foundation
import SwiftUI

struct XImageView: View{
    
    let imageName: String
    
    init(_ imageName: String){
        self.imageName = imageName
    }
    
    var body: some View{
        ZStack{
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            Image("x")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
        }
    }
}

struct XImageView_Previews: PreviewProvider{
    static var previews: some View{
        XImageView("ferb")
    }
}
