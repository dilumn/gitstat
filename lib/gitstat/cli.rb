module Gitstat
  class CLI

    def initialize(*)
      string = ""
      if ARGV.empty?
        string = blank
      elsif ARGV.include? "-a"
        string = author
      elsif ARGV.include? "-t"
        string = time
      end

      system "bash", "-c", string
    end

    def blank
      str = %q{git log --format='%aN'  | sort -u | while read name; do echo "Author >>>> " "$name"; git log --numstat --pretty="%H" --author="$name" | awk 'NF==3 {plus+=$1; minus+=$2} NF==1 {total++} END {printf("lines added: +%d lines \t | \t deleted: -%d lines \t | \t total commits: %d\n****************************************\n\n", plus, minus, total)}' -; done}
    end

    def time(*)
      from = ARGV[1]
      to = ARGV[2]
      str = %q{git log --format='%aN'  | sort -u | while read name; do echo "Author >>>> " "$name"; git log --numstat --pretty="%H" --author="$name"} + %{ --since '#{from}' --until '#{to}' } + %q{| awk 'NF==3 {plus+=$1; minus+=$2} NF==1 {total++} END {printf("******************************************\nlines added: \t +%d lines \ndeleted: \t -%d lines \ntotal commits: \t %d\n******************************************\n\n", plus, minus, total)}' -; done}
    end

    def author
      user = ARGV[1]
      str = %q{git log --numstat --pretty="%H"} + %{--author="#{user}"} + %q{ | awk 'NF==3 {plus+=$1; minus+=$2} NF==1 {total++} END {printf("lines added: +%d\nlines deleted: -%d\ntotal commits: %d\n", plus, minus, total)}'}
    end
  end
end
