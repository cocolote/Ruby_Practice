class Friend
  def greeting(name = '')
    name != '' ? 'Hello' + ", #{name}!" : 'Hello!'
  end
end
