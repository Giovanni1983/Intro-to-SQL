SELECT FCC.WageType
      ,FCC.Shift
      ,FCC.LevelOneOperators
      ,FCC.LevelTwoOperators
      ,FCC.Calls
      ,FCC.Date
FROM FactCallCenter FCC
WHERE (FCC.Shift = 'PM1' OR FCC.Shift = 'PM2') AND
      (FCC.LevelTwoOperators <= 10)