class QuestionSix

     def division(a,b)
        begin
            if b == 0 then
                raise
            end
            r=a/b
        rescue
            r=0
        end
        return r
    end


     def discount(*arr)
        idx = 0
        total = 0
        while idx < arr.size
          total +=  yield(arr[idx])
          idx += 1
        end
        return total.to_i
    end
    def inputForm()
        p "�l�i���ő�5���͂��Ă�������(�I����end):"
        total = 0
        count = 0
        input = ""
        array = []
        while input != "end" do
            flag = false
            begin
                input = gets.chomp
                if input == "end" then
                    break
                end
                if input.to_i <= 0  then
                    raise
                end
            rescue
                p input + "�͕s���ł��B���������l����͂��Ă�������"
            retry
            end

             total += input.to_i
            array.push(input.to_i)
            count += 1

             if count > 4 then
                break
            end
        end

         puts "���v��" + total.to_s + "�~�Œl������̍��v���z��" + self.discount(*array){|num| num * 0.8}.to_s + "�~�ł�"
    end
end


 qSix = QuestionSix.new
p qSix.discount(1000,2000,3000){|num| num * 0.8}
qSix.inputForm()  