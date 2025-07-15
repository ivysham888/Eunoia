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
            ScrollView(.vertical){
                VStack{
                    Text("About us")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.top)
                                      Image("Kiwi")
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .frame(width: 131.0, height: 131.0)
                                           .clipShape(Circle())
                                           .padding(.vertical, 5) // Add padding between elements

                                       Text("Anushka")
                                           .font(.body)
                                           .foregroundColor(Color("brown1"))
                                           .padding(.bottom, 5)

                                       Image("Oranges")
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .frame(width: 131.0, height: 131.0)
                                           .clipShape(Circle())
                                           .padding(.vertical, 5)

                                       Text("Ivy")
                                           .font(.body)
                                           .foregroundColor(Color("brown1"))
                                           .padding(.bottom, 5)

                                       Image("Lemons")
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .frame(width: 131.0, height: 131.0)
                                           .clipShape(Circle())
                                           .padding(.vertical, 5)

                                       Text("Nora")
                                           .font(.body)
                                           .foregroundColor(Color("brown1"))
                                           .padding(.bottom, 5)

                    
                    Text("WE ARE EUNOIA")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 30.0)
                    
                    Text("The story behind our name:")
                        .font(.title)
                        .foregroundColor(Color("brown1"))
                        .padding(.bottom, 10.0)
                    Text("Eunoia is a Greek word meaning beautiful thinking or well-mind. We want our users to have a well mind while and after using our app.")
                        .foregroundColor(Color("brown1"))
                        .padding(.horizontal, 19.0)
                    
                    Image("sunCloud")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity) // Make image fill available width
                        .padding(.top, 20) // Padding above the image
                        .padding(.bottom, 50)
                    
                    Text("Body and mind, connected. A healthier you, inside and out.")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.bottom, 10.0)
                    
                    Text("Your journey to well-being starts here. Understand that a healthier body often leads to a clearer mind. Discover the powerful connection between your physical actions and your mental peace.")
                        .foregroundColor(Color("brown1"))
                        .padding(.horizontal, 19.0)
                    
                }//vstack
                .padding(.horizontal)
            }//scrollview
        }//zstack
        }//body
    }//struct


#Preview {
    AboutPage()
}
