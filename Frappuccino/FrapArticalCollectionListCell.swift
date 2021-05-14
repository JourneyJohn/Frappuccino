//
//  FrapArticalCollectionListCell.swift
//  Frappuccino
//
//  Created by John on 2021/5/13.
//

import UIKit
import SnapKit

public class FrapArticalCollectionListCell: UICollectionViewCell, FrapListCellProtocol {
    
    lazy var bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16.0
//        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowRadius = 8.0
        view.layer.shadowOpacity = 0.6
        view.layer.shadowOffset = .zero
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSubviews()
    }
    
    func setupSubviews() {
        
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        contentView.addSubview(bgView)
        bgView.snp.makeConstraints { make in
            make.left.top.equalTo(contentView).offset(16.0)
            make.right.bottom.equalTo(contentView).offset(-16.0)
        }
    }
}
