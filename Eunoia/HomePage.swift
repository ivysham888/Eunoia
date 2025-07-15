//
//  HomePage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.tanbackground)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Eunoia")
                        .font(.system(size: 70))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.brown1)
                    
                    Text("Health for all.")
                        .italic()
                        .font(.system(size:25))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.brown2)
                    
                    
                    NavigationLink(destination: AboutPage()) {
                        Text("About Eunoia")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))

                    }
                    .padding(.top, 20)
                    
                    NavigationLink(destination: PhysicalPage()) {
                        Text("Physical Health")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))

                    }
                    
                    
                    NavigationLink(destination: MentalPage()) {
                        Text("Mental Health")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))

                    }
                    
                    
                    NavigationLink(destination: JournalPage()) {
                        Text("Journal Your Day")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))

                    }
                    

                    
                    
                }
            }

        }

    }
        
}



#Preview {
    HomePage()
}
