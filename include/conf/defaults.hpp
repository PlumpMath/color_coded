#pragma once

namespace color_coded
{
  namespace conf
  {
    using args_t = std::vector<std::string>;

    inline args_t defaults()
    {
      return
      { 
        "-std=c++1y", "-stdlib=libc++",
        "-I/usr/include",
        "-I/usr/lib/clang/3.5.0/include",
        "-I.", "-Iinclude",
        "-w"
      };
    }
  }
}
