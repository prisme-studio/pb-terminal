//
//  NetworkEngineDelegate.swift
//  pb-terminal
//
//  Created by Valentin Dufois on 2019-10-29.
//

import SwiftProtobuf

protocol NetworkEngineDelegate: AnyObject {
	func onReceive(status: Pb_Messages_MasterStatus);

	func onReceive(layoutList: Pb_Messages_LayoutList);

	func onReceive(layout: Pb_Messages_Layout);

	func onReceive(trackedBodies: Pb_Messages_TrackedBodies);

	func masterDidDisconnect();
}
