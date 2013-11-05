AniMemeApp.factory "scene", [() ->
	init: ()->
		scene = new THREE.Scene()
		camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 10000)
		camera.position.z = 50

		renderer = new THREE.WebGLRenderer()
		renderer.setSize(window.innerWidth, window.innerHeight)
		renderer.setClearColor(0x000000)

		document.body.appendChild(renderer.domElement)

		animate =  ()->
			requestAnimationFrame(animate)
			render()
		render = ()->
			renderer.setClearColor(0x000000)
			renderer.render(scene, camera) 
			console.log('wah')
		animate()
]



	# animate: ()->
	# 	requestAnimationFrame(animate)
	# 	// Using a fixed time-step here to avoid pauses
	# 	render(0.016)

	# render: ()->
	# 	renderer.render(scene, camera) 