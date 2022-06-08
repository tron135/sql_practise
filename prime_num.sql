set @i = 2;
set @prime = 0;
CREATE TEMPORARY TABLE output(num int);

delimiter |
create procedure getPrime()
begin
    label1: loop
        if @i < 1000 then
            set @j = @i - 1;
            set @prime = 1;
            label2: loop
                if @j > 1 then
                    if @i % @j = 0 then set @prime = 0;
                    end if;
                    set @j = @j - 1;
                    iterate label2;
                end if;
                leave label2;
            end loop label2;
            if @prime = 1 then insert output values(@i);
            end if;
            set @i = @i + 1;
            
            iterate label1;
        end if;
        leave label1;
    end loop label1;
end |
delimiter ;

call getPrime();

select group_concat(num separator "&") from output;