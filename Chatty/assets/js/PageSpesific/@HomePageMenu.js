jQuery(function($) {

  //change menu texts to make them shorter
  var sidebarNames = ['Home', 'Layouts', 'Elements', 'Tables', 'Forms', 'Cards', 'Calendar', 'Gallery', 'More'];
  $('#sidebar2 .nav > .nav-item > .nav-link > .nav-text > span:first-child').each(function(index) {
    $(this).text(sidebarNames[index])
  })
  $('#sidebar2 .badge').remove();

  $('#id-btn-sidebar-right').on('click', function() {
    $('#sidebar1').toggleClass('sidebar-right');
    $('#sidebar1 .nav').toggleClass('active-on-right')
  })

});