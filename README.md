# Gitstat

Gitstat is a ruby gem for `git log` your repository to get valuable informations for each Author in your repository

## Installation

`$ gem install gitstat`

## Usage

After installing the gem, go to your repository & just type `gitstat`. Then you will get the total number of added lines / deleted lines & commits by each author in the repository.

```
Author >>>>  //de
lines added: +11839 lines 	 | 	 deleted: -16271 lines 	 | 	 total commits: 368
************************************************************************************

Author >>>>  Adrian Hosey
lines added: +52 lines 	 | 	 deleted: -10 lines 	 | 	 total commits: 2
************************************************************************************

Author >>>>  Alex Grigorovich
lines added: +3 lines 	 | 	 deleted: -1 lines 	 | 	 total commits: 1
************************************************************************************

```

To get total number of added lines / deleted lines & commits by each author in a given period,

`gitstat -t 05/22/2015 04/30/2016`


To get total number of added lines / deleted line & commits by author
`gitstat -a AUTHORNAME`


More features coming soon.....

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dilumn/gitstat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

