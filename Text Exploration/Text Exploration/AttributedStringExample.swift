//
//  AttributedStringExample.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-08.
//

import SwiftUI

struct AttributedStringExample: View {
    var attributeString1 : AttributedString{
        var myString = AttributedString("Attributed String")
        myString.foregroundColor = .orange
        myString.backgroundColor = .black
        myString.font = Font.largeTitle
        myString.kern = 5
        return myString
    }
    var attributeString2 : AttributedString{
        let coding = "Coding is Awesome! Let's code together"
        var myString = AttributedString()
        myString.font  = Font.largeTitle
        
        for(index, char) in coding.enumerated(){
            var letterString = AttributedString(String(char))
            let red = 0.3
            let green = 0.3
            let blue = Double(index % coding.count) / Double(coding.count)
            letterString.foregroundColor = Color(red: red, green: green, blue: blue)
            letterString.baselineOffset = Double(index)
            myString += letterString
        }
        return myString
        
    }
    var attributedString3 : AttributedString{
        let coding = "Coding is Awesome! Let's code together"
        var myString  = AttributedString()
        
        for(index,char) in coding.enumerated(){
            var letterString = AttributedString(String(char))
            let count = CGFloat(coding.count)
            let j = CGFloat(coding.count / 2 - index)
            letterString.baselineOffset = smileFace * j * j / count
            myString += letterString
            
        }
        
        return myString
    }
    var attributedString4 : AttributedString{
        let coding = "Coding is Awesome! Let's code together"
        var myString = AttributedString()
        let listOfWords = coding.split(separator: " ")
        for (i , word) in listOfWords.enumerated(){
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = 10*CGFloat (i % 2)
            myString += wordString
        }
        
        return myString
    }
    var attr5Demo: AttributedString {
        var myString = AttributedString("Underline Demo")
        myString.font = .title
        
        myString.underlineStyle = Text.LineStyle(pattern: .solid, color: .blue)
        
        return myString
    }
    func stepRainbowText(_ text:String = "Coding is Awesome! Let's code together", stepSize: CGFloat ) -> AttributedString{
        var myString = AttributedString()
        let listOfWords = text.split(separator: " ")
        for (i , word) in listOfWords.enumerated(){
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = stepSize*CGFloat (i % 2)
            myString += wordString
        }
        
        return myString
        
    }
    @State private var smileFace = 5.0
    @State private var flip = 0.0
    @State private var stepSize = 0.0
    let rainbowColor = LinearGradient(colors: [
        .red,
        .green,
        .blue,
        .yellow,
        .indigo,
        .purple,
        .pink
    ], startPoint: .leading, endPoint: .trailing)
    var body: some View {
        ScrollView{
            Text(attributeString1)
            Text(attributeString2)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3).clipShape(.rect(cornerRadius: 10)))
            Text(attributedString3)
                .foregroundStyle(rainbowColor)
                .padding()
                .frame(maxWidth: .infinity)
                .rotation3DEffect(Angle(degrees: flip * 180), axis: (x: 1.0, y: 0.0, z: 0.0))
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
              
            HStack(alignment: .top ,spacing: 50){
                Button("😀") {
                    smileFace = abs(smileFace)
                }
                Button("👍") {
                    flip = 1 - flip
                }
                Button("😢") {
                    smileFace = -abs(smileFace)
                }
            }.padding()
            Text(attributedString4)
                .foregroundStyle(rainbowColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
            Text(stepRainbowText("no act of kindness , no matter how small , is ever wasted".capitalized,stepSize: stepSize))
                .foregroundStyle(rainbowColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
            Slider(value: $stepSize, in: -30...30)
            Text(attr5Demo)

            
            
        }.padding()
    }
}

#Preview {
    AttributedStringExample()
}
