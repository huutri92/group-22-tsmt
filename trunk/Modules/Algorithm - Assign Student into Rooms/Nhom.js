nhom = Class.extend({
	NAME: "NHOM SINH VIEN",
	
	init: function(tennhom){
		this.danhsachsv = [];
		this.tennhom = tennhom;
		this.tenphong = "";
	},
	getDanhSachSV: function(){
		return this.danhsachsv;
	},
	getTenNhom: function(){
		return this.tennhom;
	},
	getTenPhong: function(){
		return this.tenphong;
	},
	setTenPhong: function(tenphong){
		return this.tenphong = tenphong;
	},
});