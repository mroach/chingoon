create procedure dbo.Chins (@chins int = 4)
as
begin
  if isnumeric(@chins) = 0
    set @chins = 0

  if @chins < 0
    set @chins = 0

  print ' __________'
  print '(--[ .]-[ .]'

  if @chins = 0
  begin
    print '(_______O__)'
    return
  end
  else
    print '(       O  )'

  while @chins > 1
  begin
    print '(          )'
    set @chins = @chins - 1
  end

  print '(__________)'
end
