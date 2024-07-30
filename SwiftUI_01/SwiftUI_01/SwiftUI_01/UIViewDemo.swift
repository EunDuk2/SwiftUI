//
//  UIViewDemo.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/30/24.
//

import SwiftUI

struct UIViewDemo: View {
    var body: some View {
        MyScrollView(text: "UIView in SwiftUI")
    }
}

#Preview {
    UIViewDemo()
}

struct MyScrollView: UIViewRepresentable {
    
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MyScrollView>) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator
        
        scrollView.refreshControl = UIRefreshControl()
        scrollView.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefresh), for: .valueChanged)
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        myLabel.text = text
        scrollView.addSubview(myLabel)
        return scrollView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyScrollView>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var control: MyScrollView
        
        init(_ control: MyScrollView) {
            self.control = control
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("View is Scrolling")
        }
        
        @objc func handleRefresh(sender: UIRefreshControl) {
            sender.endRefreshing()
        }
    }
}
