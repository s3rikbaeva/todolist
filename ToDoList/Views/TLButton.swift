//
//  TLButton.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 22.05.2024.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value", 
             background: .blue){
        //Action
    }
}


//struct TLButton_Previews: PreviewProvider {
//    static var preview: some View{
//        TLButton(title: "Value",
//                 background: .pink){
//            //Action
//        }
//    }
//}
