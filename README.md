# DevSecOps Demo 
### (#nerdearla)

<pre>

################# TRIGGERING #######################

sed -i 's/xxxxx/60f41f67-b43b-4552-bb80-f2f29b861ef99/g' data.json && \
sed -i 's/zzzzz/SuperSecretPassword1234!/g' app/app.py && \
sed -i 's/99.99.99.99\/32/0.0.0.0\/0/g' terraform/sg.tf

git pull; git status ; git add --all ;  git commit -m "fix: fake workflow" ; git push origin main

################# RESTORE #######################

sed -i 's/60f41f67-b43b-4552-bb80-f2f29b861ef99/xxxxx/g' data.json && \
sed -i 's/SuperSecretPassword1234!/zzzzz/g' app/app.py && \
sed -i 's/0.0.0.0\/0/99.99.99.99\/32/g' terraform/sg.tf

git pull; git status ; git add --all ;  git commit -m "fix: rollback workflow" ; git push origin main

############# RESET TO 1st COMMIT ###############

git reset --hard  8f19d216282d1516ad3fedf7b28e2bebb23b36c6
git push -f origin main

</pre>
