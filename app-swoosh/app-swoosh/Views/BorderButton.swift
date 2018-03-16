//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Fabio Lindemberg on 16/03/2018.
//  Copyright © 2018 Fabio Lindemberg. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
    }

}
