/* Broker Manager — lọc & sắp xếp danh sách card phía client */
(function () {
	'use strict';
	document.querySelectorAll('.brkm-wrap').forEach(function (wrap) {
		var list = wrap.querySelector('.brkm-list');
		if (!list) return;
		var search = wrap.querySelector('.brkm-search');
		var filterReg = wrap.querySelector('.brkm-filter-reg');
		var sort = wrap.querySelector('.brkm-sort');
		var cards = function () {
			return Array.prototype.slice.call(list.querySelectorAll('.brk-card'));
		};

		function apply() {
			var q = (search && search.value || '').toLowerCase().trim();
			var reg = (filterReg && filterReg.value || '').toLowerCase();
			var visible = cards().filter(function (card) {
				var name = card.getAttribute('data-name') || '';
				var rreg = card.getAttribute('data-reg') || '';
				var okName = !q || name.indexOf(q) !== -1;
				var okReg = !reg || rreg.indexOf(reg) !== -1;
				card.style.display = (okName && okReg) ? '' : 'none';
				return okName && okReg;
			});

			var mode = sort ? sort.value : 'rating';
			visible.sort(function (a, b) {
				if (mode === 'name') {
					return a.getAttribute('data-name').localeCompare(b.getAttribute('data-name'));
				}
				if (mode === 'deposit') {
					return parseFloat(a.getAttribute('data-deposit')) - parseFloat(b.getAttribute('data-deposit'));
				}
				return parseFloat(b.getAttribute('data-rating')) - parseFloat(a.getAttribute('data-rating'));
			});

			visible.forEach(function (card, i) {
				list.appendChild(card);
				var rank = card.querySelector('.brk-rank');
				if (rank) rank.textContent = '#' + (i + 1);
			});

			var empty = wrap.querySelector('.brkm-empty');
			if (!visible.length) {
				if (!empty) {
					empty = document.createElement('div');
					empty.className = 'brkm-empty';
					empty.textContent = 'Không tìm thấy broker phù hợp.';
					list.appendChild(empty);
				}
			} else if (empty) {
				empty.remove();
			}
		}

		[search, filterReg, sort].forEach(function (el) {
			if (!el) return;
			el.addEventListener('input', apply);
			el.addEventListener('change', apply);
		});
		apply();
	});
})();
