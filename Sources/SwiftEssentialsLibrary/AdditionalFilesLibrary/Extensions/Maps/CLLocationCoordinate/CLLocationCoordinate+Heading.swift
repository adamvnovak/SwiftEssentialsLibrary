//
//  CLLocationCoordinate+Heading.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 5/31/23
//

import MapKit

public extension CLLocationCoordinate2D {

    func heading(to: CLLocationCoordinate2D) -> Double {
        let lat1 = self.latitude.degreesToRadians
        let lon1 = self.longitude.degreesToRadians

        let lat2 = to.latitude.degreesToRadians
        let lon2 = to.longitude.degreesToRadians

        let dLon = lon2 - lon1
        let y = sin(dLon) * cos(lat2)
        let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon)

        let headingDegrees = atan2(y, x).radiansToDegrees
        if headingDegrees >= 0 {
            return headingDegrees
        } else {
            return headingDegrees + 360
        }
    }
}
