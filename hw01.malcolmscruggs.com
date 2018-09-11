server {
	listen 80;
	listen [::]:80;

	root /home/malcolm/www/hw01.malcolmscruggs.com;

	# Add index.php to the list if you are using PHP
	index index.html index.htm index.nginx-debian.html;

	server_name hw01.malcolmscruggs.com www.hw01.malcolmscruggs.com;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}
