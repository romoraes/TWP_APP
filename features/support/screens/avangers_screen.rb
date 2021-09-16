class AvengersScreen
    def select_avengers(nome)
        find_element(id: 'io.qaninja.android.twp:id/rvList')
        case nome
        when 'Capitão América' then y = 0.18
        when 'Thor' then y = 0.33
        when 'Homem de Ferro' then y = 0.48
        when 'Hulk' then y = 0.63
        else y = 0.78
        end
        coord = { start_x: 0.93, start_y: y, offset_x: 0.48, offset_y: y, duration: 4500 }
        Appium::TouchAction.new.swipe(coord).perform
        find_element(id: 'io.qaninja.android.twp:id/btnRemove').click
    end
end

class Message
    def message
        return find_element(id: 'io.qaninja.android.twp:id/snackbar_text')
    end
end
