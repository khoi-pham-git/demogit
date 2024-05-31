SELECT  CASE
    WHEN g.Grade > 7 THEN Name
    ELSE NULL
    END AS Name,Grade,Marks
FROM Students st LEFT JOIN Grades g ON st.Marks <= g.Max_Mark AND st.Marks >= g.Min_Mark
ORDER BY g.Grade DESC, st.Name, st.Marks