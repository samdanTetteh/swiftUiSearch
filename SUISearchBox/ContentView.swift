//
//  ContentView.swift
//  SUISearchBox
//
//  Created by Samuel Daniel on 24/12/2019.
//  Copyright © 2019 IJIKOD. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm : String = ""
    
    
    let searchContent = ["google", "twitter", "snapchat", "whatsapp", "instagram", "facebook", "tesla", "microsoft"]
    
    
    var body: some View {
        NavigationView{
            List{
             
                SearchBar(text: $searchTerm)
                ForEach (self.searchContent.filter{
                    self.searchTerm.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchTerm)
                }, id: \.self) { name in
                    Text(name)
                }
            }.navigationBarTitle(Text("Search Bar"))
        }
    }
    
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
