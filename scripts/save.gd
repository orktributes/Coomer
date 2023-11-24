extends VBoxContainer




func _ready():
	pass
	
	
	
	
	
	
	
	
	
	
	#$ScrollContainer/HBoxContainer/show_imgs/rule34_imgs.texture = texture
	#var rule34_imgs_instance = rule34_imgs_node.instantiate()
	#add_child(rule34_imgs_instance)
	#rule34_imgs_instance.texture = texture
	#var texture_rect = TextureRect.new()
	#$ScrollContainer/HBoxContainer/show_imgs.add_child(texture_rect)
	#texture_rect.texture = texture



















# Called when the node enters the scene tree for the first time.
#func _ready():
#		# Create an HTTP request node and connect its completion signal.
#	var http_request = HTTPRequest.new()
#	add_child(http_request)
#	http_request.request_completed.connect(self._http_request_completed)
#
#	# Perform a GET request. The URL below returns JSON as of writing.
#	var error = http_request.request("https://api.rule34.xxx/index.php?page=dapi&s=post&q=index&json=1&limit=20&tags=source+futa")
#	if error != OK:
#		push_error("An error occurred in the HTTP request.")
#
#func _http_request_completed(result, response_code, headers, body):
#	var json = JSON.new()
#	json.parse(body.get_string_from_utf8())
#	var response = json.get_data()
#	for i in len(response):
#		#print("index: %s, value: %d" % [i, response[i]])
#		print(response[i]["preview_url"])
#	# Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
#




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
