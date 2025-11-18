from selenium import webdriver
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
import time

username = "your_email@example.com"
password = "your_password"

driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
driver.maximize_window()

try:
    driver.get("https://login.salesforce.com")

    # Login
    driver.find_element(By.ID, "username").send_keys(username)
    driver.find_element(By.ID, "password").send_keys(password)
    driver.find_element(By.ID, "Login").click()
    time.sleep(3)

    # Open Leads
    driver.get("https://yourInstance.lightning.force.com/lightning/o/Lead/home")
    time.sleep(3)

    # Create new Lead
    driver.find_element(By.XPATH, "//div[@title='New']").click()
    time.sleep(2)

    driver.find_element(By.XPATH, "//input[@name='firstName']").send_keys("Test")
    driver.find_element(By.XPATH, "//input[@name='lastName']").send_keys("Automation")
    driver.find_element(By.XPATH, "//input[@name='Company']").send_keys("TestCo")
    driver.find_element(By.XPATH, "//button[@name='SaveEdit']").click()
    time.sleep(3)

    # Screenshot
    driver.save_screenshot("screenshots/lead_created_selenium.png")

finally:
    driver.quit()

