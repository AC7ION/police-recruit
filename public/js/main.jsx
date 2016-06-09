var React = require('react');
var ReactDOM = require('react-dom');
var WebStorage = require('react-webstorage');
var Button = require('react-bootstrap').Button;

var webStorage = new WebStorage(window.localStorage ||
    window.sessionStorage /* or poly-fill thereof */
);

const weightsContainer = document.getElementById('weightsContainer');


ReactDOM.render(
    <Button>
        test
    </Button>
, weightsContainer);

