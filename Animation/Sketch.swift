import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var z : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, to: 500)
        y = random(from: 0, to: 500)
        z = 0
        
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = .white
        if x<500,y<500 {
            canvas.drawEllipse(at: Point(x: x, y: y), width: 55, height: 55)
        }else if x>=500,y<500 {
            canvas.drawEllipse(at: Point(x: 1000-x, y: y), width: 55, height: 55)
        }else if x<500,y>=500 {
            canvas.drawEllipse(at: Point(x: x, y: 1000-y), width: 55, height: 55)
        }else if x>=500,y>=500 {
            canvas.drawEllipse(at: Point(x: 1000-x, y: 1000-y), width: 55, height: 55)
        }
        
        // Change position
        x += 1
        y += 1
        
        canvas.fillColor = .black
        // Draw an ellipse in the middle of the canvas
        if x<500,y<500 {
            canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        }else if x>=500,y<500 {
            canvas.drawEllipse(at: Point(x: 1000-x, y: y), width: 50, height: 50)
        }else if x<500,y>=500 {
            canvas.drawEllipse(at: Point(x: x, y: 1000-y), width: 50, height: 50)
        }else if x>=500,y>=500 {
            canvas.drawEllipse(at: Point(x: 1000-x, y: 1000-y), width: 50, height: 50)
        }
        
        if x==1000 {
            x = 0
        }
        if y==1000 {
            y = 0
        }
        
//        print(x)
//        print(y)
        
    }
    
}
