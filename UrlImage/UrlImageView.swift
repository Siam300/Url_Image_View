//
//  UrlImageView.swift
//  UrlImage
//
//  Created by Auto on 8/8/23.
//

import SwiftUI

struct UrlImageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    SubmitUrlImageView()
                }
            }
            .padding()
        .navigationTitle("Url Image")
        }
    }
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView()
    }
}

/*
 
 1. optional
 2. ui update on state variable change
 
 
 */
