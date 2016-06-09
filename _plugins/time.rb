module Jekyll
    module Running
        def timeDuration(time)
            hours = time / 3600
            time = time % 3600
            mins = time / 60
            secs = time % 60
            hours.to_i.to_s + ':' + mins.to_i.to_s + ':' + secs.to_i.to_s
        end

        def pace(time)
            mins = time / 60
            secs = time % 60
            mins.to_i.to_s + ':' + secs.to_i.to_s
        end

        def wdate(str)
            year = str[0, 4].to_i
            month = str[4, 2].to_i
            day = str[6, 2].to_i
            hour = str[9, 2].to_i
            minute = str[11, 2].to_i
            d = Time.new(year, month, day, hour, minute, 0)
            d.strftime('%b %d, %Y') + ' at ' + d.strftime('%H:%M')
        end
    end
end

Liquid::Template.register_filter(Jekyll::Running)
