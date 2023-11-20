var myVar;

function myFunction(){
    myVar = setTimeout(hiding, 3000);
    myVar = setTimeout(showPage,4000);
}

function showPage(){
    document.getElementById("preload").style.display = "none";
    document.getElementById("myDiv").style.display = "block";
}

function hiding(){
    document.getElementById("preload").style.animation = "fadeout 3s ease";
    document.getElementById("myDiv").style.animation = "fadein 3s ease";
}