var React = require('react');
var ReactDOM = require('react-dom');
var WebStorage = require('react-webstorage');


var webStorage = new WebStorage(window.localStorage ||
    window.sessionStorage /* or poly-fill thereof */
);
const menuContainer = document.getElementById('d1');
