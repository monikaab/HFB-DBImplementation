CREATE ASSERTION  partner_idTest
    CHECK( NOT EXISTS
    (SELECT * FROM event where partner_id= NULL)
    );


CREATE ASSERTION inventoryTest
    CHECK( NOT EXISTS
    (SELECT * FROM inventory where quantity<=10)
    );

CREATE ASSERTION personTest
    CHECK( NOT EXISTS
    (SELECT count(*) FROM person = (
        SELECT sum(tb1.tablecount)
        FROM (
            SELECT count(*) as tablecount FROM volunteer
            UNION ALL
            SELECT count(*) as tablecount FROM employee
            UNION ALL
            SELECT count(*) as tablecount FROM donor
        )tb1
    )
    ));

  CREATE ASSERTION locationTest
     CHECK( EXISTS
     (SELECT * FROM event 
     where event.loc_id EXISTS IN (
        SELECT loc_id FROM community
     )
     ));

  CREATE ASSERTION people_countTest
     CHECK(NOT EXISTS
     (SELECT *  FROM event
     where no_of_persons_served < 20)
     );   
