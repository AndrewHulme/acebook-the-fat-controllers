// let lastIdLoaded = null;

// window.onload = function(){
// 	getNext5();	
// }

// function getNext5(){

// 	let url = '/posts'

// 	if(lastIdLoaded != null){
// 		url = '/posts?id=' + lastIdLoaded;
// 	}

// 	fetch(url)
// 	  .then(function(response) { return response.json()})
// 	  .then(function(data) {

// 	    let div = document.createElement('div');
// 	    div.setAttribute('class', 'posts');

//     	for (i= 0; i < data.length; i++) {

//     		console.log(data[i]);

//     		let post = document.createElement('div')
//     		post.setAttribute('class', 'post');
//     		let element = document.createElement('p');
// 			element.innerHTML = data[i].message;
// 			post.appendChild(element);
// 			let dateHTML = document.createElement('small')
// 			date = new Date(data[i].created_at);
// 			date = date.toString().substring(0, 24);
// 			dateHTML.innerHTML = date;
// 			post.appendChild(dateHTML);
// 			div.appendChild(post);

// 	    }

// 	    document.getElementById('postsContainer').appendChild(div);

// 	    if(data.length > 0){
// 	    	lastIdLoaded = data[data.length - 1].id;
// 	    }
// 	  });
// }