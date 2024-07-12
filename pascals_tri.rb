def pascals_triangle(rows)
    triangle = []
    rows.times do |row|
        curr_row = []
        (0..row).each do |col|
            if col == 0 || col == row
                curr_row << 1
            else
                curr_row << triangle[row-1][col-1] + triangle[row -1][col]
            end
        end
        triangle << curr_row
    end
    max_len = triangle.last.join(" ").length
    triangle.each do |row|
        row_str = row.join(" ")
        puts row_str.center(max_len)
    end
end

pascals_triangle(5)
