//
//  ExampleWireframe.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

struct StoryBoardExample {
    
    static let storyboard = StoryBoardExample()
    let mainStoryBoard = UIStoryboard(name: "Example", bundle: nil)
    
    func instantiateView<T: UIViewController>(_: T.Type, title: String? = nil) -> T {
        let controller = mainStoryBoard.instantiateViewController(withIdentifier: String(describing: T.self)) as! T
        controller.title = title
        return controller
    }
}

// MARK: - ExampleWireframeProtocol
extension MainWireframe: ExampleWireframeProtocol {
    
    func start() -> UIViewController {
        let controller = StoryBoardExample.storyboard.instantiateView(ExampleView.self)
        let presenter = ExamplePresenter()
        
        presenter.wireframe = self
        presenter.view = controller
        controller.presenter = presenter
        
        return controller
    }
}
