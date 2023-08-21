//
//  File.swift
//  
//
//  Created by 김소연 on 2023/08/21.
//

import UIKit

public class AMKit_PlainButton: UIButton {
    
    // MARK: - Property
        
    public var title: String? {
        didSet {
            setTitle(title, for: .normal)
        }
    }
    
    public var isDisabled: Bool = false {
        didSet {
            isEnabled = !isDisabled
            setupColor()
        }
    }

    // MARK: - Initialize
    
    public init() {
        super.init(frame: .zero)
        setupUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set UI
    
    private func setupUI() {
        titleLabel?.font = .systemFont(ofSize: 15)
        layer.cornerRadius = 20
        setTitleColor(.white, for: .normal)
        setTitleColor(.black, for: .highlighted)
        setupColor()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    private func setupColor() {
        backgroundColor = .lightGray
        
        if isDisabled {
            backgroundColor = .darkGray
        }
    }
}
