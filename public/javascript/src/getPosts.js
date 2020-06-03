let lastIdLoaded = null;

window.onload = function(){
	getNext5();	
}

function getNext5(){

	let url = '/posts'

	if(lastIdLoaded != null){
		url = '/posts?id=' + lastIdLoaded;
	}

	fetch(url)
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