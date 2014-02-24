phong = Class.extend({
	NAME: "PHONG TRO",
	
	init: function(tenphong, soluong){		
		this.danhsach = [];
		this.tenphong = tenphong;
		this.soluong = soluong;
		this.gioitinh = null;
		this.soluongcontrong = soluong;
	},
	getTenPhong: function(){
		return this.tenphong;
	},
	getSoLuong: function(){
		return this.soluong;
	},
	getSoLuongConTrong: function(){
		return this.soluongcontrong;
	},
	setSoLuongConTrong: function(sl){
		return this.soluongcontrong = sl;
	},
	getGioiTinh: function(){
		return this.gioitinh;
	},
	setGioiTinh: function(gioitinh){
		this.gioitinh = gioitinh;
	},
});