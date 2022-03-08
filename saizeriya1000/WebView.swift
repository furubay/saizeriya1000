//
//  WebView.swift
//  saizeriya1000
//
//  Created by Takahiro Furubayashi on 2022/03/08.
//

import SwiftUI
import WebKit //WebKitをインポート
 
struct WebView: UIViewRepresentable {
    var url: String = "https://saizeria-gacha.web.app/" //表示するWEBページのURLを指定
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}
 
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}

