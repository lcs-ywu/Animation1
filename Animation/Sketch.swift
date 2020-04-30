import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x1 : Int
    var x2 : Int
    var y2 : Int
    var m1 : Int
    var n2 : Int
    var m2 : Int
    func distance(x1:Int,x2:Int,y2:Int)->Double{
        return sqrt(pow(Double(x2-x1), 2.0)+pow(Double(y2-250), 2.0))
    }

    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = random(from: 0, to: 500)
        x2 = random(from: 0, to: 500)
        y2 = random(from: 0, to: 500)
        m1 = 0
        n2 = 0
        m2 = 0
        
        canvas.drawShapesWithBorders = false
        canvas.drawShapesWithFill = false
        canvas.lineColor = .red
            }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x1 += 1
        x2 += 1
        y2 += 1
        
        // Draw an ellipse in the middle of the canvas
        if x2<500,y2<500 {
            m2 = x2
            n2 = y2
        }else if x2>=500,y2<500 {
            m2 = 1000-x2
            n2 = y2
        }else if x2<500,y2>=500 {
            m2 = x2
            n2 = 1000-y2
        }else if x2>=500,y2>=500 {
            m2 = 1000-x2
            n2 = 1000-y2
        }
        
        if x2==1000 {
            x2 = 0
            m2 = x2
        }
        if y2==1000 {
            y2 = 0
            n2 = y2
        }
        canvas.drawEllipse(at: Point(x: m2, y: n2), width: 120, height: 120)
        
        if x1<500 {
            m1 = x1
        }else if x1>500,x1<1000{
            m1 = 1000-x1
        }else if x1==1000{
            x1 = 0
            m1 = x1
        }
        canvas.drawEllipse(at: Point(x: m1, y: 250), width: 300, height: 300)
        
        if distance(x1: m1, x2: m2, y2: n2)<=210 {
            canvas.drawLine(from: Point(x:m2, y:n2), to: Point(x: m1, y: 250))
        }
        
        
    }
    
}
