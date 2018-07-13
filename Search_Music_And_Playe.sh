 #!/bin/bash

 echo "Please Select your path "


 echo  "if you like search this directory just type y or n"


 read likedirectory



 if [[ $likedirectory == "Y" ]]
 then

         read PWD

         echo "Please enter your name"

         read name

         echo "Please Select your type d {directory} f {file}"

         read typelike

         if [[ $typelike == "d" ]]

         then

                 find  $PWD -type d -name  $name

         elif [[ $typelike == "f" ]]

         then

                echo "if your need playe music Please befor install mplayer"
 
        find  $PWD -type f -name "*$name*" -exec mplayer {} \;

else

        echo " your type is not true"

fi;
 
        elif [[ $likedirectory == "n" ]]

then
        read -p "enter a directory: " -i "$ROOT/" -e addressdirectory

fi

        echo "Please enter your name"

read name

        echo "Please Select your type d {directory} f {file}"

                read liketype

                if [[ $liketype == "d" ]]

then

        find $addressdirectory -type d -iname $name

elif [[ $liketype == "f" ]]

then

        echo "if your need playe music Please befor install mplayer"

        find $addressdirectory -type f -iname "*$name*" -exec mplayer {} \;

else

        echo " your type is not true"
fi;


