=begin
strftime metodu formatlama işlemi yapar, parantez içerisinde yazılanlara göre zamanı biçimlendirir
%<flags><width><modifier><conversion>
=end

=begin
Flags:
-  don't pad a numerical output (Sayısal bir çıktıyı 0 ile doldurma işlemi yapar)
_  use spaces for padding (boşluk ile doldurur)
0  use zeros for padding (sıfır ile doldurur)
^  upcase the result string (Sonucun olduğu String dizesini büyüt)
#  change case (büyükse küçült, küçükse büyült)
:  use colons for %z
=end

t = Time.now       # => 2022-09-05 11:11:48 +0300
t.strftime("%d")   # => "05"

# şimdi - ile yapıyoruz
t.strftime("%-d")  # => "5"   # 0’la doldurmadı...

# şimdi _ ile yapıyoruz
t.strftime("%_d")  # => " 5"  # SPACE karakteri ile doldurdu...

# şimdi 0 ile yapıyoruz
t.strftime("%0d")  # => " 05" # 0 ile doldurdu...

t.strftime("%A")        # => "Friday"
t.strftime("%^A")       # => "FRIDAY" # upcase yaptı
t.strftime("%#A")       # => "FRIDAY" # friday küçük  geldi, büyük oldu
t.strftime("%z")        # => "+0300"
t.strftime("%:z")      # => "+03:00" # : ile ayırdı

#width
t.strftime("%d")   # => "05"
t.strftime("%10d")   # => "0000000005" # 10 basamak yaptı.

=begin
Date (Year, Month, Day):
  %Y - Year with century if provided, will pad result at least 4 digits.
          -0001, 0000, 1995, 2009, 14292, etc.
  %C - year / 100 (rounded down such as 20 in 2009)
  %y - year % 100 (00..99)

  %m - Month of the year, zero-padded (01..12)
          %_m  blank-padded ( 1..12)
          %-m  no-padded (1..12)
  %B - The full month name (``January'')
          %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')
          %^b  uppercased (``JAN'')
  %h - Equivalent to %b

  %d - Day of the month, zero-padded (01..31)
          %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)

  %j - Day of the year (001..366)

Time (Hour, Minute, Second, Subsecond):
  %H - Hour of the day, 24-hour clock, zero-padded (00..23)
  %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
  %I - Hour of the day, 12-hour clock, zero-padded (01..12)
  %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
  %P - Meridian indicator, lowercase (``am'' or ``pm'')
  %p - Meridian indicator, uppercase (``AM'' or ``PM'')

  %M - Minute of the hour (00..59)

  %S - Second of the minute (00..60)

  %L - Millisecond of the second (000..999)
       The digits under millisecond are truncated to not produce 1000.
  %N - Fractional seconds digits, default is 9 digits (nanosecond)
          %3N  millisecond (3 digits)
          %6N  microsecond (6 digits)
          %9N  nanosecond (9 digits)
          %12N picosecond (12 digits)
          %15N femtosecond (15 digits)
          %18N attosecond (18 digits)
          %21N zeptosecond (21 digits)
          %24N yoctosecond (24 digits)
       The digits under the specified length are truncated to avoid
       carry up.

Time zone:
  %z - Time zone as hour and minute offset from UTC (e.g. +0900)
          %:z - hour and minute offset from UTC with a colon (e.g. +09:00)
          %::z - hour, minute and second offset from UTC (e.g. +09:00:00)
  %Z - Abbreviated time zone name or similar information.  (OS dependent)

Weekday:
  %A - The full weekday name (``Sunday'')
          %^A  uppercased (``SUNDAY'')
  %a - The abbreviated name (``Sun'')
          %^a  uppercased (``SUN'')
  %u - Day of the week (Monday is 1, 1..7)
  %w - Day of the week (Sunday is 0, 0..6)

ISO 8601 week-based year and week number:
The first week of YYYY starts with a Monday and includes YYYY-01-04.
The days in the year before the first week are in the last week of
the previous year.
  %G - The week-based year
  %g - The last 2 digits of the week-based year (00..99)
  %V - Week number of the week-based year (01..53)

Week number:
The first week of YYYY that starts with a Sunday or Monday (according to %U
or %W). The days in the year before the first week are in week 0.
  %U - Week number of the year. The week starts with Sunday. (00..53)
  %W - Week number of the year. The week starts with Monday. (00..53)

Seconds since the Epoch:
  %s - Number of seconds since 1970-01-01 00:00:00 UTC.

