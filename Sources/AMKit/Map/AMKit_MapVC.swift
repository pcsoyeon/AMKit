//
//  MapViewController.swift
//  
//
//  Created by 김소연 on 2023/08/21.
//

import UIKit

/// AMKit Map 화면
public class AMKit_MapVC: UIViewController {
    
    // MARK: - Views
    /// Map View
    private lazy var mapView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        return view
    }()
    
    private lazy var nextButton: AMKit_PlainButton = {
        let button = AMKit_PlainButton(activeBackgroundColor: .systemPink)
        button.isDisabled = false
        button.title = "MAP VIEW NEXT BUTTON"
        return button
    }()
    
    // MARK: - Properties
    
    public var lat: Double
    public var lng: Double
    
    // MARK: - Initializer
    
    public init(lat: Double, lng: Double) {
        self.lat = lat
        self.lng = lng
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}

// MARK: - Configure UI

extension AMKit_MapVC {
    
    private func configureUI() {
        view.backgroundColor = .systemGray6
        
        view.addSubview(mapView)
        view.addSubview(nextButton)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // map view layout
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mapView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: nextButton.topAnchor),
            
            // next button layout
            nextButton.heightAnchor.constraint(equalToConstant: 80),
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
