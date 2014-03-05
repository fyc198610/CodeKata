class AGame
  #产生随机数
  def create_number
    right_number_arr = []
    while right_number_arr.length < 4
      n = rand(10)
      right_number_arr << n
      right_number_arr.uniq!
    end
    return right_number_arr
  end

  #校验输入
  def validate input
    if input.length!=4
      return {result:false, msg:'长度错误'}
    end
    if input !~ /^\d{4}$/
      return {result:false, msg:'只能输入数字'}
    end
    return {result:true}
  end

  #分析输入
  def analysis(input, right_number_arr)
    xx = 0
    yy = 0
    buf_arr = input.split('')
    buf_arr.each_index do |i|
      if buf_arr[i].to_i == right_number_arr[i]
        xx += 1
        next
      end
      yy += 1 if right_number_arr.include?(buf_arr[i].to_i)
    end
    return {xx:xx, yy:yy}
  end
end
