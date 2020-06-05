import React, { Component } from 'react'
import PropTypes from 'prop-types';

class GetPosts extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      posts: []
    };
  }

  componentDidMount() {
    fetch("/posts")
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            posts: result
          });
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error
          });
        }
      )
  }

  render() {
    const { error, isLoaded, posts } = this.state;
      return (<div>
    	{this.state.posts.map((post, index) => (
        	<p key={index}>{post.message}</p>

   		))}
    </div>);
    
  }
}

export default GetPosts;