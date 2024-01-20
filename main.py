from aiogram import Bot, Dispatcher
from aiogram.types import Message, ReplyKeyboardMarkup,KeyboardButton
from aiogram.filters import Command
from config import TOKEN

bot = Bot(token=TOKEN)
dp = Dispatcher()



if __name__ == "__main__":
    dp.run_polling(bot)  