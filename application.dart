import 'dart:html';

void main() {
  var btn = document.querySelector("#btn");
  window.console.log(btn);
  btn.addEventListener("click", updateHeader);
}

void updateHeader(e) {
  var header = querySelector("#header");

  try {
    var postion_el = querySelector("#position");
    var pos = header.getBoundingClientRect();
    postion_el.text = "Header position | left: ${pos.left}, right: ${pos.right}";
    header.text = "Another Header";
  } catch(e) {
    header.text = "Error! Open console to get details.";
    rethrow;
  }
}
