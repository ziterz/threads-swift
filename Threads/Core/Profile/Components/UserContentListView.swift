//
//  UserContentListView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct UserContentListView: View {
  @State private var selectedFilter: ProfileThreadFilter = .threads
  @Namespace var animation
  
  private var filterBarWidth: CGFloat {
    let count = CGFloat(ProfileThreadFilter.allCases.count)
    return UIScreen.main.bounds.width / count - 16
  }
  
  var body: some View {
    VStack {
      HStack {
        ForEach(ProfileThreadFilter.allCases) { filter in
          VStack {
            Text(filter.title)
              .font(.subheadline)
              .fontWeight(selectedFilter == filter ? .semibold : .regular)
            
            if selectedFilter == filter {
              Rectangle()
                .foregroundStyle(Color(.black))
                .frame(width: filterBarWidth, height: 1)
                .matchedGeometryEffect(id: "item", in: animation)
            } else {
              Rectangle()
                .foregroundStyle(Color(.clear))
                .frame(width: filterBarWidth, height: 1)
            }
          }
          .onTapGesture {
            withAnimation(.spring()) {
              selectedFilter = filter
            }
          }
        }
      }
      
      LazyVStack {
        ForEach(0...10, id: \.self) { thread in
          ThreadCell()
        }
      }
    }
    .padding(.vertical, 8)
  }
}

#Preview {
  UserContentListView()
}
