//
//  ReferenceView.swift
//  Eunoia
//
//  Created by Ivy Sham on 16/7/2025.
//

import SwiftUI

struct ReferenceView: View {
    @Namespace private var namespace
    @State private var show = false
    
    var thumbnail: ThumbnailView
    var expanded: ExpandedView
    
    var body: some View {
        ZStack {
            if !show {
                thumbnailView()
            } else {
                expandedView()
            }
        }
        .onTapGesture {
            if !show {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } else {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        show.toggle()
                    }
                }
            }
        }
        
    
    @ViewBuilder
    private func thumbnailView() -> some View {
        ZStack {
            thumbnail
                .matchedGeometryEffect(id: "view", in: namespace)
        }
        .background(
            Color.blue1
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        }
        
    }
    
    @ViewBuilder
    private func expandedView() -> some View {
        ZStack {
            expanded
                .matchedGeometryEffect(id: "view", in: namespace)
                .background(
                    Color.blue1
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                }
            
//            Button (action: {
//                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
//                    show.toggle()
//                }
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundStyle(.white)
//            })
//            .padding()
////            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
//            .matchedGeometryEffect(id: "mask", in: namespace)
        }
    }
    
}
//
//#Preview {
//    ReferenceView()
//}
