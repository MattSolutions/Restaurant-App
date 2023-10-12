//
//  MenuView.swift
//  Restaurant
//
//  Created by Matias Battiti on 05/10/2023.
//

import SwiftUI

struct MenuView: View {
    
   @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text("Menu")
                .font(.largeTitle)
                .bold()
            
            List(menuItems) { item in
                
                MenuListRow(item: item)

            }
            .listStyle(.plain)
            .cornerRadius(10)
            .padding(-10.0)
            .onAppear {
               // Call Data Service
              menuItems = dataService.getData()
            }
        }
        .padding(.horizontal)


    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
