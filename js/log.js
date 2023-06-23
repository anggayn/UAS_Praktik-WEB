const SignUpButton = document.getElementById('SignUp');
const SignInButton = document.getElementById('SignIn');
const Main = document.getElementById('main');

SignUpButton.addEventListener('click', () => {
    Main.classList.add("right-panel-active");
})

SignInButton.addEventListener('click', () => {
    Main.classList.remove("right-panel-active");
});