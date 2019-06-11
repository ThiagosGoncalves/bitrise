class HomeBitbar < Utilites
    def button_ok()
        esperar_por(30) { find_element(:id, 'android:id/button1') }
    end

    def text_box()
        esperar_por(30) { find_element(:id, 'com.bitbar.testdroid:id/editText1') }
    end

    def radio_select()
        esperar_por(30) { find_elements(:class_name, 'android.widget.RadioButton') }
    end

    def button_answer()
        esperar_por(30) {find_element(:id, 'com.bitbar.testdroid:id/button1')}
    end
end