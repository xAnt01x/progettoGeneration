

var modal = document.getElementById("loginModal");
var loginBtn = document.getElementById("loginBtn");
var closeBtn = document.getElementsByClassName("close")[0];

loginBtn.onclick = function() {
  modal.style.display = "block";
}

closeBtn.onclick = function() {
  modal.style.display = "none";
}
 


function updateName(){
  modal.style.display = "none";
  fetch("/loggedname")
  .then((response) => response.text())
  .then((data) => {
    console.log(data)
    loginButton.hidden=true;
  logoutButton.hidden=false;
  loggedName.hidden=false;
  loggedName.innerHTML="Salve " +data;
  })
  getLoginId();
}
function logout(){
  fetch("/logout")
  loginButton.hidden=false;
  logoutButton.hidden=true;
  loggedName.innerHTML="";

}

function logged(){
  fetch("/logged")
  .then((response) => response.text())
  .then((data) => {
      if(data == "true"){
        updateName();
        

      } 
  })
}
function tryLogin() {

console.log("prova funzione");
    fetch("/login", {
      method: "POST",
      headers: {
        
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username: username.value,
        password: password.value,
      }),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data)
        if (data === true) {
          updateName();
        }
      })
      .catch((err) => {
        console.log(err);
       });
  }


  function getLoginId() {
    fetch("/loggedId")
      .then(response => response.json())
      .then(id => { 
        if (id == 1) {
          hiddenPage.style.display = 'block';
          let elements = document.getElementsByClassName('inv');
          for (let i = 0; i < elements.length; i++) {
            elements[i].style.display = 'block';
          }
        } else {
          hiddenPage.style.display = 'none';
          let elements = document.getElementsByClassName('inv');
          for (let i = 0; i < elements.length; i++) {
            elements[i].style.display = 'none';
          }
        }
      });
      
    return 1; 
  }
  
  logged();


  


    
