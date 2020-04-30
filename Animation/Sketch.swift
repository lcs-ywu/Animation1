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
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = random(from: 0, to: 500)
        x2 = random(from: 0, to: 500)
        y2 = random(from: 0, to: 500)
        
        canvas.drawShapesWithBorders = true
        canvas.drawShapesWithFill = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x1 += 1
        x2 += 1
        y2 += 1
        
        // Draw an ellipse in the middle of the canvas
        if x2<500,y2<500 {
            canvas.drawEllipse(at: Point(x: x2, y: y2), width: 100, height: 100)
        }else if x2>=500,y2<500 {
            canvas.drawEllipse(at: Point(x: 1000-x2, y: y2), width: 100, height: 100)
        }else if x2<500,y2>=500 {
            canvas.drawEllipse(at: Point(x: x2, y: 1000-y2), width: 100, height: 100)
        }else if x2>=500,y2>=500 {
            canvas.drawEllipse(at: Point(x: 1000-x2, y: 1000-y2), width: 100, height: 100)
        }
        if x2==1000 {
            x2 = 0
        }
        if y2==1000 {
            y2 = 0
        }
        
        if x1<500 {
            canvas.drawEllipse(at: Point(x: x1, y: 250), width: 300, height: 300)
        }else if x1>500,x1<1000{
            canvas.drawEllipse(at: Point(x: 1000-x1, y: 250), width: 300, height: 300)
        }else if x1>1000{
            x1 = 0
        }
        
        
        
    }
    
}
