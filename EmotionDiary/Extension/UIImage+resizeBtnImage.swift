//
//  UIImage+resizeBtnImage.swift
//  EmotionDiary
//
//  Created by hwijinjeong on 1/2/24.
//

import UIKit

extension UIImage {
    func resizeBtnImage(to size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
