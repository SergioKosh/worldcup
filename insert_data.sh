if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=postgres --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

sed 1d games.csv | while IFS="," read YEAR ROUND WIN OPP W_GOALS OPP_GOALS
do
  echo "$YEAR $ROUND $WIN $OPP $W_GOALS $OPP_GOALS"
  WTEAM=$($PSQL "SELECT EXISTS (SELECT name FROM teams WHERE name='$WIN')")
  OTEAM=$($PSQL "SELECT EXISTS (SELECT name FROM teams WHERE name='$OPP')")
  if [[ $WTEAM != 't' ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES ('$WIN')"
    echo Inserted into teams: $WIN
  fi
  if [[ $OTEAM != 't' ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES ('$OPP')"
    echo Inserted into teams: $OPP
  fi
  
  WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
  
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $W_GOALS, $OPP_GOALS)"
  echo
   
done 