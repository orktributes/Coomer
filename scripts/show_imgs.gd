extends GridContainer

@onready var rule34_imgs_node = preload("res://scenes/rule34_imgs.tscn")

func get_imgs(url):
	var rule34_http_request = HTTPRequest.new()
	add_child(rule34_http_request)
	rule34_http_request.request_completed.connect(_rule34_http_request_completed)
	
	var rule34_http_request_error = rule34_http_request.request(url)
	if rule34_http_request_error != OK:
		push_error("An error occurred in the HTTP request.")

func _rule34_http_request_completed(result, response_code, headers, body):
	var json = JSON.new()
	json.parse(body.get_string_from_utf8())
	var response = json.get_data()
	for i in len(response):
		var get_data_http_request = HTTPRequest.new()
		add_child(get_data_http_request)
		get_data_http_request.request_completed.connect(self._get_data_http_request_completed)

		var get_data_http_request_error = get_data_http_request.request(response[i]["preview_url"])
		if get_data_http_request_error != OK:
			push_error("An error occurred in the HTTP request.")
			#print(response[i]["preview_url"])

func _get_data_http_request_completed(result, response_code, headers, body):
	if result != HTTPRequest.RESULT_SUCCESS:
		push_error("Image couldn't be downloaded.")
	
	var image = Image.new()
	var error = image.load_jpg_from_buffer(body)
	if error != OK:
		push_error("Couldn't load the image.")

	var texture = ImageTexture.create_from_image(image)

	# Display the image in a TextureRect node.
	var rule34_imgs_instance = rule34_imgs_node.instantiate()
	add_child(rule34_imgs_instance)
	rule34_imgs_instance.texture = texture

func _process(delta):
	pass


func _on_button_pressed():
	var beas = "https://api.rule34.xxx/index.php?page=dapi&s=post&q=index&json=1&limit=20&tags=source+-ai+" + $"../../../MarginContainer/LineEdit".text
	get_imgs(beas)
	
