function loadEvent(){
	let evento = {
		id:0,
		day: day.value,
		month: month.value,
		luogo:luogo.value,
		guidedis:guidedis.value,
		orario:	orario.value,
		
	};
	let options = {
		method: 'POST',
		headers: { 'Content-Type':  'application/json;charset=utf-8' },
		body: JSON.stringify(evento)//Serializzazione
	} 
	fetch("/eventi",options)
		.then((e)=>{loadList()});
} 

function loadList(){
	fetch("/eventi")
		.then(res => { return res.json();})
		.then( (eventi)=>{insertIntoList(eventi);} );
}

loadList();
		
function insertIntoList(eventi){
	
	let s="";
	let l='<option style="margin-bottom: 1%;" label="select">--Seleziona evento--</option>';
	
	for(let e of eventi){
		s += '<div class="calendar-entry"><button class="inv calendar-day" style="font-family:lobster" type="button" onclick="deleteEvent('+e.id+')">Delete</button>' +
           '<div class="calendar-date">' +
           
             '<span class="calendar-day">'+e.day+'</span>' +
             '<span class="calendar-month">'+e.month+'</span>' +
           '</div>' +
           '<div class="calendar-content">' +
             '<h4>'+e.luogo+'</h4>' +
             '<span>Guide disponibili:<br>'+e.guidedis+'</span>' +
             '<span class="orario">'+e.orario+'</span>' +
           '</div>' +
         '</div>';
         
    	l+= '<option label="'+e.luogo+'">'+e.luogo+' in data '+e.day+' '+e.month+' alle ore: '+e.orario+'</option>';
  }
		list.innerHTML = s;
		evento.innerHTML=l;
		
	}
	loadList();
	function deleteEvent(id){
		let options = {
			method: 'DELETE',
			headers: { 'Content-Type': 'application/json;charset=utf-8' }
		}
		fetch("/eventi/" + id, options)
.then((e) => { loadList() });
}

loadList();




















