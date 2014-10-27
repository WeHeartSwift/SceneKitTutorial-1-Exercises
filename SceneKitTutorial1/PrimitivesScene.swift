//
//  PrimitivesScene.swift
//  SceneKitTutorial1
//
//  Created by Silviu Pop on 10/23/14.
//  Copyright (c) 2014 We Heart Swift. All rights reserved.
//

import UIKit
import SceneKit

class PrimitivesScene: SCNScene {
    
    var cameraNode: SCNNode?
    
    func exercise1() {
        let sphereGeometry = SCNSphere(radius: 1.0)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
        let sphereNode = SCNNode(geometry: sphereGeometry)
        self.rootNode.addChildNode(sphereNode)
        
        let secondSphereGeometry = SCNSphere(radius: 0.5)
        secondSphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
        let secondSphereNode = SCNNode(geometry: secondSphereGeometry)
        secondSphereNode.position = SCNVector3(x: 3.0, y: 0.0, z: 0.0)
        self.rootNode.addChildNode(secondSphereNode)
        
        let thirdSphereGeometry = SCNSphere(radius: 1.5)
        thirdSphereGeometry.firstMaterial?.diffuse.contents = UIColor.redColor()
        let thirdSphereNode = SCNNode(geometry: thirdSphereGeometry)
        thirdSphereNode.position = SCNVector3(x: 0.0, y: 3.0, z: 0.0)
        self.rootNode.addChildNode(thirdSphereNode)
    }
    
    func exercise2() {
        var x:Float = 0.0
        var radius:CGFloat = 1.0
        let numberOfSpheres = 20

        for i in 1...numberOfSpheres {
            let sphereGeometry = SCNSphere(radius: radius)
            
            if (i % 2 == 0) {
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
            } else {
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
            }
            
            let sphereNode = SCNNode(geometry: sphereGeometry)
            sphereNode.position = SCNVector3(x: x, y: 0.0, z: 0.0)
            
            self.rootNode.addChildNode(sphereNode)
            
            x += 3 * Float(radius)
        }
    }
    
    func exercise3() {
        var x:Float = 0.0
        var radius:CGFloat = 1.0
        let numberOfSpheres = 20

        for i in 0..<numberOfSpheres {
            
            let sphereGeometry = SCNSphere(radius: radius)
            
            if (i % 2 == 0) {
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
            } else {
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
            }
            
            let sphereNode = SCNNode(geometry: sphereGeometry)
            sphereNode.position = SCNVector3(x: x, y: 0.0, z: 0.0)
            
            self.rootNode.addChildNode(sphereNode)

            x += Float(radius)
            radius -= 0.05
            x += Float(radius)
            
        }
    }
    
    func exercise4() {
        var y:Float = 0.0
        var radius:CGFloat = 1.0
        let yCount = 20
        let xCount = 20
        for row in 0..<yCount {
            var x:Float = 0.0
            for column in 0..<xCount {
                let sphereGeometry = SCNSphere(radius: radius)
                
                if (row + column) % 2 == 0 {
                    sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
                } else {
                    sphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
                }
                
                let sphereNode = SCNNode(geometry: sphereGeometry)
                sphereNode.position = SCNVector3(x: x, y: y, z: 0.0)
                
                self.rootNode.addChildNode(sphereNode)
                
                x += 2 * Float(radius)
            }
            y += 2 * Float(radius)
        }
    }
    
    func exercise5() {
        var y:Float = 0.0
        var radius:CGFloat = 1.0
        let yCount = 20
        let xCount = 20
        for row in 0..<yCount {
            var x:Float = 0.0
            for column in 0..<xCount {
                let sphereGeometry = SCNSphere(radius: radius)
                
                sphereGeometry.firstMaterial?.diffuse.contents = row & column != 0 ? UIColor.purpleColor() : UIColor.orangeColor()
            
                
                let sphereNode = SCNNode(geometry: sphereGeometry)
                sphereNode.position = SCNVector3(x: x, y: y, z: 0.0)
                
                self.rootNode.addChildNode(sphereNode)
                
                x += 2 * Float(radius)
            }
            y += 2 * Float(radius)
        }
    }
    
    func exercise6() {
        var y:Float = 0.0
        var radius:CGFloat = 1.0
        let yCount = 20
        let xCount = 20
        for row in 0..<yCount {
            var x:Float = Float(radius) * Float(row)
            for column in row..<xCount {
                let sphereGeometry = SCNSphere(radius: radius)
                
                if ((row + column) % 2 == 0) {
                    sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
                } else {
                    sphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
                }
                
                let sphereNode = SCNNode(geometry: sphereGeometry)
                sphereNode.position = SCNVector3(x: x, y: y, z: 0.0)
                
                self.rootNode.addChildNode(sphereNode)
                
                x += 2 * Float(radius)
            }
            y += sqrt(3.0) * Float(radius)
        }
    }
    
    func exercise7() {
        var y:Float = 0.0

        var radius:CGFloat = 1.0

        let yCount = 7
        let zCount = 7
        let xCount = 7

        for row in 0..<yCount {
            var z:Float = 0.0
            for depth in 0..<zCount {
                var x:Float = 0.0
                for column in 0..<xCount {
                    
                    let sphereGeometry = SCNSphere(radius: radius)
                    
                    if (row % 2 == 0) {
                        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
                    } else {
                        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
                    }
                    
                    let sphereNode = SCNNode(geometry: sphereGeometry)
                    sphereNode.position = SCNVector3(x: x, y: y, z: z)
                    
                    
                    self.rootNode.addChildNode(sphereNode)
                    
                    x += 2.0 * Float(radius)
                
                }
                z += 2 * Float(radius)
            }
            y += 2 * Float(radius)
        }
    }
    
    override init() {
        super.init()
    
//        exercise1()
//        exercise2()
//        exercise3()
//        exercise4()
//        exercise5()
//        exercise6()
        exercise7()
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
