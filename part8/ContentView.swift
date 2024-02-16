//
//  ContentView.swift
//  part8
//
//  Created by 木村朋広 on 2024/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var isShownContentView2 = false

    var body: some View {
        VStack {
            HStack {
                Button("-"){
                    count -= 1
                }
                Text("Counter: \(count)")
                Button("+"){
                    //count = count + 1
                    count += 1
                } // Buttonここまで
            } //HStackここまで
            .padding()
            Button("ContentView2へ"){
                isShownContentView2 = true
            } // Button ここまで
        } //VStack ここまで
        .font(.title)
        .sheet(isPresented: $isShownContentView2){
            ContentView2(contentView2Count: $count)
            }
    } //body ここまで
} // ContentView ここまで

struct ContentView2: View {
    @Binding var contentView2Count: Int
    var body: some View {
        Button("+10"){
            contentView2Count += 10

        }
        .font(.title)
    }
}




#Preview {
    ContentView()
}
