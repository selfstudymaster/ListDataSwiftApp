//
//  BookRow.swift
//  ListDataSwiftApp
//
//  Created by mac on 2020/12/22.
//  Copyright © 2020 mac. All rights reserved.
//
import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            book.image
            .resizable()
            .frame(width: 50, height: 50)
            Text(book.name)
            
            Spacer()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookRow(book: bookData[0])
            BookRow(book: bookData[1])
            BookRow(book: bookData[2])
        }
        .previewLayout(.fixed(width: 300, height: 80))
    }
}
