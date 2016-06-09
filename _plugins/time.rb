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
    end
end

Liquid::Template.register_filter(Jekyll::Running)
