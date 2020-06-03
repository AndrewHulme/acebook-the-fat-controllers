let lastIdLoaded = null;

window.onload = function(){

	fetch('/posts')
	  .then(function(response) { return response.json()})
	  .then(function(data) {

	    let div = document.createElement('div');
	    div.setAttribute('class', 'posts');

	    for (i= 0; i < data.length; i++) {
    		let element = document.createElement('p');
			element.innerHTML = data[i].message;
			div.appendChild(element);
	    }

	    document.getElementById('postsContainer').appendChild(div);

	    lastIdLoaded = data[data.length - 1].id;
	  });	
}

function getNext5(){

	fetch('/posts?id=' + lastIdLoaded)
	  .then(function(response) { return response.json()})
	  .then(function(data) {

	    let div = document.createElement('div');
	    div.setAttribute('class', 'posts');

    	for (i= 0; i < data.length; i++) {
    		let element = document.createElement('p');
			element.innerHTML = data[i].message;
			div.appendChild(element);
	    }

	    document.getElementById('postsContainer').appendChild(div);

	    if(data.length > 0){
	    	lastIdLoaded = data[data.length - 1].id;
	    }
	  });
}