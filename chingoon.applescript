on chingoon(number_of_chins)
  if number_of_chins < 0 then
    return "ERROR: chingoon can't have a negachin"
  else
    if number_of_chins > 10 then return "ERROR: more chins than a chinese phone book and also more than you'd want to spam IRC with"
  end if

  copy " __________" & return & "(--[ .]-[ .]" & return to chins
  if number_of_chins = 0 then
    return chins & "(_______O__)"
  else
    copy chins & "(       O  )" & return to chins
  end if

  repeat number_of_chins-1 times
    copy chins & "(          )" & return to chins
  end repeat

  return chins & "(__________)"
end chingoon
