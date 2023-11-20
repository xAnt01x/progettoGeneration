function getPathId() {

	let s = window.location.search;
	console.log(window.location);
	//https://www.w3schools.com/jsref/jsref_lastindexof.asp
	let index = s.lastIndexOf("id=");
	//https://www.w3schools.com/jsref/jsref_substring.asp
	let pathId = s.substring(index + 3);
	console.log("L'id preso dal path è {" + pathId + "}");
	return pathId;
}


function openSingleType(pathId = getPathId()) {
	fetch("/types/" + pathId)
		.then(res => { return res.json(); })
		.then((type) => {
			let s = '<div class="main-content" style="background-image: url(' + type.cover + ')">' +
				'<div class="content">' +
				'<div class="box2">' +
				'	<h1 style="	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";">' + type.title +
				'<br>italiano' +
				'</h1>' +
				'<br>' +
				'<p style="margin-bottom: 1rem; padding:0px">' + type.description + '</p>' +
				'</div>' +
				'</div>' +
				'</div>';
			singletype.innerHTML = s;
		});
	fetch("/patrimonioByType/" + pathId)
		.then(res => { return res.json(); })
		.then((patrimonio) => {
			let s = "";
			for (let p of patrimonio) {
				s = s + '<article class="card"' +
					'style="background-image: url(' + p.immaginePatrimonio + '); background-size: cover; background-color: rgba(255,255,25);">' +
					'<header class="card-header" style="background-color: unset; border-bottom:0px;">' +
					'<a href="singolopatrimonio.html?id=' + p.id + '" style="text-decoration: none; color: inherit;"><h2>' + p.name + '</h2></a>' +
					'</header>' +
					'<div class="bottone">' +
					'<a style="padding-left:30px;" id="btn1" href="singolopatrimonio.html?id=' + p.id + '"><button style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.132); padding:0px">ESPLORA</button></a>' +
					'</div > ' +
					'</article>';
			}
			listapatrimoni.innerHTML = s;
		});
}

window.onload = () => {
	openSingleType();
}