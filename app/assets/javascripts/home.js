$( document ).ready(function() {
  var resetHomeSearch = function () {
    $('.naics-results .content').empty();
  };

  var displayLoadingGif = function () {
    $('.naics-results .loader').addClass('visible');
  };

  $('.js-search').on('click', function () {
    resetHomeSearch();
    displayLoadingGif();
  });
});