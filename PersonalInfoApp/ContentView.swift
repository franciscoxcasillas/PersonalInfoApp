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
            InfoSectionView()
            RemoteImageView()
            ButtonView()
        }
    }
}

struct TitleView: View {
    var body: some View {
        Text("Fank Sinatra")
            .font(.custom("Caveat", size: 31))
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
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}

struct InfoSectionView: View {
    var body: some View {
        VStack {
            Text("Frank Sinatra was super cool. He made music and was friends with powerful people.")
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding()
            HStack {
                Image(systemName: "music.microphone")
                    .foregroundColor(.purple)
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Image(systemName: "medal.fill")
                    .foregroundColor(.blue)
            }
            .padding()
            
        }
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("Button tapped!")
        }) {
            Label("Tap Me!", systemImage: "button.programmable")
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct RemoteImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Frank_Sinatra_%281957_Pal_Joey_publicity_photo%29.jpg/194px-Frank_Sinatra_%281957_Pal_Joey_publicity_photo%29.jpg"))
    }
}

#Preview {
    ContentView()
}
