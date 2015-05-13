library main.links;

import 'dart:html';

String url = null;
String text = null;
String id = null;
String containerId = null;
String linkId = null;
Element container = null;
Element linkHolder = null;
Element link = null;


class Links {
  static void addLink(url, text) {
    id = 'build';
    containerId = '#' + id;
    linkId = containerId + '-link';
    container = new Element.tag('div');
    container.setAttribute('class', 'link-box');
    container.setAttribute('id', id);
    querySelector('#main-container').append(container);
    
    link = new Element.tag('a');
    link.setAttribute('class', 'link');
    link.setAttribute('href', url);
    link.setAttribute('target', '_blank');
    link.setAttribute('id', id + '-link');
    querySelector(containerId).append(link);
    
    linkHolder = new Element.tag('button');
    linkHolder.setAttribute('class', 'link-holder');
    linkHolder.setAttribute('type', 'button');
    linkHolder.appendText(text);
    querySelector(linkId).append(linkHolder);
    
    querySelector('#' + id).setAttribute('id', 'complete');
    querySelector('#' + id + '-link').setAttribute('id', 'complete-link');
  }
}