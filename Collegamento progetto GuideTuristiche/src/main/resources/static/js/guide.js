function loadGuida(){
	let guida = {
		id:0,
		foto:foto.value,
		nome: nome.value,
		surname:surname.value,
		description:description.value,
		numberP: numberP.value,	
		email:email.value
	};
	let options = {
		method: 'POST',
		headers: { 'Content-Type':  'application/json;charset=utf-8' },
		body: JSON.stringify(guida)//Serializzazione
	} 
	fetch("/guide",options)
		.then((r)=>{loadList()});
} 

function loadList(){
	fetch("/guide")
		.then(res => { return res.json();})
		.then( (guide)=>{insertIntoList(guide);} );
}

loadList();
		
function insertIntoList(guide){
	
	let s="";
	for(let g of guide){
		s=s+'<div class="team-member"><img class="team-member-image" src="'
		+g.foto+'" alt="Foto"><div class="team-member-info"><h3 style="font-family:lobster"><button class="inv myButton" style="font-family:courier" type="button" onclick="deleteGuida('+g.id+')">Delete</button><br>'
		+g.nome+" "+ g.surname+'</h3><p>Guida turistica</p><p>'+g.description+'.<details>&#9742 Tel:'+g.numberP+'</details><a href="mailto:'+g.email+'">Scrivi una mail &#128173</a></div></p></div>';
	}
	list.innerHTML = s;
}

function deleteGuida(id){
	let options = {
		method: 'DELETE',
		headers: { 'Content-Type': 'application/json;charset=utf-8' }
	}
	fetch("/guide/" + id, options)
.then((g) => { loadList() });
}





