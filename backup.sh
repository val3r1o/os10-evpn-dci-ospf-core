
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic backup -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo ------------------------------------------------------------------------------------------------------

cd dci-evpn-generic-core/
ansible-playbook -i inventory copyconfig.yml
git status
git pull
git pull
git add .
git commit -a -m "standard update"
git push origin main
git status

echo ----------- This is an automatic backup -------------------------------------------------------------
echo - update                                                                                          ---
echo ---- please note on git auth changes August 2021                                                  ---
echo - single password not accepted anymore                                                            ---
echo - setup your token                                                                                ---
echo - https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token
echo - remember to move from SSH to HTTPS remote git                                                   ---
echo - https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories    ---
echo------------------------------------------------------------------------------------------------------
echo ---------------------------------------------- Dell NETWORKING --------------------------------------
echo --------------------------valerio.martini@gmail.com--------------------------------------------------
