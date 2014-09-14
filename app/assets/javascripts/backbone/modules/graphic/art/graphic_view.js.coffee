@Lunar.module 'Graphic.Art', (Art, App) ->
  class Art.Graphic extends App.Views.ItemView
    template: 'graphic/art/templates/graphic'

    ui:
      'container': '#graphic-container'

    onShow: ->
      window.graphic = @
      @setupGraphic()

    setupGraphic: ->
      @setupScene()
      @setupCamera()
      @setupRenderer()
      @addCube()

    setupScene: ->
      @scene = new THREE.Scene()

    setupCamera: ->
      @camera = new THREE.PerspectiveCamera( 75, @ui.container.width() / window.innerHeight, 0.1, 1000 )

    setupRenderer: ->
      @renderer = new THREE.WebGLRenderer()
      @renderer.setSize( (window.innerWidth - 170), window.innerHeight)
      @renderer.setClearColor('rgb(27, 27, 27)', 1)
      @ui.container.append( @renderer.domElement )

    addCube: ->
      texture = THREE.ImageUtils.loadTexture('assets/eye.png');

      materials = []
      _(40).times ->
        materials.push(new THREE.MeshBasicMaterial( { map: texture } ))

      faceMaterial = new THREE.MeshFaceMaterial(materials)
      geometry = new THREE.IcosahedronGeometry( 40, 1 )
      geometry2 = new THREE.IcosahedronGeometry( 40, 1 )


      darkMaterial = new THREE.MeshBasicMaterial( { color: 'rgb(226, 30, 31)' } )
      wireframeMaterial = new THREE.MeshBasicMaterial( { color: 'rgb(0,0,0)', wireframe: true, transparent: false, wireframeLinewidth: 2 } )
      multiMaterial = [darkMaterial, wireframeMaterial ]
      @cube = THREE.SceneUtils.createMultiMaterialObject(geometry, multiMaterial)
      @cube2 = new THREE.Mesh(geometry2, new THREE.MeshBasicMaterial( { color: 'rgb(0,0,0)'}))
      @scene.add(@cube2)
      @scene.add( @cube)
      @camera.position.z = 200
      @animate()


    animate: =>
      requestAnimationFrame(@animate)
      @cube.rotation.x += 0.001
      @cube.rotation.y += 0.001
      @cube.position.y = Math.sin(Date.now() / 2000) * 10
      @cube2.rotation.x += 0.011
      @cube2.rotation.y += 0.011
      @cube2.position.y = Math.sin(Date.now() / 2000) * 16
      @renderer.render(@scene, @camera)
