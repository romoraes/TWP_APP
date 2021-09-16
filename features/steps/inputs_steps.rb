Quando("eu escolho a opção Ruby") do
  @radio_locator = "//android.widget.RadioButton[contains(@text,'Ruby')]"
  find_element(xpath: @radio_locator).click
end
  
Então("esta opção deve ser marcada") do
  @radio_result = find_element(xpath: @radio_locator)
  expect(@radio_result.checked).to eql "true"
end

Quando("eu marco a opção Ruby") do
  @check_locator = "//android.widget.CheckBox[contains(@text,'Ruby')]"
  find_element(xpath: @check_locator).click
end

Então("esta opção deve estar marcada") do
  @check_result = find_element(xpath: @check_locator)
  expect(@check_result.checked).to eql "true"
end

Quando("eu marco as seguintes techs:") do |table|
  @techs = table.hashes
  # log(@techs)

  @techs.each do |item|
  # log(item["tech"])
    check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
    find_element(xpath: check_locator).click
  end
end

Então("todas essas opções devem estar marcadas") do
  @techs.each do |item|
    check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
    check_result = find_element(xpath: check_locator)
    expect(check_result.checked).to eql "true"
  end
end
