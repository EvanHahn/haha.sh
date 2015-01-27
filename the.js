/* global Typewriter */

var laughtext = document.querySelector('noscript').innerHTML.split('./haha.sh')[1];

new Typewriter('#terminal', {
  text: './haha.sh',
  interval: 'human'
}).type(function() {
  setTimeout(function() {
    new Typewriter('#terminal', {
      text: laughtext,
      interval: 30
    }).type();
  }, 600);
});
