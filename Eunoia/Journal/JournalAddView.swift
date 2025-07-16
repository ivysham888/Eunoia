//
//  JournalAddView.swift
//  Eunoia
//
//  Created by Ivy Sham on 16/7/2025.
//

import SwiftUI

struct JournalAddView: View {
    var body: some View {
            
            VStack {
                HStack {
                    Text("New Entry")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.brown1)
                    
                    Spacer()
                    
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { })
                        .accentColor(.bluegreen1)
                    
                    
                }
                .padding()
                
                TextField("How are you feeling?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, axis: .vertical)
                    .multilineTextAlignment(.leading)
                    .lineLimit(5...10)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding(.leading, 15)
                    .padding(.trailing,15)
                
                Button {
                    
                } label: {
                    Text("Save")
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .foregroundStyle(Color.white)
                        .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))

                    
                }
                    

            }
            
            
    }
}

#Preview {
    JournalAddView()
}
