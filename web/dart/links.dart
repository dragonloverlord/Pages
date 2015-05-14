library main.links;

import 'dart:html';

String url = 'blank';
String text = 'blank';
Element container = new Element.tag('div');
Element linkHolder = new Element.tag('button');
Element link = new Element.tag('a');


class Links {
  static void addLink(url, text) {
    container = new Element.tag('div');
    container.setAttribute('class', 'link-box');
    container.setAttribute('id', 'build');
    querySelector('#main-container').append(container);
    
    link = new Element.tag('a');
    link.setAttribute('class', 'link');
    link.setAttribute('href', url);
    link.setAttribute('target', '_blank');
    link.setAttribute('id', 'build-link');
    querySelector('#build').append(link);
    
    linkHolder = new Element.tag('button');
    linkHolder.setAttribute('class', 'link-holder');
    linkHolder.setAttribute('type', 'button');
    linkHolder.appendText(text);
    querySelector('#build-link').append(linkHolder);
    
    querySelector('#build').setAttribute('id', 'complete');
    querySelector('#build-link').setAttribute('id', 'complete-link');
  }
}