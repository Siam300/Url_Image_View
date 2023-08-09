//
//  SubmitUrlImageView.swift
//  UrlImage
//
//  Created by Auto on 8/8/23.
//

import SwiftUI

struct SubmitUrlImageView: View {
    @State var imageUrl: String = "https://picsum.photos/id/237/200/300"
    @State var showImage: Bool = false
    //@State var imageUrl: String = ""
    var body: some View {
        
        if !showImage {
            Text("Enter your Image Url Here!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Image(systemName: "link")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Enter Url...", text: $imageUrl)
            Button(action: {
                save()
            }, label: {
                Text("Submit")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
                    .background(Color.purple)
                    .cornerRadius(10)
            })
        } else {
            VStack {
                AsyncImage(url: URL(string: imageUrl))
                Spacer()
                Button(action: {
                    showImage.toggle()
                    imageUrl = ""
                }, label: {
                    Text("Add another Url")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .background(Color.purple)
                        .cornerRadius(10)
                })
            }
                
        }
    }
    func save(){
        showImage.toggle()
        
    }
    
}
    struct SubmitUrlImageView_Previews: PreviewProvider {
        static var previews: some View {
            UrlImageView()
        }
    }
