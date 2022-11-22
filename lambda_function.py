import json
import subprocess


def lambda_handler(event=None, context=None):
    body = event['body']
    body = json.loads(body)
    url = body['url']
    command = ["./subfinder", "-d", url, "-o", "output.json", "-oJ", "-nW"]
    try:
        response = subprocess.run(command, stdout=subprocess.PIPE)
        print(response)
        with open('output.json') as f:
            print(f.readlines())
            data = json.load(f)
            print(data)
            return {
                'statusCode': 200,
                'body': json.dumps(data)
            }
    except Exception as e:
        print(e)
        return {
            'statusCode': 500,
            'body': json.dumps(str(e))
        }

