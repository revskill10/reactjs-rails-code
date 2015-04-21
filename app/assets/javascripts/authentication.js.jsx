/**
 * @jsx React.DOM
 */

 var Authentication = React.createClass({
 	getInitialState: function(){
 		return {};
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

var SignInView = React.createClass({
	render: function(){
		return (
			<div>
				<form>
					<input type="text" id="email" /><br/>
					<input type="password" id="password"/>
				</form>
			</div>
		);
	}
}) 