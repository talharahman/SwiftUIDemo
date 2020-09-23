//
//  DetailView.swift
//  HackerNews
//
//  Created by Talha Rahman on 9/23/20.
//  Copyright © 2020 Talha Rahman. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

