#!/usr/bin/env lua

-- face part table
face_parts = {
  TOP   = ' __________',
  EYES  = '(--[ .]-[ .]',
  FATTY = '(       O  )',
  SLIM  = '(_______O__)',
  FAT   = '(          )',
  CHIN  = '(__________)'
}

-- validate chin arg, if there is one. else, default to 0
if arg[1] == nil then
  chins = 0
else
  chins = assert(tonumber(arg[1]), "Chins has to be a number")
end

-- disallow negative chin count
if chins < 0 then error("Can't have a negachin") end

-- begin printing the face
print(face_parts.TOP)
print(face_parts.EYES)

-- slim
if chins == 0 then
  print("(_______O__)")
  return
end

-- fatty
fatprinter = coroutine.create(
  function(c)
    print(face_parts.FATTY)
    for i=1, chins do
      print(face_parts.FAT)
    end
    print(face_parts.CHIN)
  end)

coroutine.resume(fatprinter, chins)
