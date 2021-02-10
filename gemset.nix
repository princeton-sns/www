{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fvchp2rhp2rmigx7qglf69xvjqvzq7x0g49naliw29r2bz656sy";
      type = "gem";
    };
    version = "2.7.0";
  };
  colorator = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f7wvpam948cglrciyqd798gdc6z3cfijciavd0dfixgaypmvy72";
      type = "gem";
    };
    version = "1.1.0";
  };
  concurrent-ruby = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mr23wq0szj52xnj0zcn1k0c7j4v79wlwbijkpfcscqww3l6jlg3";
      type = "gem";
    };
    version = "1.1.8";
  };
  em-websocket = {
    dependencies = ["eventmachine" "http_parser.rb"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mg1mx735a0k1l8y14ps2mxdwhi5r01ikydf34b0sp60v66nvbkb";
      type = "gem";
    };
    version = "0.5.2";
  };
  eventmachine = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wh9aqb0skz80fhfn66lbpr4f86ya2z5rx6gm5xlfhd05bj1ch4r";
      type = "gem";
    };
    version = "1.2.7";
  };
  ffi = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15hgiy09i8ywjihyzyvjvk42ivi3kmy6dm21s5sgg9j7y3h3zkkx";
      type = "gem";
    };
    version = "1.14.2";
  };
  forwardable-extended = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15zcqfxfvsnprwm8agia85x64vjzr2w0xn9vxfnxzgcv8s699v0v";
      type = "gem";
    };
    version = "2.6.0";
  };
  "http_parser.rb" = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15nidriy0v5yqfjsgsra51wmknxci2n2grliz78sf9pga3n0l7gi";
      type = "gem";
    };
    version = "0.6.0";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0k7q3pwm0l1qvx6sc3d4dxmdxqx2pc63lbfjwv0k0higq94rinvs";
      type = "gem";
    };
    version = "1.8.8";
  };
  jekyll = {
    dependencies = ["addressable" "colorator" "em-websocket" "i18n" "jekyll-sass-converter" "jekyll-watch" "kramdown" "kramdown-parser-gfm" "liquid" "mercenary" "pathutil" "rouge" "safe_yaml" "terminal-table"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "192k1ggw99slpqpxb4xamcvcm2pdahgnmygl746hmkrar0i3xa5r";
      type = "gem";
    };
    version = "4.1.1";
  };
  jekyll-category-pages = {
    dependencies = ["jekyll" "jekyll-paginate"];
    groups = ["jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jmyjaas61dyq3wnvhyhm0scpbxjwfyiw2jd9v80afgj5rk1pwil";
      type = "gem";
    };
    version = "1.1.1";
  };
  jekyll-paginate = {
    groups = ["jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r7bcs8fq98zldih4787zk5i9w24nz5wa26m84ssja95n3sas2l8";
      type = "gem";
    };
    version = "1.1.0";
  };
  jekyll-sass-converter = {
    dependencies = ["sassc"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04ncr44wrilz26ayqwlg7379yjnkb29mvx4j04i62b7czmdrc9dv";
      type = "gem";
    };
    version = "2.1.0";
  };
  jekyll-sitemap = {
    dependencies = ["jekyll"];
    groups = ["jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0622rwsn5i0m5xcyzdn86l68wgydqwji03lqixdfm1f1xdfqrq0d";
      type = "gem";
    };
    version = "1.4.0";
  };
  jekyll-watch = {
    dependencies = ["listen"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qd7hy1kl87fl7l0frw5qbn22x7ayfzlv9a5ca1m59g0ym1ysi5w";
      type = "gem";
    };
    version = "2.2.1";
  };
  kramdown = {
    dependencies = ["rexml"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vmw752c26ny2jwl0npn0gbyqwgz4hdmlpxnsld9qi9xhk5b1qh7";
      type = "gem";
    };
    version = "2.3.0";
  };
  kramdown-parser-gfm = {
    dependencies = ["kramdown"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a8pb3v951f4x7h968rqfsa19c8arz21zw1vaj42jza22rap8fgv";
      type = "gem";
    };
    version = "1.1.0";
  };
  liquid = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zhg5ha8zy8zw9qr3fl4wgk4r5940n4128xm2pn4shpbzdbsj5by";
      type = "gem";
    };
    version = "4.0.3";
  };
  listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0imzd0cb9vlkc3yggl4rph1v1wm4z9psgs4z6aqsqa5hgf8gr9hj";
      type = "gem";
    };
    version = "3.4.1";
  };
  mercenary = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f2i827w4lmsizrxixsrv2ssa3gk1b7lmqh8brk8ijmdb551wnmj";
      type = "gem";
    };
    version = "0.4.0";
  };
  pathutil = {
    dependencies = ["forwardable-extended"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12fm93ljw9fbxmv2krki5k5wkvr7560qy8p4spvb9jiiaqv78fz4";
      type = "gem";
    };
    version = "0.16.2";
  };
  public_suffix = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xqcgkl7bwws1qrlnmxgh8g4g9m10vg60bhlw40fplninb3ng6d9";
      type = "gem";
    };
    version = "4.0.6";
  };
  rb-fsevent = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1k9bsj7ni0g2fd7scyyy1sk9dy2pg9akniahab0iznvjmhn54h87";
      type = "gem";
    };
    version = "0.10.4";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jm76h8f8hji38z3ggf4bzi8vps6p7sagxn3ab57qc0xyga64005";
      type = "gem";
    };
    version = "0.10.1";
  };
  rexml = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mkvkcw9fhpaizrhca0pdgjcrbns48rlz4g6lavl5gjjq3rk2sq3";
      type = "gem";
    };
    version = "3.2.4";
  };
  rouge = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0b4b300i3m4m4kw7w1n9wgxwy16zccnb7271miksyzd0wq5b9pm3";
      type = "gem";
    };
    version = "3.26.0";
  };
  safe_yaml = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j7qv63p0vqcd838i2iy2f76c3dgwzkiz1d1xkg7n0pbnxj2vb56";
      type = "gem";
    };
    version = "1.0.5";
  };
  sassc = {
    dependencies = ["ffi"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gpqv48xhl8mb8qqhcifcp0pixn206a7imc07g48armklfqa4q2c";
      type = "gem";
    };
    version = "2.4.0";
  };
  terminal-table = {
    dependencies = ["unicode-display_width"];
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1512cngw35hsmhvw4c05rscihc59mnj09m249sm9p3pik831ydqk";
      type = "gem";
    };
    version = "1.8.0";
  };
  unicode-display_width = {
    groups = ["default" "jekyll_plugins"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06i3id27s60141x6fdnjn5rar1cywdwy64ilc59cz937303q3mna";
      type = "gem";
    };
    version = "1.7.0";
  };
}