for package in $(diff -u installed_package_list all-packages | grep -E "^\+r" | sed 's/+//g'); do
	mamba install --freeze-installed --no-update-deps ${package} 'openssl>3.0'
done
