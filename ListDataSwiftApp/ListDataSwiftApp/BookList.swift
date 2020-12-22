//
//  BookList.swift
//  ListDataSwiftApp
//
//  Created by mac on 2020/12/22.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct BookList: View {
    var body: some View {
        
        NavigationView {
            List(bookData) { book in
                
                NavigationLink(destination: BookDetail(book: book)) {
                    BookRow(book: book)
                }
            }
            .navigationBarTitle(Text("読書中の技術書"))
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
