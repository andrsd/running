running
=======

Blog-like system for keeping track of runs based on Jekyll


To log a run
------------

* Log a GPX file when running
* place it in `data/gps/` with name `YYYYMMDD-HHSS.gpx`
* `./run.rb data/gps/YYYYMMDD-HHSS.gpx > _posts/YYYY-MM-DD-some-name.md`

Add your data on a different branch than master. Then updates of the system can be brought by `git merge --no-ff master` while on your branch.


To log a weight
---------------

* Create a file in `_data/weight` with name `YYYYMMDD-HHSS.yml`
* Put this in the file:
  ```
  weight: <number>
  fat: <number>
  ```
  
  Weight assumes kilograms (learn those SI units ;-D), fat assumes percentage (i.e. 14 would mean 14 %)
  
  
Publish it
----------

* `git add files`
* `git commit`
* `jekyll build`
