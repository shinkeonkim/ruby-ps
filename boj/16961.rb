tab_people_schedule = Array.new(367, 0)
blank_people_schedule = Array.new(367, 0)
total_people_schedule = Array.new(367, 0)

for _ in 1..gets.to_i
    category, start_at, end_at = gets.split
    if category == 'T'
        for day in start_at.to_i..end_at.to_i
            tab_people_schedule[day] += 1
            total_people_schedule[day] += 1
        end
    else
        for day in start_at.to_i..end_at.to_i
            blank_people_schedule[day] += 1
            total_people_schedule[day] += 1
        end
    end
end

more_than_one_people_days = total_people_schedule.count {|cnt| cnt >= 1}
max_people = total_people_schedule.max

no_fight_days = 0
max_no_fight_day_people_cnt = 0
for day in 1..366
    if blank_people_schedule[day] == tab_people_schedule[day] and blank_people_schedule[day] != 0
        no_fight_days += 1 
        max_no_fight_day_people_cnt = blank_people_schedule[day] if blank_people_schedule[day] > max_no_fight_day_people_cnt
    end
end

puts more_than_one_people_days, max_people, no_fight_days, max_no_fight_day_people_cnt