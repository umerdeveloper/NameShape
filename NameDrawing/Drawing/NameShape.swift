import CoreGraphics
import UIKit

class NameShape: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let uCharacter = UIBezierPath()
        uCharacter.move(to: .init(x: 5, y: 45))
        
        uCharacter.addCurve(
            to: .init(x: 50, y: 45),
            controlPoint1: .init(x: 0, y: 120),
            controlPoint2: .init(x: 55, y: 120)
        )
        
        let uLayer = CAShapeLayer()
        uLayer.path = uCharacter.cgPath
        uLayer.fillColor = UIColor.clear.cgColor
        uLayer.strokeColor = UIColor.red.cgColor
        uLayer.lineWidth = 5
        
        // Shadow for U
        uLayer.shadowColor = UIColor.black.cgColor
        uLayer.shadowOpacity = 1
        uLayer.shadowOffset = CGSize(width: 1, height: 1)
        uLayer.shadowRadius = 1

        let uGradientLayer = createGradientLayer(
            bounds: bounds,
            colors: [
                UIColor.cyan.cgColor,
                UIColor.black.cgColor,
                UIColor.cyan.cgColor
            ],
            startPoint: .init(x: 0, y: 0),
            endPoint: .init(x: 1, y: 1)
        )

        uGradientLayer.mask = uLayer
        
        uLayer.add(
            createAnimation(keyPath: "strokeEnd"),
            forKey: "strokeEndAnimation"
        )
        
        let mCharacter = UIBezierPath()
        // Starting point
        mCharacter.move(to: .init(x: 60, y: 50))
        // Add vertical line
        mCharacter.addLine(to: .init(x: 60, y: 100))
        // Move back to starting point
        mCharacter.addLine(to: .init(x: 60, y: 50))
        // Part of vertical line
        mCharacter.addLine(to: .init(x: 90, y: 75))
        // Part of last vertical line
        mCharacter.addLine(to: .init(x: 120, y: 50))
        // Last vertical line
        mCharacter.addLine(to: .init(x: 120, y: 100))
        
        let mLayer = CAShapeLayer()
        mLayer.path = mCharacter.cgPath
        mLayer.fillColor = UIColor.clear.cgColor
        mLayer.strokeColor = UIColor.systemBlue.cgColor
        mLayer.lineWidth = 5
        
        // Shadow for M
        mLayer.shadowColor = UIColor.black.cgColor
        mLayer.shadowOpacity = 0.5
        mLayer.shadowOffset = CGSize(width: 2, height: 2)
        mLayer.shadowRadius = 3
        
        let mGradientLayer = createGradientLayer(
            bounds: bounds,
            colors: [
                UIColor.white.cgColor,
                UIColor.black.cgColor,
                UIColor.systemBackground.cgColor
            ],
            startPoint: .init(x: 0, y: 0),
            endPoint: .init(x: 1, y: 1)
        )

        mGradientLayer.mask = mLayer
        
        mLayer.add(
            createAnimation(keyPath: "strokeEnd"),
            forKey: "strokeEndAnimation"
        )
        
        let eCharacter = UIBezierPath()
        eCharacter.move(to: .init(x: 130, y: 48))
        // First horizontal line
        eCharacter.addLine(to: .init(x: 130 + 50, y: 48))
        // Move back to starting point
        eCharacter.addLine(to: .init(x: 130, y: 48))
        // Add Vertical line
        eCharacter.addLine(to: .init(x: 130, y: 100))
        // Move in center of vertical line
        eCharacter.addLine(to: .init(x: 130, y: 75))
        // Add horizontal center line
        eCharacter.addLine(to: .init(x: 130 + 50, y: 75))
        // Move back
        eCharacter.addLine(to: .init(x: 130, y: 75))
        // Move down
        eCharacter.addLine(to: .init(x: 130, y: 98))
        // Add last vertical line
        eCharacter.addLine(to: .init(x: 130 + 50, y: 98))
        
        
        let eLayer = CAShapeLayer()
        eLayer.path = eCharacter.cgPath
        eLayer.fillColor = UIColor.clear.cgColor
        eLayer.strokeColor = UIColor.systemBrown.cgColor
        eLayer.lineWidth = 5
        
        // Shadow for E
        eLayer.shadowColor = UIColor.black.cgColor
        eLayer.shadowOpacity = 0.5
        eLayer.shadowOffset = CGSize(width: 2, height: 2)
        eLayer.shadowRadius = 3
        
        let eGradientLayer = createGradientLayer(
            bounds: bounds,
            colors: [
                UIColor.magenta.cgColor,
                UIColor.yellow.cgColor,
                UIColor.cyan.cgColor
            ],
            startPoint: .init(x: 0, y: 0),
            endPoint: .init(x: 1, y: 1)
        )

        eGradientLayer.mask = eLayer
        
        eLayer.add(
            createAnimation(keyPath: "strokeEnd"),
            forKey: "strokeEndAnimation"
        )
        
        let rCharacter = UIBezierPath()
        rCharacter.move(to: .init(x: 190, y: 45))
        // Vertical line
        rCharacter.addLine(to: .init(x: 190, y: 102))
        // Move to center
        rCharacter.addLine(to: .init(x: 190, y: 45))
        
        rCharacter.addCurve(
            to: .init(x: 190, y: 80),
            controlPoint1: .init(x: 240, y: 40),
            controlPoint2: .init(x: 240, y: 85)
        )
        
        rCharacter.addLine(to: .init(x: 192, y: 80))
        
        rCharacter.addLine(to: .init(x: 230, y: 100))
        
        let rLayer = CAShapeLayer()
        rLayer.path = rCharacter.cgPath
        rLayer.fillColor = UIColor.clear.cgColor
        rLayer.strokeColor = UIColor.systemPink.cgColor
        rLayer.lineWidth = 5
        
        // Shadow for R
        rLayer.shadowColor = UIColor.black.cgColor
        rLayer.shadowOpacity = 0.5
        rLayer.shadowOffset = CGSize(width: 2, height: 2)
        rLayer.shadowRadius = 3
        
        let rGradientLayer = createGradientLayer(
            bounds: bounds,
            colors: [
                UIColor.lightGray.cgColor,
                UIColor.systemIndigo.cgColor
            ],
            startPoint: .init(x: 0, y: 0),
            endPoint: .init(x: 1, y: 1)
        )

        rGradientLayer.mask = rLayer
        
        rLayer.add(
            createAnimation(keyPath: "strokeEnd"),
            forKey: "strokeEndAnimation"
        )
        
        self.layer.insertSublayer(uGradientLayer, at: 0)
        self.layer.insertSublayer(mGradientLayer, at: 0)
        self.layer.insertSublayer(eGradientLayer, at: 0)
        self.layer.insertSublayer(rGradientLayer, at: 0)
    }
    
    func createGradientLayer(
        bounds: CGRect,
        colors: [CGColor],
        startPoint: CGPoint,
        endPoint: CGPoint
    ) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        return gradientLayer
    }
    
    func createAnimation(
        keyPath: String
    ) -> CABasicAnimation {
        let strokeAnimation = CABasicAnimation(keyPath: keyPath)
        strokeAnimation.fromValue = 0
        strokeAnimation.toValue = 1
        strokeAnimation.duration = 5
        return strokeAnimation
    }

}

#Preview {
    NameShape(
        frame: .init(x: 0, y: 0, width: 500, height: 500)
    )
}
