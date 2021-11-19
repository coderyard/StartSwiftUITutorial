//
//  ContentView.swift
//  StartSwiftUI
//
//  Created by 김승우 on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isActivated: Bool = false
    // 값에 변화가 있으면 화면 처리를 다시 해줌
    // @State 값의 변화를 감지
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .background(isActivated ? Color.yellow : Color.black)
                .padding(isActivated ? 50.0 : 10.0)
                .onTapGesture{
                    print("HStack is clicked..")
                    // toggle() : true -> false
                    // false -> true
                    
                    // with animation
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }// add tap gesture
                // navigation button(link)
                NavigationLink(destination: MyTextView(isActivated:$isActivated)){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size:40))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .padding(20)
                        .cornerRadius(30)
                    
                }.padding(.top, 50)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
