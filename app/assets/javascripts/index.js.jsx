/** @jsx React.DOM */
var HelloMessage = React.createClass({
  render: function() {
    return <a href="/blogs/new">New Blog</a>;
  }
});

React.renderComponent(<HelloMessage />, document.getElementById('new-blog'));