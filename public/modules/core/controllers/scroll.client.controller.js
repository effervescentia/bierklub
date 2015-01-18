'use strict';

angular.module('core').controller('ScrollController', ['$scope', '$location', '$anchorScroll',
	function($scope, $location, $anchorScroll) {
		$scope.goToNews = function () {
			$location.url('/');
			$location.hash('news');
			$anchorScroll();
		};
	}
]);
