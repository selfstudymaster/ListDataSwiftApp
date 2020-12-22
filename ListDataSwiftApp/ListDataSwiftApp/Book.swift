//
//  Book.swift
//  ListDataSwiftApp
//
//  Created by mac on 2020/12/22.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import SwiftUI

struct Book: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var status: String
    var author: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        Text("My Flutter & Swift BookList.")
    }
}
