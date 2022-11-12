cd build/web
mv assets/assets/images assets/images 
rmdir assets/assets
sed -i 's+assets/assets/+assets/+g' flutter_service_worker.js