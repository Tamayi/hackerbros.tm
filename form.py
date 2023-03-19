from flask import Flask, request, render_template
import psycopg2
from chatgptresponse import get_book_recommendation

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']
        location = request.form['location']
        industry = request.form['industry']
        
        # Get book recommendation
        book_recommendation = get_book_recommendation(industry)
        
        # Connect to database
        conn = psycopg2.connect(
            host="localhost",
            database="student_db",
            user="student",
            password="student")
        cur = conn.cursor()
        
        # Insert data into database
        cur.execute("INSERT INTO student_info (name, email, phone, location, industry, book_recommendation) VALUES (%s, %s, %s, %s, %s, %s)",
                    (name, email, phone, location, industry, book_recommendation))
        
        conn.commit()
        cur.close()
        conn.close()
        
        return 'Thank you'
    else:
        return render_template('form.html')

if __name__ == '__main__':
    app.run(port=5000, debug=True)



# def get_book_recommendation(industry):
#     prompt = f"I am looking for a book recommendation related to {industry}."
#     headers = {
#         'Content-Type': 'application/json',
#         'Authorization': f'Bearer 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',
#     }
#     data = {
#         'prompt': prompt,
#         'max_tokens': 100,
#         'n': 1,
#         'stop': '==='
#     }
#     response = requests.post('https://api.openai.com/v1/engines/davinci-codex/completions', headers=headers, json=data)
#     if response.status_code == 200:
#         book_recommendation = response.json()['choices'][0]['text'].strip()
#     else:
#         book_recommendation = None
#     return book_recommendation