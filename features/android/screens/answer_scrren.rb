class Answer < Utilites
def logo_img()
    esperar_por(30) { find_element(:id, 'com.bitbar.testdroid:id/imageView1')}
end

def first_text_answer()
    esperar_por(30) { find_element(:id, 'com.bitbar.testdroid:id/textView1') }
end

def second_text_answer()
    esperar_por(30) { find_element(:id, 'com.bitbar.testdroid:id/textView2') }
end
end
