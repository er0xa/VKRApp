//
//  ListView.swift
//  GameRevApp
//
//  Created by Сергей Ерофеев on 19.05.2024.
//

import SwiftUI

struct ListView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 25){
                //search
                HStack(spacing: 15){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 15,height: 15)
                    TextField("Search", text: $searchText)
                        .font(.system(size: 18, weight: .light))
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 16)
                .padding(.horizontal, 20)
                .background(Gradient(colors:[.white,.white,.gray]).opacity(0.6))
                .cornerRadius(10)
                
                //cards
                
                VStack(spacing:20){
                    CardItem()
                    CardItem()
                    CardItem()
                    CardItem()
                }
            }
        }
    }
}

struct CardItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            VStack(alignment: .leading){
                Text("TR")
                    .font(.system(size: 12, weight: .black))
                    .padding(.bottom, 5)
                Text("Araba")
                    .font(.system(size: 18, weight: .black))
                    .padding(.bottom, 1)
                Text ("Машина")
                    .font(.system(size: 18, weight: .light))
            }
            
            Divider()
            
            VStack(alignment: .leading){
                Text("Примечание")
                    .font(.system(size: 12, weight: .black))
                    .padding(.bottom, 2)
                    .foregroundColor(.gray)
                Text("Машина на арабском")
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading )
        .padding(20)
        .background(Color.gray)
        .cornerRadius(10)
            
    }
}

struct ListView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
