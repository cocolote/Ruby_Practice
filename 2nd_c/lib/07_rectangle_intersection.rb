def intersect?(line_a, line_b)

  if line_b[0] < line_a[0]
    aux = line_a
    line_a = line_b
    line_b = aux
  end

  if line_a[1] >= line_b[0]
    if line_a[1] <= line_b[1]
      return [true, [line_b[0],line_a[1]]]
    else
      return [true, [line_b[0],line_b[1]]]
    end
  else
    return [false, []]
  end

end

def rec_intersection(rectangle_a, rectangle_b)

  rec_a_x = [rectangle_a[0][0], rectangle_a[1][0]]
  rec_b_x = [rectangle_b[0][0], rectangle_b[1][0]]

  x_result = intersect?(rec_a_x, rec_b_x)

  rec_a_y = [rectangle_a[0][1], rectangle_a[1][1]]
  rec_b_y = [rectangle_b[0][1], rectangle_b[1][1]]

  y_result = intersect?(rec_a_y, rec_b_y)

  if x_result[0] && y_result[0]
    return [[x_result[1][0], y_result[1][0]], [x_result[1][1], y_result[1][1]]]
  else
    nil
  end

end
