(function () {

  $('#year').html(new Date().getFullYear());
  $('.header-menuIcon > .material-icons').click(function () {
    $('.header-mobileMenu').addClass('is-slide');
    $('.layer').addClass('is-visiable');
    $('body').addClass('is-locked');
  })

  $('.header-whitelogo-wrappper > .material-icons').click(function () {
    $('.header-mobileMenu').removeClass('is-slide');
    $('.layer').removeClass('is-visiable');
    $('body').removeClass('is-locked');    
  })

  var headers = [
    $('.qlear-header'),
    $('.header-mobileMenu')
  ];

  var content = $('.content');

  function updateHeader(numberString) {
    headers.forEach(function (headDOM) {
      headDOM.css(
        'background-color',
        'rgba(255, 255, 255,' + numberString +')'
      );
    })
  }

  function detectHeader(isShow) {
    headers.forEach(function (headDOM) {
      if (isShow) {
        headDOM.removeClass('is-hidden');
      } else {
        headDOM.addClass('is-hidden');
      }
    })

  }

  var scrollTimer = null;
  var lastPercent = null;
  var lastScrollTop = 0;
  function scrollHandle(e) {
    var windowHeight = window.innerHeight ||
    document.documentElement.clientHeight ||
    document.body.clientHeight;

    windowHeight /= 2;

    var scrollTop = e.target.scrollingElement.scrollTop;
    var percent = scrollTop / windowHeight;
    percent = percent > 1 ? '1' : percent.toFixed(2);
    if (lastPercent !== percent) {
      updateHeader(percent);
      lastPercent = percent;
    }

    if (lastPercent === '1') {
      headers[0].addClass('is-fixed');
      headers[1].addClass('is-fixed');
      content.addClass('is-fixed');

      if (lastScrollTop < scrollTop) {
        detectHeader(false);
      } else {
        detectHeader(true);
      }
    }

    if (percent === '0.00') {
      headers[0].removeClass('is-fixed');
      headers[1].removeClass('is-fixed');      
      content.removeClass('is-fixed');
    }

    lastScrollTop = scrollTop;
    
  }

  $(window).on('scroll', scrollHandle);
})()