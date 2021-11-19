//
//  MyTextView.swift
//  StartSwiftUI
//
//  Created by 김승우 on 2021/11/17.
//

import SwiftUI

struct MyTextView: View{
    @State
    private var index: Int = 0
    
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
        
    }
    
    // 배경색 배열 준비
    private let backGroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size:30))
                .fontWeight(.bold)
            // frame 안넣으면 옆에가 뜸
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("활성화 상태 : \(String(isActivated))")
                .font(.system(size:30))
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .fontWeight(.bold)
            // frame 안넣으면 옆에가 뜸
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
                .background(Color.black)
            Spacer()
            
        }.background(backGroundColors[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture{
        
                print("배경 아이템이 클릭되었다.")
                if(self.index == self.backGroundColors.count - 1){
                    self.index = 0
                }
                else
                {
                    self.index += 1
                }
            }
    }
}

struct MyTextView_Preview: PreviewProvider {
    static var previews: some View{
        MyTextView()
    }
}
