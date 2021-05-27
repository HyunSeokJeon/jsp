window.onload=function(){
	let lang = document.getElementsByClassName("lang_country");
	for(var i=0; i < lang.length; i++){
		lang[i].addEventListener('click',function(){
			console.log(this);
			console.log(this.parentNode);
			console.log(this.value);
			document.cookie = "lang="+this.value+ ";expires="+60*60+";path=/";
			window.location.reload();
		})
	}
	
}