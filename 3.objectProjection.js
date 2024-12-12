var studentObject={
		name: "Maneka Wijesundara",
		email:"maneka611997@gmail.com",
		contactNumber:"0773809777",
		university:"SLIIT",
		nic:"975060853V",
		
		address:{
			street:"Balagolla",
			city:"Kengalla",
			district:"Kandy",
			postalCode:"20000",
			country:"Sri Lanka"
		}	
};

var studentProjection={
	name:1,
	email:1,
	address:{district:1}
	
};
 
 var project = (o, p) => {
  return Object.keys(p).reduce((r,k) => {
    r[k] = o[k] || '';
    return r;
  },{});
}

var projectedObj = project(studentObject, studentProjection);
console.log(projectedObj);
