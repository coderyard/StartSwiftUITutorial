//
//  SwiftUIView.swift
//  StartSwiftUI
//
//  Created by 김승우 on 2021/11/17.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        MyVStackView()
    }
}

struct MyVStackView: View{
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
        
    }
    
    
    
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
