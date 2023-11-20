function loadRecensione(){
    let recensione = {
        id:0,
        titolo: titolo.value,
        review: review.value,	
        rating: rating.value,
    };
    let options = {
        method: 'POST',
        headers: { 'Content-Type':  'application/json;charset=utf-8' },
        body: JSON.stringify(recensione)//Serializzazione
    } 
    fetch("/recensioni",options)
        .then((r)=>{loadList()});
} 

function loadList(){
    fetch("/recensioni")
        .then(res => { return res.json();})
        .then( (recensioni)=>{insertIntoList(recensioni);} );
}

function insertIntoList(recensioni){
    let s="";
    for(let r of recensioni){
    s=s+'<div style="box-shadow: 0 0 5px black; width:20%; display:inline-block;" class="review"><h3>'+r.titolo+'</h3><p>'+r.review+'</p><p>'+r.rating+' &#9733'+'</p></div>'

    }
    list.innerHTML = s;
    }

loadList();

function deleteRecensione(){
    let options = {
        method: 'DELETE',
        headers: { 'Content-Type': 'application/json;charset=utf-8' }
    }
    fetch("/recensioni/" + id.value, options)
.then((r) => { loadList() });
}