Literal string:
  %n - Newline character (\n)
  %t - Tab character (\t)
  %% - Literal ``%'' character

Combination:
  %c - date and time (%a %b %e %T %Y)
  %D - Date (%m/%d/%y)
  %F - The ISO 8601 date format (%Y-%m-%d)
  %v - VMS date (%e-%^b-%4Y)
  %x - Same as %D
  %X - Same as %T
  %r - 12-hour time (%I:%M:%S %p)
  %R - 24-hour time (%H:%M)
  %T - 24-hour time (%H:%M:%S)
=end

t = Time.new(2022,9,05,11,11,48,"+03:00") #=> 2022-09-05 11:11:48 +0300
t.strftime("%m/%d/%Y")                    #=> "05/09/2022"
t.strftime("at %I:%M %p")                 #=> "at 11:11 AM"

puts t = Time.now        # => 2022-09-23 11:41:59 +0300
puts t.strftime("%N")    # => "524640100"
puts t.strftime("%3N")   # => "524" # milisaniye, 3 dijit
puts t.strftime("%6N")   # => "524640" # mikrosaniye, 6 dijit

puts t.strftime("%z")    # => "+0300"
puts t.strftime("%A")    # Friday
puts t.strftime("%a")    # Fri
puts t.strftime("%u")    # "5"
puts t.strftime("%w")   # "5"

=begin
Various ISO 8601 formats:

%Y%m%d           => 20071119                  Calendar date (basic)
%F               => 2007-11-19                Calendar date (extended)
%Y-%m            => 2007-11                   Calendar date, reduced accuracy, specific month
%Y               => 2007                      Calendar date, reduced accuracy, specific year
%C               => 20                        Calendar date, reduced accuracy, specific century
%Y%j             => 2007323                   Ordinal date (basic)
%Y-%j            => 2007-323                  Ordinal date (extended)
%GW%V%u          => 2007W471                  Week date (basic)
%G-W%V-%u        => 2007-W47-1                Week date (extended)
%GW%V            => 2007W47                   Week date, reduced accuracy, specific week (basic)
%G-W%V           => 2007-W47                  Week date, reduced accuracy, specific week (extended)
%H%M%S           => 083748                    Local time (basic)
%T               => 08:37:48                  Local time (extended)
%H%M             => 0837                      Local time, reduced accuracy, specific minute (basic)
%H:%M            => 08:37                     Local time, reduced accuracy, specific minute (extended)
%H               => 08                        Local time, reduced accuracy, specific hour
%H%M%S,%L        => 083748,000                Local time with decimal fraction, comma as decimal sign (basic)
%T,%L            => 08:37:48,000              Local time with decimal fraction, comma as decimal sign (extended)
%H%M%S.%L        => 083748.000                Local time with decimal fraction, full stop as decimal sign (basic)
%T.%L            => 08:37:48.000              Local time with decimal fraction, full stop as decimal sign (extended)
%H%M%S%z         => 083748-0600               Local time and the difference from UTC (basic)
%T%:z            => 08:37:48-06:00            Local time and the difference from UTC (extended)
%Y%m%dT%H%M%S%z  => 20071119T083748-0600      Date and time of day for calendar date (basic)
%FT%T%:z         => 2007-11-19T08:37:48-06:00 Date and time of day for calendar date (extended)
%Y%jT%H%M%S%z    => 2007323T083748-0600       Date and time of day for ordinal date (basic)
%Y-%jT%T%:z      => 2007-323T08:37:48-06:00   Date and time of day for ordinal date (extended)
%GW%V%uT%H%M%S%z => 2007W471T083748-0600      Date and time of day for week date (basic)
%G-W%V-%uT%T%:z  => 2007-W47-1T08:37:48-06:00 Date and time of day for week date (extended)
%Y%m%dT%H%M      => 20071119T0837             Calendar date and local time (basic)
%FT%R            => 2007-11-19T08:37          Calendar date and local time (extended)
%Y%jT%H%MZ       => 2007323T0837Z             Ordinal date and UTC of day (basic)
%Y-%jT%RZ        => 2007-323T08:37Z           Ordinal date and UTC of day (extended)
%GW%V%uT%H%M%z   => 2007W471T0837-0600        Week date and local time and difference from UTC (basic)
%G-W%V-%uT%R%:z  => 2007-W47-1T08:37-06:00    Week date and local time and difference from UTC (extended)
=end