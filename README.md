# docker-lamp

## Purpose
LAMP, MAMP, XAMPP kind of suck, when it comes to realworld problems. There is a couple of issues:
1. Boarding
2. Boarding to a project
3. Boarding to a project, with live data and assets
4. Boarding to that project having the right versions ready.
5. People are using IDEs like phstorm etc. it has to work right away
6. Webdev people usually do not have much of devops knowlegde

## Usage
 - symlink var/www/sites to your project directory
 - add VHost in etc/apache2/vhosts.d/
 - add local /etc/hosts entry (my-site.internal .e.g)
 - Start working

## ToDo
1. Consider to use one container for PHP FPM, cause building takes to long
2. Consider to use a build container see 1.
3. Write shell scripts to make it more easy to switch php versions
4. Write shell scripts to make it more easy to ramp up a vhost (etc/hosts, vhost webserver config)
5. Make sure permission r right
6. Build an UI (elektron?) to make it easy for the youngsters
7. Provide the js world (npm, grunt, bower, whatever)
8. Find out how people r working and provide a solution
9. Find out moderate mySql settings for a dev environment
10. Find a way to enable xdebug on demand 

