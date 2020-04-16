import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        // Set starting position
        x = 250
//        // Change the fill to green
//        canvas.fillColor = Color.green
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
//        // Change position
//        x += 1
//        // Print the value of x in the debug console
//        print(x)
//        // Draw an ellipse in the middle of the canvas
//        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        for y in stride(from: 50, through: 450, by: 100){
            if y == 450 {
                canvas.fillColor = .purple
                x += 1
                canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
            }else if y == 350 {
                canvas.fillColor = .orange
                x -= 1
                canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
            }else if y == 250 {
                canvas.fillColor = .green
                x += 1
                canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
            }else if y == 150 {
                canvas.fillColor = .blue
                x -= 1
                canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
            }else {
                canvas.fillColor = .black
                x += 1
                canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
            }
        }
        
        
        
    }
    
    
    
    
}
