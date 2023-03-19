# I followed these steps: https://rollbar.com/blog/how-to-integrate-chatgpt-into-your-python-script/

import openai
openai.api_key = "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"
model_engine = "gpt-3.5-turbo"
# This specifies which GPT model to use, as there are several models available, each with different capabilities and performance characteristics.

response = openai.ChatCompletion.create(
    model='gpt-3.5-turbo',
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Please recommend a book on Public Health, including the title and author only. Keep in mind that I'm not interested in additional context or information beyond the title and author."},
    ])

message = response.choices[0]['message']
print("{}: {}".format(message['role'], message['content']))


###function below that should be called from my form.py###


# openai.api_key = "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"
# model_engine = "gpt-3.5-turbo"

# def get_book_recommendation(industry):
#     response = openai.ChatCompletion.create(
#         model=model_engine,
#         messages=[
#             {"role": "system", "content": "You are a helpful assistant."},
            
#             {"role": "user", "content": f"Please recommend a book on {industry}, including the title and author only. Keep in mind that I'm not interested in additional context or information beyond the title and author."},
#         ])
#     message = response.choices[0]['text']
#     return message

