//
//  PhysicalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData

struct PhysicalPage: View {
    
    @State private var showNewTask = false
    @Query var workouts: [Workout]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            
            VStack {
            Text("Physical Health")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color("brown1"))
                    .padding(.top)
                        
                        
                Text("What is your goal for today?")
                    .font(.title2)
                    .fontWeight(.thin)
                    .foregroundColor(Color("green1"))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 12.0)
                
                Text("Select one:")
                
                HStack {
                    NavigationLink(destination: AboutPage()) {
                        Text("Cardio")
                            .frame(width: 90, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
                    }//nav link
                    
                    NavigationLink(destination: AboutPage()) {
                        Text("Weights")
                            .frame(width: 90, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2
                                .clipShape(.rect(cornerRadius: 15)))
                    }//nav link
                    
                    NavigationLink(destination: AboutPage()) {
                        Text("Yoga")
                            .frame(width: 90, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2
                                .clipShape(.rect(cornerRadius: 15)))
                    }//nav link
                }
                
                HStack{
                    Text("Track your exercise")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    Spacer()
                    
                    Button {
                          showNewTask = true
                    } label: {
                        Text("+")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color("brown1"))
                    }
                    
                }//hstack
                .padding()
                Spacer()
                
                List {
                    ForEach (workouts) {workouts in
                        Text(workouts.title)
                    }
                }//list
                .background(Color.tanbackground)
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                
            }//vstack
            if showNewTask{
                NewAddWorkoutView(workout: Workout(title: "", isImportant: false))
            }
        }//zstack

    }//body
}//struct

#Preview {
    PhysicalPage()
}
