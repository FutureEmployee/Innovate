//
//  ContentView.swift
//  Innovate
//
//  Created by Marceles Moore on 4/5/23.
//

import SwiftUI

struct ContentView: View {
    
    let items = Array(1...13).map({ "image\($0)" })
    
    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack{
                Text("Viz Media").fontWeight(.bold).font(.title).foregroundColor(.white)
                Button(action: {
                }) {
                    Image(systemName: "magnifyingglass").foregroundColor(.white).padding(10)
                }.background(Color.black)
                    .clipShape(Circle())
                
            }
            
            NavigationView {
                ScrollView(.horizontal) {
                    LazyVGrid(columns: layout, content: {
                        ForEach(items, id: \.self) { item in
                            VStack {
                                Button {
                                    
                                } label: {
                                    Image(item)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .border(Color.secondary)
                                        .cornerRadius(12)
                                }
                                Spacer()
                                .foregroundColor(Color.blue)
                                .padding()
                            }
                        }
                    })
                }
              
                
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDisplayName("light")
            ContentView()
                .previewDisplayName("dark")
                .preferredColorScheme(.dark)
        }
    }
    
    
    
}
