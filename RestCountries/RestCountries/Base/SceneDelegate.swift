//
//  SceneDelegate.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        appCoordinator = AppCoordinator(uiWindow: window ?? UIWindow(frame: UIScreen.main.bounds))
        
        appCoordinator?.start()
    }
}

