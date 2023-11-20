function loadListaPatrimoni() {
	fetch("/heritages")
		.then(res => { return res.json(); })
		.then((patrimonio) => {
			let s = "";
			for (let p of patrimonio) {
				s = s + '<a class="card" href="singolopatrimonio.html?id=' + p.id + '">' +
					'<div class="card__background" style="background-image: url(' + p.immaginePatrimonio + ')"></div>' +
					'<div class="card__content">' +
					'<p class="card__category">' + p.city + '</p>' +
					'<h3 class="card__heading">' + p.name + '</h3>' +
					'</div>' +
					'</a>';
			}
			listapatrimoni.innerHTML = s;
		});
}

window.onload = () => {
	loadListaPatrimoni();
}