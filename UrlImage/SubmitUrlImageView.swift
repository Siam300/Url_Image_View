//
//  SubmitUrlImageView.swift
//  UrlImage
//
//  Created by Auto on 8/8/23.
//

import SwiftUI

struct SubmitUrlImageView: View {
    @State var textFieldUrl: String = ""
    @State var showImage: Bool = false
    @State var imageUrl: String = ""
    var body: some View {
        
        if textFieldUrl.isEmpty {
            Text("Enter your Image Url Here!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Image(systemName: "link")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Enter Url...", text: $textFieldUrl)
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
        }
        
        else{
            if imageUrl.count > 0 {
                let url = URL(string: imageUrl)
                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                Button(action: {
                    delete()
                    textFieldUrl = ""
                }, label: {
                    Text("Add another Url")
                })
            }
        }
    }
    func save(){
        //        imageUrl.append(path: textFieldUrl)
        //        showImage.toggle()
        imageUrl = textFieldUrl
    }
    func delete() {
        textFieldUrl = ""
        imageUrl = ""
    }
    
}
    struct SubmitUrlImageView_Previews: PreviewProvider {
        static var previews: some View {
            SubmitUrlImageView()
        }
    }
