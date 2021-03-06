//
//  SetUpCompassPoints.swift
//  VRTemplate
//
//  Created by Eric Mead on 10/14/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import Foundation

func setUpCompassPoints(_ things: SCNNode, backgroundContents: AnyObject, distance: Float, sizeRadius: CGFloat){

    let material1 = SCNMaterial()
    material1.diffuse.contents = UIColor.black
    material1.specular.contents = UIColor.white
    material1.shininess = 100.0
    material1.reflective.contents = backgroundContents
    
    let backSphereN = SCNNode.init(geometry: SCNSphere.init(radius: sizeRadius))
    backSphereN.geometry?.firstMaterial = material1
    backSphereN.position = SCNVector3(0, 0, -distance)
    backSphereN.physicsBody = SCNPhysicsBody.kinematic()
    backSphereN.physicsBody!.categoryBitMask = CC.destroyable.rawValue
    backSphereN.physicsBody!.contactTestBitMask = CC.bullet.rawValue
    backSphereN.physicsBody!.collisionBitMask = CC.bullet.rawValue
    things.addChildNode(backSphereN)
    
    let backSphereS = SCNNode.init(geometry: SCNSphere.init(radius: sizeRadius))
    backSphereS.geometry?.materials.first?.diffuse.contents = UIColor.red
    backSphereS.position = SCNVector3(0, 0, distance)
    backSphereS.physicsBody = SCNPhysicsBody.kinematic()
    backSphereS.physicsBody!.categoryBitMask = CC.destroyable.rawValue
    backSphereS.physicsBody!.contactTestBitMask = CC.bullet.rawValue
    backSphereS.physicsBody!.collisionBitMask = CC.bullet.rawValue
    things.addChildNode(backSphereS)
    
    let backSphereE = SCNNode.init(geometry: SCNSphere.init(radius: sizeRadius))
    backSphereE.geometry?.materials.first?.diffuse.contents = UIColor.green
    backSphereE.position = SCNVector3(distance, 0, 0)
    backSphereE.physicsBody = SCNPhysicsBody.kinematic()
    backSphereE.physicsBody!.categoryBitMask = CC.destroyable.rawValue
    backSphereE.physicsBody!.contactTestBitMask = CC.bullet.rawValue
    backSphereE.physicsBody!.collisionBitMask = CC.bullet.rawValue
    things.addChildNode(backSphereE)
    
    let backSphereW = SCNNode.init(geometry: SCNSphere.init(radius: sizeRadius))
    backSphereW.geometry?.materials.first?.diffuse.contents = UIColor.white
    backSphereW.position = SCNVector3(-distance, 0, 0)
    backSphereW.physicsBody = SCNPhysicsBody.kinematic()
    backSphereW.physicsBody!.categoryBitMask = CC.destroyable.rawValue
    backSphereW.physicsBody!.contactTestBitMask = CC.bullet.rawValue
    backSphereW.physicsBody!.collisionBitMask = CC.bullet.rawValue
    things.addChildNode(backSphereW)

}
