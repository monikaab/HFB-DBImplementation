-- For creating index
CREATE INDEX personId ON person(id);

-- index for event id
CREATE INDEX event_id ON event(event_id);

-- index for partner agency
CREATE INDEX partner_agency_id ON partner_agency(partner_id);

-- index for house hold id
CREATE INDEX household_ssn ON household(ssn);

-- index for inventory id
CREATE INDEX inventory_id ON inventory(inventory_id)