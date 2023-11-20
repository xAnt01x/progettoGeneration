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

function loadPatrimonio() {
	fetch("/heritages/" + getPathId())
		.then(res => { return res.json(); })
		.then((heritages) => {
			let s = '<div id="title" class="slide header" style="padding-top:50px; background-image: url(' + heritages.immaginePatrimonio + ')">' +
				'<h1 style="padding-top: 80px;">' + heritages.name + '</h1>' +
				'</div>';
			let frame = '<iframe src="' + heritages.map + '" width="955px" height="560px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
			let citta = '' + heritages.city;
			let storia = heritages.history;
			let videos = '<iframe width="955px" height="560px" src="' + heritages.video + '"' +
				'title="YouTube video player" frameborder="0"' +
				'allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"' +
				'allowfullscreen></iframe>';
			let nome = heritages.name;
			let modello = '<div class="sketchfab-embed-wrapper"> <iframe width="955px" height="560px" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share src="' + heritages.model3D + '">'
			modello3d.innerHTML = modello;
			iframe.innerHTML = frame;
			indirizzo.innerHTML = citta;
			story.innerHTML = storia;
			background1.innerHTML = s;
			video.innerHTML = videos;
			console.log(heritages.region.id);
			console.log(heritages.region);

			fetch("/imagesByPatrimonio/" + heritages.id)
				.then(res => { return res.json(); })
				.then((immagini) => {
					let pan = heritages.description;
					let z = "";
					console.log("ciaooooooo");
					z += '<div id="slide2" class="slide" style="background-image: url(' + heritages.immaginePatrimonio2 + ')">' +
						'<div class="title" style="display: block;">' +
						'<h1>Panoramica</h1>' +
						'<p id="panoramica"></p>' +
						'</div>';
					for (let im of immagini) {
						z += '<img class="foto" src="' + im.link + '">';
					}
					z += '</div>';
					immaginilist.innerHTML = z;
					panoramica.innerHTML = pan;
				});



			fetch("/patrimonioByRegion3/" + heritages.region.id)
				.then(res => { return res.json(); })
				.then((patrimoni) => {
					let x = "";
					let c = 0;
					for (let p of patrimoni) {
						if (p.id != heritages.id) {
							c += 1;
							x += '<div class="news-card">' +
								'<a href="#" class="news-card__card-link"></a>' +
								'<img src="' + p.immaginePatrimonio + '" alt="" class="news-card__image">' +
								'<div class="news-card__text-wrapper">' +
								'<h2 class="news-card__title" style="padding-top:20px !important;">' + p.name + '</h2>' +
								'<div class="news-card__post-date">' + p.city + '</div>' +
								'<div class="news-card__details-wrapper">' +
								'<a href="singolopatrimonio.html?id=' + p.id + '"><button class="news-card__read-more">Esplora</button></a>' +
								'</div> </div> </div> ';
						}
						if (c == 3) {
							break;
						}

					}
					listtopregion.innerHTML = x;

				});

			fetch("/patrimonioByLabel3/" + heritages.label)
				.then(res => { return res.json(); })
				.then((patrimoni) => {
					let x = "";
					let c = 0;

					for (let p of patrimoni) {
						if (p.id != heritages.id) {

							x += '<div class="news-card">' +
								'<a href="#" class="news-card__card-link"></a>' +
								'<img src="' + p.immaginePatrimonio + '" alt="" class="news-card__image">' +
								'<div class="news-card__text-wrapper">' +
								'<h2 class="news-card__title" style="padding-top:20px !important;">' + p.name + '</h2>' +
								'<div class="news-card__post-date">' + p.city + '</div>' +
								'<div class="news-card__details-wrapper">' +
								'<a href="singolopatrimonio.html?id=' + p.id + '"><button class="news-card__read-more">Esplora</button></a>' +
								'</div> </div> </div> ';
						}

						if (c == 3) {
							break;
						}
					}
					listtoplabel.innerHTML = x;

				});



		});
	fetch("/servizioByPatrimonio/" + getPathId())
		.then(res => { return res.json(); })
		.then((services) => {
			let c = '';
			for (let s of services) {
				c += '<div class="service" style="width: 30%; display:flex; flex-direction: row; flex-wrap: wrap; justify-content: center;">' +
					'<i class="material-icons icon" style="padding-right: 10px;">' + s.icon + '</i>' +
					'<h3 class="titolo">' + s.name + '</h3>' +
					'<p style="padding:0px"> ' + s.description + '</p>' +
					'</div>';
			}
			servizi.innerHTML = c;
		});
		
	ciao.innerHTML= '<iframe src="gallery5.html?id='+getPathId()+'" style="width:99%; height: 600px; border:none; border-radius: 5px;"></iframe>'

}

window.onload = () => {
	loadPatrimonio();
}