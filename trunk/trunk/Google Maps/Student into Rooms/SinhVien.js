sinhvien = Class.extend({
	NAME: "SINH VIEN",
	
	init: function(ten, gioitinh, tennhom){
		this.ten = ten;
		this.gioitinh = gioitinh;
		this.tennhom = tennhom;
	},
	getTen: function(){
		return this.ten;
	},
	getGioiTinh: function(){
		return this.gioitinh;
	},
	getTenNhom: function(){
		return this.tennhom;
	},
	getDisplay: function(){
		var display = this.getTen();
		display += " --- ";
		display += this.getGioiTinh()==true?"Male":"Female";
		display += " --- ";
		display += this.getTenNhom();
		return display;
	},
});