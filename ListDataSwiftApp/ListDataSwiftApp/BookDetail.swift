//
//  BookDetail.swift
//  ListDataSwiftApp
//
//  Created by mac on 2020/12/22.
//  Copyright © 2020 mac. All rights reserved.
//
import SwiftUI

struct BookDetail: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            CircleImage(image: book.image)
                .offset(y: -50)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text(book.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(book.description)
                        .font(.subheadline)
                    Spacer()
                    Text(book.author)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(book.name), displayMode: .inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: bookData[0])
    }
}
