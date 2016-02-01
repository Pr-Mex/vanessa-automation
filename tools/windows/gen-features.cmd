@pickles.exe -f ./../../features -l ru -o ./../../distr/ -df word --sn "Vanessa Behavior" 
@pickles.exe -f ./../../features -l ru -o ./../../distr/docs/dhtml -df dhtml --sn "Vanessa Behavior"
@pickles.exe -f ./../../features -l ru -o ./../../distr/docs/html -df html --sn "Vanessa Behavior"
@pandoc -f docx "./../../distr/Vanessa Behavior.docx" -t markdown_github >> ./../../distr/FEATURES.md