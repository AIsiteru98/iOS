//
//  ContentView.swift
//  hw5
//
//  Created by 이재용 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var searchWord : String = ""
    var body: some View {
        VStack {
            headerView()
                .padding(.horizontal)
            
            Rectangle()
                .cornerRadius(15)
                .padding()
                .foregroundStyle(.orange)
                .frame(width: UIScreen.main.bounds.width, height: 100)
            
                .overlay( Text("집콕러세요? "))
            
            
            HStack(spacing: -25) {
                uigenerator(title: "알뜰배달", color: .red, width: 150, height: 150)
                uigenerator(title: "배달", color: .yellow, width: 150, height: 150)
                uigenerator(title: "배민스토어", color: .green, width: 150, height: 150)
            }
            .padding(.horizontal)
            
            
            ZStack{
                VStack{
                    Text ("대용량 특가")
                        .font(.system(size: 25))
                    HStack{
                        uigenerator(title: "인기상품", color: .purple, width: 70, height: 70)
                        uigenerator(title: "신상품", color: .purple, width: 70, height: 70)
                        uigenerator(title: "특가", color: .purple, width: 70, height: 70)
                        uigenerator(title: "쌀-잡곡", color: .purple, width: 70, height: 70)
                        uigenerator(title: "화장지", color: .purple, width: 70, height: 70)
                    }
                    HStack{
                        uigenerator(title: "생수", color: .purple, width: 70, height: 70)
                        uigenerator(title: "밥", color: .purple, width: 70, height: 70)
                        uigenerator(title: "통조림", color: .purple, width: 70, height: 70)
                        uigenerator(title: "즉석식품", color: .purple, width: 70, height: 70)
                        uigenerator(title: "건강식품", color: .purple, width: 70, height: 70)
                    }
                }
            }
            .background(
                Rectangle()
                    .cornerRadius(15)
                    .foregroundStyle(.cyan)
                    .padding(.horizontal)
                    
            )
            .padding(.horizontal)
            .frame(width: UIScreen.main.bounds.width)
            .padding(.horizontal)
           
            
            uigenerator(title: "신전떡볶이 특급 할인", color: .accentColor, width: UIScreen.main.bounds.width, height: 150)
            
            
            
        }
        .ignoresSafeArea()
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    @ViewBuilder
    private func uigenerator(title : String, color : Color, width: CGFloat, height: CGFloat) -> some View {
        Rectangle()
            .cornerRadius(15)
            .padding()
            .foregroundStyle(color)
            .frame(width: width, height: height)
            .overlay( Text(title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            )
    }
    @ViewBuilder
    private func headerView() -> some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height:  200)
                .foregroundColor(.mint)
                .cornerRadius(15)
            VStack{
                HStack {
                    Text("우리집")
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "square.grid.2x2")
                        .foregroundStyle(.white)
                    Image(systemName: "bell")
                        .foregroundStyle(.white)
                    Image(systemName: "cart")
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.mint)
                    TextField("찾는 맛집 이름이 뭐에요", text: $searchWord)
                }
                .padding()
                    .background(
                        Rectangle()
                            .foregroundStyle(.white))
                    .padding(.horizontal)
            }
            .offset(y: 30)
        }
        
    }
}

#Preview {
    ContentView()
}
