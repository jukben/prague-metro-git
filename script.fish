function generateCommit
    set -x GIT_COMMITTER_DATE "Sat, 08 Apr 2023 8:00:00 GMT"

    git commit -m $argv --allow-empty --date $GIT_COMMITTER_DATE
end

# Start from a clean slate of Git
rm -rf .git
git init

git add *
git commit -m init

git checkout -b a
generateCommit "Nemocnice Motol"
generateCommit Petřiny
generateCommit 'Nádraží Veleslavín'
generateCommit Bořislavka
generateCommit Dejvická
generateCommit Hradčanská
generateCommit Malostranská
generateCommit Staroměstská

git checkout main
git checkout -b b
generateCommit Zličín
generateCommit Stodůlky
generateCommit Luka
generateCommit Lužiny
generateCommit Hůrka
generateCommit 'Nové Butovice'
generateCommit Jinonice
generateCommit Radlická
generateCommit 'Smíchovské nádraží'
generateCommit Anděl
generateCommit "Karlovo náměstí"
generateCommit 'Národní třída'

git merge a -m Můstek
git checkout b
generateCommit 'Náměstí Míru'

git checkout main
git checkout -b c
generateCommit Letňany
generateCommit Střížkov
generateCommit Ládví
generateCommit Kobylisy
generateCommit "Nádraží Holešovice"
generateCommit Vltavská
git merge b -m Florenc
generateCommit "Hlavní nádraží"
git merge a -m Muzeum
generateCommit "I.P.Pavlova"
generateCommit Vyšehrad
generateCommit "Pražského povstání"
generateCommit Pankrác
generateCommit Budějovická
generateCommit Kačerov
generateCommit Roztyly
generateCommit Chodov
generateCommit Opatov
generateCommit Háje

git checkout a
generateCommit 'Náměstí Míru'
generateCommit "Jiřího z Poděbrad"
generateCommit Flora
generateCommit Želivského
generateCommit Strašnická
generateCommit Skalka
generateCommit "Depo Hostivař"

git checkout b
generateCommit 'Náměstí Republiky'
generateCommit Křižíkova
generateCommit Invalidovna
generateCommit Palmovka
generateCommit Českomoravská
generateCommit Vysočanská
generateCommit Kolbenova
generateCommit Hloubětín
generateCommit 'Rajská zahrada'
generateCommit 'Černý most'

git remote add origin git@github.com:jukben/prague-metro-git.git
git push --all --force
