//
//  AppCoordinator.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

final class AppCoordinator {
    let uiWindow: UIWindow?

    init(uiWindow: UIWindow) {
        self.uiWindow = uiWindow
    }

    func start() {
        let countriesListViewModel = CountryListViewModel(service: ServiceApi(), countryList: [])
        let viewController = CountryListViewController.instanciate(viewModel: countriesListViewModel)
        let navigationViewController  = UINavigationController(rootViewController: viewController)
        
        uiWindow?.rootViewController = navigationViewController
        uiWindow?.makeKeyAndVisible()
    }
}
