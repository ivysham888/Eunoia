//
//  JournalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI

struct JournalPage: View {
//    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.backgroundColor = UIColor.tanbackground
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.brown1]
//
//        UINavigationBar.appearance().standardAppearance = appearance
//    }

    var body: some View {
        NavigationStack {
            ZStack {
                
                // background
                Rectangle()
                    .fill(Color.tanbackground)
                    .ignoresSafeArea()
            
                
                    
                    VStack {
                        
                        
                        // HEADING + PLUS BUTTON
                        HStack {
                            Text("Journal")
                                .fontWeight(.bold)
                                .foregroundStyle(Color.brown1)
                                .font(.system(size: 40))
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("+")
                                    .fontWeight(.bold)
                                    .font(.system(size: 40))
                                    .foregroundStyle(Color.brown2)
                                    .padding(.trailing, 5)
                            }
                            
                        }
                        .padding()
                        
                        ScrollView {
                            
                            
                            
                            
                            
                        }

                        
                    }
                
            }
//            .navigationTitle("Journal")
        }

    }
}

#Preview {
    JournalPage()
}
