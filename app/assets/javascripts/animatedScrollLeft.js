document.addEventListener("turbolinks:load", function() {

  document.getElementById('scrollLeft').onclick = function () {
    toggleNavMenu();
  }
  document.querySelector("h1").onclick = function () {
    toggleNavMenu();
  }
  document.querySelector(".btn-index").onclick = function () {
    toggleNavMenu();
  }

  function toggleNavMenu() {
    if (document.body.scrollLeft == 0) {
      scrollLeft(document.body, 240, 400);
    } else {
      scrollLeft(document.body, 0, 400);
    }
  }

  function scrollLeft(element, to, duration) {
    var start = element.scrollLeft,
      change = to - start,
      currentTime = 0,
      increment = 20;

    var animateScroll = function(){
      currentTime += increment;
      var val = Math.easeInOutQuad(currentTime, start, change, duration);
      element.scrollLeft = val;
      if(currentTime < duration) {
        setTimeout(animateScroll, increment);
      }
    };
    animateScroll();
  }

  //t = current time
  //b = start value
  //c = change in value
  //d = duration
  Math.easeInOutQuad = function (t, b, c, d) {
    t /= d/2;
    if (t < 1) return c/2*t*t + b;
    t--;
    return -c/2 * (t*(t-2) - 1) + b;
  };



  // Scroll from nav to content on page load
  scrollLeft(document.body, 240, 400);
  history.scrollRestoration = 'manual';
});