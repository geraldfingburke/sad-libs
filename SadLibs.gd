extends Node2D

var player_words = [] # the words the player chooses
var prompt = ["Verb", "Verb", "Verb", "Plural Noun", "State of Being"]
var story = "Sometimes all you can do is %s. %s on with your day, %s the %s and pretend you're %s."

func _ready():
	$Background/StoryText.text = ("Welcome to Sad Libs, the game where you generate sad looking pictures to feign depth." + "\nCan I have a " + prompt[player_words.size()] + ", please?") 

func _on_SubmitButton_pressed():
	var new_text = $Background/TextBox.get_text()
	_on_TextBox_text_entered(new_text)
	$Background/TextBox.text = ""

func _on_TextBox_text_entered(new_text):
	player_words.append(new_text)
	$Background/TextBox.text = ""
	print (player_words)
	check_player_word_length()

func prompt_player():
	$Background/StoryText.text = ("Can I have a " + prompt[player_words.size()] + ", please?")

func check_player_word_length():
	if player_words.size() == prompt.size():
		tell_story()
	else:
		prompt_player() 

func tell_story():
	$Background/StoryText.text = story % player_words