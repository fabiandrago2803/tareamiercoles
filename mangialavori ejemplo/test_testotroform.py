# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class TestTestotroform():
  def setup_method(self, method):
    self.driver = webdriver.Remote(command_executor='http://localhost:4444/wd/hub', desired_capabilities=DesiredCapabilities.CHROME)
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_testotroform(self):
    # Test name: test otroform
    # Step # | name | target | value
    # 1 | open | https://3shjpwmm.forms.app/formulario-de-contacto-web | 
    self.driver.get("https://3shjpwmm.forms.app/formulario-de-contacto-web")
    # 2 | setWindowSize | 1366x728 | 
    self.driver.set_window_size(1366, 728)
    # 3 | click | id=i-text-1 | 
    self.driver.find_element(By.ID, "i-text-1").click()
    # 4 | type | id=i-text-1 | fabian
    self.driver.find_element(By.ID, "i-text-1").send_keys("fabian")
    # 5 | click | id=i-text-2 | 
    self.driver.find_element(By.ID, "i-text-2").click()
    # 6 | type | id=i-text-2 | dragonetti
    self.driver.find_element(By.ID, "i-text-2").send_keys("dragonetti")
    # 7 | sendKeys | id=i-text-2 | ${KEY_ENTER}
    self.driver.find_element(By.ID, "i-text-2").send_keys(Keys.ENTER)
    # 8 | type | id=i-text-3 | fabian@gmail.com
    self.driver.find_element(By.ID, "i-text-3").send_keys("fabian@gmail.com")
    # 9 | sendKeys | id=i-text-3 | ${KEY_ENTER}
    self.driver.find_element(By.ID, "i-text-3").send_keys(Keys.ENTER)
    # 10 | type | id=i-text-4 | tarea testing
    self.driver.find_element(By.ID, "i-text-4").send_keys("tarea testing")
    # 11 | sendKeys | id=i-text-4 | ${KEY_ENTER}
    self.driver.find_element(By.ID, "i-text-4").send_keys(Keys.ENTER)
    # 12 | type | id=i-text-5 | tarea probar un caso de testing en otro form
    self.driver.find_element(By.ID, "i-text-5").send_keys("tarea probar un caso de testing en otro form")
    # 14 | sendKeys | id=i-text-7 | ${KEY_ENTER}
    self.driver.find_element(By.ID, "i-text-7").send_keys(Keys.ENTER)
    # 15 | click | css=.i-checkbox:nth-child(3) .before-checkbox | 
    self.driver.find_element(By.CSS_SELECTOR, ".i-checkbox:nth-child(3) .before-checkbox").click()
    # 16 | click | css=.i-checkbox:nth-child(4) .before-checkbox | 
    self.driver.find_element(By.CSS_SELECTOR, ".i-checkbox:nth-child(4) .before-checkbox").click()
    # 18 | click | css=.i-radio:nth-child(2) .before-radio | 
    self.driver.find_element(By.CSS_SELECTOR, ".i-radio:nth-child(2) .before-radio").click()
    # 19 | click | css=.terms-checkbox .before-checkbox | 
    self.driver.find_element(By.CSS_SELECTOR, ".terms-checkbox .before-checkbox").click()
  