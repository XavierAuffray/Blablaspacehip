const flashRemover = () => {
  let alertEl = document.querySelector(".flash.flash-success.alert.alert-dismissible.fade.hide")
  // const signIn = parseInt(alertEl.dataset.signin)

  const logOut = document.querySelectorAll('.dropdown-item')[3]
  const counter = localStorage.getItem('counter')
  console.log(counter)

  if (alertEl && counter === null){

    console.log('hello')
    alertEl.classList.replace("hide", "show")
    setTimeout(() => {
      alertEl.classList.replace("show", "hide")
    }, 4000)
    localStorage.setItem('counter', '1')

  }

  const clean = () => {
    console.log('clear function')
    localStorage.clear();
  }

  logOut.addEventListener('click', clean )

}

export { flashRemover }
