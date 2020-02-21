//
//  DatagramType.swift
//  pb-terminal
//
//  Created by Valentin Dufois on 2020-02-21.
//  Copyright © 2020 Prisme. All rights reserved.
//

import Foundation

enum DatagramType: UInt64 {
	case undefined 			= 0
	case ping 				= 5
	case pong 				= 6
	case close 				= 9

	case status 				= 50

	case rawBody 			= 110	// A Body sent through the stream

	// 2XX: Master types -
	// Layout
	case layoutFile			= 205  // Holds a layout
	case layoutList	 		= 210  // Asks/Hold the list of layouts
	case layoutCreate 		= 211  // Create a new layout
	case layoutOpen			= 212  // Open a layout on the master
	case layoutRename 		= 213	// Rename a layout
	case layoutUpdate 		= 214  // Update a layout
	case layoutClose 			= 215  // Close the opened layout
	case layoutDelete 		= 216  // Delete the specified layout

	case calibrationSet		= 220	// Set the calibration devices
	case calibationValues   	= 221	// Calibration values for the current set

	case trackedBodies		= 250	// List of all tracked bodies
	case partialBody			= 255 	// A Partial body
}
