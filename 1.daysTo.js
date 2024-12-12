Date.prototype.daysTo=function(d){
	
	d.setHours(this.getHours(), this.getMinutes(), this.getSeconds());
	var difference = d.getTime() - this.getTime();
	return (difference)/86400000;
};

var d1 = new Date(2008, 8, 5);
var d2 = new Date(2010, 9, 31);
var days = d1.daysTo(d2);

console.log(days+" days from "+d1+"to "+d2)  