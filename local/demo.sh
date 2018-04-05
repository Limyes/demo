if [ -d $1 ];then
    exit 1;
else
    mkdir $1
    cd $1
    mkdir css js
    echo '<!DOCTYPE>'> index.html
    echo "<html><head><link rel='stylesheet' type='text/css' href='css/style.css'>" >> index.html
    echo "<script src='js/main.js'></script>" >> index.html
    echo '<title>Hello</title></head>' >> index.html
    echo '<body><h1>Hi</h1></body></html>' >> index.html 
    echo 'h1{color: red;}' > css/style.css  
    echo "var string = 'Hello World'" > js/main.js
    echo 'alert(string)' >>js/main.js
    exit
fi