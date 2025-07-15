//
//  PhysicalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI

struct PhysicalPage: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
        }

    }
}

#Preview {
    PhysicalPage()
}
