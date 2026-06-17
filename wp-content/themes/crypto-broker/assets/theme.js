/* Crypto Broker theme — mobile nav toggle */
(function () {
	'use strict';
	var toggle = document.querySelector('.nav-toggle');
	var nav = document.querySelector('.nav-primary');
	if (toggle && nav) {
		toggle.addEventListener('click', function () {
			nav.classList.toggle('open');
		});
	}
})();
