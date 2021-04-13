
import sys
import socket
import telegram
import configparser

def notifications(config, msg: str):

    if config == None:
        return

    token = config.get('SERVER', 'token')
    chat_id = config.get('USER', 'chat_id')
    hostname = socket.gethostname()

    msg = '[{}] {}'.format(hostname, msg)

    bot = telegram.Bot(token=token)
    bot.send_message(chat_id=chat_id, text=msg)


if __name__ == '__main__':

    if len(sys.argv) < 2:
        print('Please input args')
        exit()

    config = configparser.ConfigParser()
    config.read('config.ini')

    notifications(config, sys.argv[1])

