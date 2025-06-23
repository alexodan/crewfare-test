-- Insert sample events
INSERT INTO events (name) VALUES 
('Austin City Limits'),
('Ultra Musical Festival');

-- Insert sample rooming lists
INSERT INTO rooming_lists (event_id, rfp_name, agreement_type, status, cut_off_date) VALUES
(1, 'ACL Staff Housing', 'Staff', 'Active', '2025-01-08'),
(1, 'ACL VIP Leisure', 'Leisure', 'Active', '2025-01-08'),
(1, 'ACL Artist Accommodations', 'Artists', 'Active', '2025-01-08'),
(1, 'ACL Media Housing', 'Staff', 'Closed', '2025-01-08'),
(2, 'Ultra Staff Quarters', 'Staff', 'Active', '2025-01-08'),
(2, 'Ultra VIP Experience', 'Leisure', 'Active', '2025-01-08'),
(2, 'Ultra Artist Suites', 'Artists', 'Cancelled', '2025-01-08');

-- Insert sample bookings
INSERT INTO bookings (rooming_list_id, guest_name, guest_phone_number, check_in_date, check_out_date) VALUES
-- ACL Staff Housing bookings
(1, 'John Smith', '+1-555-0101', '2025-01-31', '2025-02-02'),
(1, 'Jane Doe', '+1-555-0102', '2025-01-30', '2025-02-01'),
(1, 'Mike Johnson', '+1-555-0103', '2025-01-31', '2025-02-03'),
-- ACL VIP Leisure bookings  
(2, 'Sarah Wilson', '+1-555-0201', '2025-01-29', '2025-02-02'),
(2, 'David Brown', '+1-555-0202', '2025-01-31', '2025-02-01'),
-- ACL Artist Accommodations bookings
(3, 'Taylor Swift', '+1-555-0301', '2025-01-30', '2025-02-02'),
(3, 'Ed Sheeran', '+1-555-0302', '2025-01-31', '2025-02-01'),
-- Ultra Staff Quarters bookings
(5, 'Alex Garcia', '+1-555-0501', '2025-01-31', '2025-02-02'),
(5, 'Maria Rodriguez', '+1-555-0502', '2025-01-30', '2025-02-01'),
-- Ultra VIP Experience bookings
(6, 'Chris Lee', '+1-555-0601', '2025-01-29', '2025-02-03'),
(6, 'Emma Davis', '+1-555-0602', '2025-01-31', '2025-02-02'),
-- Ultra Artist Suites bookings
(7, 'Calvin Harris', '+1-555-0701', '2025-01-30', '2025-02-01'),
(7, 'Armin van Buuren', '+1-555-0702', '2025-01-31', '2025-02-02');
