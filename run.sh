#### Launch the controller
python3 -m fastchat.serve.controller

# This controller manages the distributed workers.

#### Launch the model worker(s)
python3 -m fastchat.serve.model_worker --model-path /hy-tmp/model/ultralm-13b
# Wait until the process finishes loading the model and you see "Uvicorn running on ...". The model worker will register itself to the controller .

# To ensure that your model worker is connected to your controller properly, send a test message using the following command:
python3 -m fastchat.serve.test_message --model-name ultralm-13b
# You will see a short output.

#### Launch the Gradio web server
python3 -m fastchat.serve.gradio_web_server


# cmd test
python3 -m fastchat.serve.cli --model-path /hy-tmp/model/ultralm-13b
