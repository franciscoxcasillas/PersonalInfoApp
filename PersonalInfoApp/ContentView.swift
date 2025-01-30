//
//  ContentView.swift
//  PersonalInfoApp
//
//  Created by Francisco Jean on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
                .padding(.bottom, 1)
            ProfileImageView()
        }
    }
}

struct TitleView: View {
    var body: some View {
        Text("Fank Sinatra")
            .font(.custom("Caveat", size: 31))
            .foregroundColor(.red)
        
    }
}

struct ProfileImageView: View {
    var body: some View {
        Image("frank")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .clipShape(Circle())
            .shadow(radius: 15)
            .overlay(Circle().stroke(Color.red, lineWidth: 2))
    }
}

#Preview {
    ContentView()
}
