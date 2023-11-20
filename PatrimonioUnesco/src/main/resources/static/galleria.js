function loadSinglePatrimonio() {
	fetch("/heritages")
		.then(res => { return res.json(); })
		.then((heritages) => {
			let s = '<div id="slide">';
			for (let p of heritages) {
				s = s + '<div class="item"' +
					'style="background-image: url(' + p.immaginePatrimonio + ');">' +
					'<div class="content">' +
					'<div class="name">' + p.name + '</div>' +
					'</div>' +
					'</div>';
			}
			immagini.innerHTML = s;
		});
}

window.onload = () => {
	loadSinglePatrimonio();
}