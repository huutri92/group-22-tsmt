function initTreeMenu() {
	document.writeln("<ul id=\"treemenu1\" class=\"treeview\">");
	document.writeln("<li>Request");
	document.writeln("<ul rel=\"open\">");
	document.writeln("<li><nobr><a href=\"../BerthBooking/CreateBerthBooking.html\">Berth Booking</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../ExportBooking/NewExportBooking.html\">Export Booking</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../CargoRepairing/SearchDamagedCargo.html\">Repairing Request</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../HoldRelease/SearchToCreateHold.html\">Hold Cargo</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../HoldRelease/SearchHoldReleaseCargo.html\">Search Hold & Release Cargo</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../StorageOrder/NewStorageOrder.html\">Storage Order</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../Consolidation/SearchConsolidation.html\">Consolidation</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../ExportBooking/UploadExportBooking.html\">Export Booking List</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../InternalShifting/ShiftingType.html\">Internal Shifting</a></nobr></li>");	
	document.writeln("<li><nobr><a href=\"../GateBooking/HaulierNominationExport.html\">Haulier Nomination</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../GateBooking/TimeBooking.html\">Time Booking</a></nobr></li>");
	document.writeln("</ul>");
	document.writeln("</li>");
	document.writeln("<li>Enquiry");
	document.writeln("<ul rel=\"open\">");
	document.writeln("<li><nobr><a href=\"../BerthBooking/SearchBerthBooking.html\">Berth Booking</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../ExportBooking/SearchExportBooking.html\">Export Booking</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../CargoMonitoring/ExportCargoSummary.html\">Export Cargo Summary</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../CargoRepairing/SearchRepairingRequest.html\">Repairing Request</a></nobr></li>");	
	document.writeln("<li><nobr><a href=\"../CargoMonitoring/StorageCargoSummary.html\">Storage Cargo Summary</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../StorageOrder/SearchStorageOrder.html\">Storage Order</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../GateBooking/HaulierNominationEnquiry.html\">Haulier Nomination</a></nobr></li>");
	document.writeln("<li><nobr><a href=\"../GateBooking/GateBookingEnquiry.html\">Time Booking</a></nobr></li>");

	document.writeln("</ul>");
	document.writeln("</li>");
	document.writeln("</ul>");
}								