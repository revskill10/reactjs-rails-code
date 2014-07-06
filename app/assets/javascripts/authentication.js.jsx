/**
 * @jsx React.DOM
 */

 var Authentication = React.createClass({
 	getInitialState: function(){

 	},
 	componentWillMount: function(){

 	},
 	render: function(){
 		if (this.state.authenticated === true) {
 			return (
 				<span>Welcome {this.state.fullname}</span>
 			);
 		} else {
 			return (
 				<p>
 					<a href="#/sign_in">Sign in</a> | <a href="#/sign_up">Sign up</a>
 				</p>
 			);
 		}
 	}
 });