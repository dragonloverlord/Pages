library main.add_page;

import 'dart:html';

String id = null;
Element overlayDiv = null;
Element closeButton = null;
Element iframeContainer = null;
Element iframe = null;

class AddPage {
  static void main() {
    querySelector('#add-page').addEventListener('click', addPageDialog);
  }
  
  static void addPageDialog(mouseEvent) {
    addShader();
    addCloseButton();
  }
  
  static void addShader() {
    id = 'overlay-div';
    overlayDiv = new Element.tag('div');
    overlayDiv.setAttribute('id', id);
    querySelector('#body').append(overlayDiv);
  }
  
  static void addCloseButton() {
    id = 'close-button';
    closeButton = new Element.tag('button');
    closeButton.setAttribute('id', id);
    closeButton.text = 'X';
    querySelector('#overlay-div').append(closeButton);
    
    querySelector('#close-button').addEventListener('click', closeButtonActions);
  }
  
  static void closeButtonActions(mouseEvent) {
    querySelector('#overlay-div').remove();
  }
}