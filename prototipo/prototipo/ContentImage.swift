//
//  ContentImage.swift
//  prototipo
//
//  Created by User on 15/09/23.
//

import Foundation
import SwiftUI

struct ContentImage: View{
    
    var body: some View{
        ZStack{
            Image("candace")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            XImageView("phineas copy")
            XImageView("ferb copy")
        }
    }
}

struct ContentImage_Previews: PreviewProvider{
    static var previews: some View{
        ContentImage()
    }
}
