//
//  CircleImage.swift
//  ListDataSwiftApp
//
//  Created by mac on 2020/12/22.
//  Copyright © 2020 mac. All rights reserved.
//
import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius:10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("kisokaraflutter"))
    }
}
