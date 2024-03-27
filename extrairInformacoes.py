from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pygame.mixer
from banco_de_dados import Supabase
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options


class getLoja:
    def __init__(self):

        self.servico=Service(ChromeDriverManager().install())
        self.tempo_maximo_espera=40
        self.sp = Supabase()
        self.iniciarAnotaAi()
        print(self.pegarNomeLoja())
        self.driver.quit()

    def iniciarAnotaAi(self, url="https://app.anota.ai/m/NBqH4QtTw"):
        chromeOptions = webdriver.ChromeOptions()
        chromeOptions.add_experimental_option("prefs", {"profile.managed_default_content_settings.images": 2})
        chromeOptions.add_argument("--no-sandbox")
        chromeOptions.add_argument("--disable-setuid-sandbox")
        chromeOptions.add_argument("--disable-dev-shm-using")
        chromeOptions.add_argument("--disable-extensions")
        chromeOptions.add_argument("start-maximized")
        chromeOptions.add_argument("disable-infobars")
        # Iniciar o navegador
        self.driver = webdriver.Chrome(service=self.servico, options=chromeOptions)
        self.driver.get(url)



    def pegarNomeLoja(self):
        elemento = WebDriverWait(self.driver, self.tempo_maximo_espera).until(
            EC.visibility_of_element_located((By.CSS_SELECTOR, 'h1.name'))
        )
        return elemento.text


    def alerta_de_perigo_audio(self):
        pygame.mixer.init()
        pygame.mixer.music.load('audio/alerta.mp3')
        pygame.mixer.music.play()
        time.sleep(5)


loja = getLoja()
