$(document).ready(function () {
	$(".owl-carousel").owlCarousel()
})

const button = document.getElementById("menu")

button.addEventListener("click", () => {
	const list = document.getElementById("nav-list")
	list.classList.toggle("hidden")
})
