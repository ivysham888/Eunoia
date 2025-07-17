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
                    Text("About Us")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.top)
                    
                    Text("Take care of your body. It's the only place you have to live. - Jim Rohn")
                        .font(.title2)
                        .fontWeight(.thin)
                        .foregroundColor(Color("green1"))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                                      Image("Kiwi")
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .foregroundColor(Color("AccentColor"))
                                           .frame(width: 131.0, height: 131.0)
                                           .clipShape(Circle())
                                           .padding(.vertical, 5) // Add padding between elements

                                       Text("Anushka")
                                           .font(.body)
                                           .fontWeight(.black)
                                           .foregroundColor(Color("brown1"))
                                           .padding(.bottom, 5)
                    Text("I'm passionate about mental health and it's growing importance among our society. I hope this app serves as a support for people experiencing high stress and helps them rewind after a long day.")
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
                                           .fontWeight(.black)
                                           .foregroundColor(Color("brown1"))
                                           .padding(.bottom, 5)
                    Text("I'm passionate about all things health and how it impacts us. Through this app, I hope you find the beauty and importance of health!")
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
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.bottom, 5)
                    Text("I am passionate about physical health and nature's joy, I invite you to explore this path to well-being through this app!")
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
                    Text("Eunoia is a Greek word meaning beautiful thinking or well-mind. We want our users to have a well mind and body while and after using our app.")
                        .foregroundColor(Color("brown1"))
                        //.padding(.horizontal, 19.0)
                    
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
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                    
                    Text("Your journey to well-being starts here. Understand that a healthier body often leads to a clearer mind. Discover the powerful connection between your physical actions and your mental peace.")
                        .foregroundColor(Color("brown1"))
                        //.padding(.horizontal, 19.0)
                    
                    Image("leaf")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity) // Make image fill available width
                        .padding(.top, 20) // Padding above the image
                        .padding(.bottom, 20)
                    
                    
                    Link("Image Source", destination: URL(string: "https://www.pexels.com/")!)
                        .foregroundColor(Color("brown1"))
                        .fontWeight(.bold)
                        .padding(.top)
                
                    
                }//vstack
                .padding(.horizontal, 19.0)
            }//scrollview
        }//zstack
        }//body
    }//struct


#Preview {
    AboutPage()
}
