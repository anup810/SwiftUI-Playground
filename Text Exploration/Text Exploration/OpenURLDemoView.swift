//
//  OpenURLAction.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-07.
//

import SwiftUI


struct OpenURLDemoView: View {
    @State private var showingAlert = false
    let fontAwesome = "*[Font Awesome](https://fontawesome.com/icons/categories/film-video)*"
    @State private var actOfKindnessURLFromGoogle = "*[Acts Of Kindness](https://www.google.com/search?q=acts+of+kindness&sca_esv=db5813506fc066f9&tbm=isch&sxsrf=ACQVn08Yywzuskz4UpiwFy34QhLZTTX70w%3A1713944143521&source=hp&biw=2540&bih=1308&ei=T7YoZqvmHauL7NYPu-qn4Ao&iflsig=ANes7DEAAAAAZijEX1Ag0Ju7O0qeHheLt2kK2iT8paQR&oq=acts+&gs_lp=EgNpbWciBWFjdHMgKgIIADIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgARIohJQAFjVBHAAeACQAQCYAbUBoAGJBaoBAzAuNbgBA8gBAPgBAYoCC2d3cy13aXotaW1nmAIFoAKVBcICBBAjGCfCAggQABiABBixA5gDAJIHAzAuNaAH4xg&sclient=img)*"
    
    @State private var actOfKindnessURL = "*[Another Act of Kindness](https://www.twinkl.co.il/blog/30-kindness-quotes-for-random-acts-of-kindness-day)*"
    @State private var visits = 0
    let maxVisits = 4
    var visitMe: String{
        switch(visits){
        case 0:
            return "Check out \(fontAwesome) for some great fonts."
        case 1:
            return "Glad you are using \(fontAwesome)"
        case 2:
            return "Using \(fontAwesome)? please leave a review"
        case 3...maxVisits:
            return "\(fontAwesome)"
        default:
            return "No more font awesome, let's get back to coding"
        }
    }
    var body: some View {
        Form{
            Text(LocalizedStringKey(visitMe))
                .environment(\.openURL, OpenURLAction { url in
                    visits += 1
                    return .systemAction
                })
            Text(LocalizedStringKey(actOfKindnessURLFromGoogle))
                .environment(\.openURL, OpenURLAction {url in
                    if url.absoluteString.contains("google"){
                        showingAlert = true
                        return .handled
                    }else {
                        return .systemAction
                    }
                    
                })
                .tint(.red)
            Text(LocalizedStringKey(actOfKindnessURL))
                .environment(\.openURL, OpenURLAction { url in
                    if url.absoluteString.count < 12 || url.absoluteString.contains("bit.ly") {
                        print("suspicious email")
                        return .discarded
                    } else if visits < 2 {
                        return .systemAction
                    } else if let url = URL(string: "https://www.udemy.com/course/wholesome-baking-mastering-whole-wheat-cookies") {
                        return .systemAction(url)
                    } else {
                        return .handled
                    }
                })
                .tint(.green)
            Text("Showing Alert : \(showingAlert.description)")
        }
        .tint(.secondary)
        .background()
        .foregroundStyle(.blue)
        .font(.title)
        .alert("Googl is block", isPresented: $showingAlert) {
            Button("Ok", role: .cancel) {
            }
        }
    }
}

#Preview {
    OpenURLDemoView()
}
