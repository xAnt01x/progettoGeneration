function loadListTypes() {
	fetch("/types")
		.then(res => { return res.json(); })
		.then((types) => {
			let s = "";
			for (let b of types) {
				s = s + '<div class="col-md-6 pt-5">' +
					'<div class="card">' +
					'<div class="img1"><img alt="" src="' + b.cover + '" alt=""></div>' +
					'<div class="img2"><a href="tipipatrimoni.html?id=' + b.id + '"><img alt="" src="' + b.profile + '" alt=""></a></div>' +
					'<div class="main-text p-3">' +
					'<h1>' + b.title + '</h1>' +
					'<p>' + b.description + '</p>' +
					'<br>' +
					'</div>' +
					'</div>' +
					'</div>';
			}
			typeslist.innerHTML = s;
		});
}


function loadListRegions() {
	fetch("/regions")
		.then(res => { return res.json(); })
		.then((regions) => {
			let s = "";
			for (let r of regions) {
				s = s + '<li class="col-md-auto list-group-item border border-5 rounded">' +
					'<div>' +
					'<p class="p-0"><a class="p-0 btn" onclick="openSingleRegion(' + r.id + ')"> <img src="' + r.icon + '" style="width: 25px; height: 25px; object-fit: contain;">' +
					' ' + r.name + '</a></p>' +
					'</div>' +
					'</li>';
			}
			regionslist.innerHTML = s;
		});
}


function openSingleRegion(id) {
	fetch("/regions/" + id)
		.then(res => { return res.json(); })
		.then((region) => {
			let s = '<div style="display: flex; column-gap: 30px; padding: 15px;">' +
				'<img style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.132); width: 50%; border-radius: 15px;" src="' + region.map + '">' +
				'<div>' +
				'<h1 style="padding:30px; margin: 0;">' + region.name + '</h1>' +
				'<p>' + region.description + '</p>' +
				'</div>' +
				'</div>';
			singleregion.innerHTML = s;
		});
	fetch("/patrimonioByRegion/" + id)
		.then(res => { return res.json(); })
		.then((patrimonio) => {
			let s = "";
			for (let p of patrimonio) {
				s = s + '<div style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.132); display: flex; column-gap: 30px; padding: 15px; margin-top: 50px; border: 1px solid gray; border-radius: 15px;">' +
					'<img style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.132); width: 30%; border-radius: 15px;" src="' + p.immaginePatrimonio + '">' +
					'	<div>' +
					'		<h1 style="padding:30px; padding-bottom: 0px; margin: 0;">' + p.name + '</h1>' +
					'	<p style="padding-bottom:20px;">' + p.description + '</p>' +
					'<a style="padding-left:30px;" id="btn1" href="singolopatrimonio.html?id=' + p.id + '"><button style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.132); padding:0px">Scopri...</button></a>' +
					'</div>' +
					'	</div>';
			}
			singlepatrimonio.innerHTML = s;
		});
}


window.onload = () => {
	loadListTypes();
	loadListRegions();
}