const navMobile = document.querySelector(".nav-mobile");
const navBtn = document.querySelector(".burger-btn");
const allNavItems = document.querySelectorAll(".nav__link");
const footerYear = document.querySelector(".footer__year");
// const progress = document.querySelectorAll(".page");
// const prevBtn = document.querySelector(".btn-left");
// const nextBtn = document.querySelector(".btn-right");
const section = document.querySelectorAll("section");
// document.getElementById("message").style.display = "block";
window.onscroll = () => {
	section.forEach((sec) => {
		let top = window.scrollY;
		let offset = sec.offsetTop - 150;
		let height = sec.offsetHeight;
		let id = sec.getAttribute("id");

		if (top >= offset && top < offset + height) {
			allNavItems.forEach((links) => {
				links.classList.remove("active");
				document
					.querySelector("header nav a[href*=" + id + "]")
					.classList.add("active");
			});
		}
	});
};

const handleCurrentYear = () => {
	const year = new Date().getFullYear();
	footerYear.innerText = year;
};
const loginButtonsmall = document.getElementById("login-buttonsmall");
const registerButtonsmall = document.getElementById("register-buttonsmall");
const loginButtonbig = document.getElementById("login-buttonbig");
const registerButtonbig = document.getElementById("register-buttonbig");
const btnClose = document.querySelector(".btn-close");
const loginDiv = document.querySelector(".login-theme");
const loginDivid = document.querySelector(".login-theme");
const registerDiv = document.querySelector(".register-theme");

const handleNav = () => {
	navMobile.classList.toggle("nav-mobile--active");

	allNavItems.forEach((item) => {
		item.addEventListener("click", () => {
			navMobile.classList.remove("nav-mobile--active");
		});
	});
};

loginButtonsmall.addEventListener("click", function () {
	console.log("object");
	loginDiv.classList.toggle("active-login");
});

loginButtonbig.addEventListener("click", function () {
	console.log("2");
	loginDiv.classList.toggle("active-login");
});

registerButtonsmall.addEventListener("click", function () {
	registerDiv.classList.toggle("active-register");
});

registerButtonbig.addEventListener("click", function () {
	registerDiv.classList.toggle("active-register");
});

btnClose.addEventListener("click", function () {
	// registerDiv.classList.remove("active-register");
	registerDiv.classList.remove("active-login");
});

navBtn.addEventListener("click", handleNav);

handleCurrentYear();

const userName=document.querySelector('#imieR');
const userLastName=document.querySelector('#nazwiskoR');
const userEmail=document.querySelector('#emailR');
const userPassword=document.querySelector('#passwordR');
const userPassword2=document.querySelector('#password-repeatR');
const userLogin=document.querySelector('#loginR');
const btnReg=document.querySelector('#btnReg');

const checkForm=input=>{
	console.log(input);

	if(input.value===''){
		console.log('blad');
	}
}

btnReg.addEventListener('click')