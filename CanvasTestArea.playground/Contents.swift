/*:
 
 # playground
 
 *noun*: a place where people can play
 
 ##
 
 Use this playground to experiment with the Canvas class.
 
 Your goals are to:
 
 * learn something about order of statements (does order matter?)
 * get familiar with using a Playground
 
 Have fun!
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 300, height: 500)

// Draw a circle at the origin with radius of 50 pixels


// Show where the origin is

// Draw the ears
canvas.drawAxes()
canvas.drawEllipse(centreX: 60, centreY: 375, width: 75, height: 75)
canvas.drawEllipse(centreX: 240, centreY: 375, width: 75, height: 75)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false

//Draw the Head
canvas.drawEllipse(centreX: 150, centreY: 300, width: 250, height: 200)
canvas.fillColor = Color.black

//eyes
canvas.translate(byX: 100, byY: 300)
canvas.fillColor = Color.black
canvas.rotate(by: 45)
canvas.drawEllipse(centreX: 0, centreY: 0, width: 60, height: 50)
canvas.rotate(by: -45)
canvas.translate(byX: 100, byY: 0)
canvas.rotate(by: -45)
canvas.drawEllipse(centreX: 0, centreY: 0, width: 60, height: 50)
canvas.rotate(by: 45)
canvas.fillColor = Color.white
canvas.translate(byX: -50, byY: 0)
canvas.drawEllipse(centreX: -35, centreY: 15, width: 10, height: 10)
canvas.drawEllipse(centreX: 35, centreY: 15, width: 10, height: 10)

//mouth and nose
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 15, centreY: -55, width: 40, height: 40)
canvas.drawEllipse(centreX: -15, centreY: -55, width: 40, height: 40)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 25, centreY: -50, width: 40, height: 40)
canvas.drawEllipse(centreX: -25, centreY: -50, width: 40, height: 40)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 0, centreY: -35, width: 35, height: 20)

//Blush
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: -57, centreY: -36, width: 30, height: 15)
canvas.drawEllipse(centreX: 57, centreY: -36, width: 30, height: 15)

// This code is necessary to see the result in the Assistant Editor at right
PlaygroundPage.current.liveView = canvas.imageView
