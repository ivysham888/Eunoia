//
//  AboutPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI

struct AboutPage: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            VStack{
                Text("About us")
                    .font(.title)
                Image("Kiwi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 131.0, height: 131.0) // IMPORTANT: Make width and height equal
                    .clipShape(Circle()) // Apply the circular mask
                    // .cornerRadius(100.0) is no longer needed with clipShape(Circle())
                Text("Anushka")
                    .font(.body)
                Image("Oranges")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 131.0, height: 131.0) // IMPORTANT: Make width and height equal
                    .clipShape(Circle()) // Apply the circular mask
                Text("Ivy")
                    .font(.body)
                Image("Lemons")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 131.0, height: 131.0) // IMPORTANT: Make width and height equal
                    .clipShape(Circle()) // Apply the circular mask
                    // .cornerRadius(100.0) is no longer needed with clipShape(Circle())
                Text("Nora")
                    .font(.body)
                
                Text("WE ARE EUNOIA")
                    .font(.title)
                    .fontWeight(.black)
            }//vstack
        }//zstack
        }//body
    }//struct


#Preview {
    AboutPage()
}
