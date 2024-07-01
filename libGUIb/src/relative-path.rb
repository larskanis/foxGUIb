# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)

def rel_path(a, b)
  raise TypeError unless a.is_a? String and b.is_a? String
  a.tr!("\\", "/")
  b.tr!("\\", "/")
  a = a.split("/")
  b = b.split("/")
  i = 0
  while (a[i] == b[i]) && (i < a.size)
    i += 1
  end
  "../" * (a.size - i) + b[i..-1].join("/")
end
