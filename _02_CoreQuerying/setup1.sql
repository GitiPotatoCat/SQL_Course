-- Setup: Add More Data

USE TSQLMastery; 
GO


INSERT INTO dbo.Employees(
    EmployeeID, FirstName, LastName,
    Department, Salary, HireDate, IsActive
) VALUES
    -- 11. Bengali (NULL Dept)
    (11, 'Anirban', 'Mukherjee', NULL, 72000.00, '2021-07-14', 1),

    -- 12. Nagaland
    (12, 'Zhokika', 'Sumi', 'Marketing', 69000.00, '2020-09-11', 1),

    -- 13. Odisha
    (13, 'Lipika', 'Mohanty', 'Finance', 74000.00, '2019-03-20', 1),

    -- 14. Assam (NULL Dept)
    (14, 'Rupak', 'Borah', NULL, 68000.00, '2022-11-03', 0),

    -- 15. Tamil Nadu
    (15, 'Harini', 'Velayutham', 'Engineering', 93000.00, '2018-02-27', 1),

    -- 16. Maharashtra (NULL Dept)
    (16, 'Neha', 'Khare', NULL, 69000.00, '2021-06-07', 0),

    -- 17. Telugu (Andhra)
    (17, 'Varun', 'Muppalla', 'IT', 88000.00, '2020-04-21', 1),

    -- 18. Odisha (NULL Dept)
    (18, 'Sanjana', 'Jena', NULL, 61000.00, '2023-01-09', 1),

    -- 19. Bengali
    (19, 'Ishita', 'Banerjee', 'HR', 70000.00, '2019-12-15', 1),

    -- 10. Assam
    (10, 'Diganta', 'Saikia', 'Sales', 74000.00, '2018-06-28', 1),

    -- 11. Nagaland (NULL Dept)
    (11, 'Akhrieno', 'Thopi', NULL, 60000.00, '2022-10-04', 0),

    -- 12. Karnataka
    (12, 'Karthik', 'Prabhu', 'Operations', 82000.00, '2017-09-18', 1),

    -- 13. Manipur (NULL Dept)
    (13, 'Bembem', 'Thangjam', NULL, 64000.00, '2021-03-05', 1),

    -- 14. Odisha
    (14, 'Biksh', 'Rout', 'Engineering', 88000.00, '2019-04-09', 1),

    -- 15. West Bengal (NULL Dept)
    (15, 'Arpita', 'Saha', NULL, 67000.00, '2020-08-01', 0),

    -- 16. Nagaland
    (16, 'Vivi', 'Zhimo', 'HR', 71000.00, '2018-03-29', 1),

    -- 17. Assam
    (17, 'Mayuk', 'Kalita', 'IT', 83000.00, '2020-07-22', 1),

    -- 18. Odisha (NULL Dept)
    (18, 'Bijay', 'Pradhan', NULL, 60000.00, '2022-04-10', 0),

    -- 19. Bengali
    (19, 'Sayantika', 'Pal', 'Marketing', 72000.00, '2019-11-02', 1),

    -- 20. Nagaland (NULL Dept)
    (20, 'Naro', 'Kikon', NULL, 65000.00, '2021-05-27', 1),

    -- 21. Assam
    (21, 'Tridip', 'Baruah', 'Operations', 76000.00, '2018-09-14', 1),

    -- 22. Odisha
    (22, 'Gitanjali', 'Sahoo', 'Finance', 72000.00, '2020-10-06', 1),

    -- 23. Bengal (NULL Dept)
    (23, 'Madhurima', 'Ghosh', NULL, 61000.00, '2023-02-19', 0),

    -- 24. Nagaland
    (24, 'Asung', 'Ao', 'Engineering', 84000.00, '2017-08-23', 1),

    -- 25. Odisha (NULL Dept)
    (25, 'Rashika', 'Samal', NULL, 65000.00, '2021-11-12', 1),

    -- 26. Assamese
    (26, 'Ankush', 'Bhuyan', 'IT', 81000.00, '2019-06-16', 1),

    -- 27. Bengali
    (27, 'Dipankar', 'Sengupta', 'Sales', 76000.00, '2018-01-29', 1),

    -- 28. Odisha (NULL Dept)
    (28, 'Barsha', 'Padhi', NULL, 63000.00, '2020-09-09', 1),

    -- 29. Nagaland (NULL Dept)
    (29, 'Roko', 'Yimkhiung', NULL, 59000.00, '2022-07-07', 0),

    -- 30. Assamese
    (30, 'Himadri', 'Deka', 'Engineering', 93000.00, '2017-10-31', 1);
GO


INSERT INTO dbo.Employees(
    EmployeeID, FirstName, LastName,
    Department, Salary, HireDate, IsActive
) VALUES
    -- 31. Bengal
    (31, 'Sanchari', 'Mondal', 'HR', 69000.00, '2020-06-11', 1),

    -- 32. Odisha (NULL Dept)
    (32, 'Chinmay', 'Dash', NULL, 61000.00, '2022-09-15', 0),

    -- 33. Assam
    (33, 'Uddipta', 'Baruah', 'Finance', 78000.00, '2019-12-05', 1),

    -- 34. Nagaland (NULL Dept)
    (34, 'Aben', 'Yeptho', NULL, 63000.00, '2021-04-27', 1),

    -- 35. Tamil Nadu
    (35, 'Kiruthika', 'Ravichandran', 'IT', 91000.00, '2018-02-07', 1),

    -- 36. Maharashtra
    (36, 'Rohit', 'Gawande', 'Engineering', 102000.00, '2017-11-22', 1),

    -- 37. Kerala (NULL Dept)
    (37, 'Devika', 'Warrier', NULL, 65000.00, '2021-05-09', 1),

    -- 38. Karnataka
    (38, 'Sudarshan', 'Pai', 'Operations', 76000.00, '2019-03-14', 1),

    -- 39. Gujarat
    (39, 'Nikhil', 'Trivedi', 'Sales', 72000.00, '2020-10-10', 1),

    -- 40. Rajasthan (NULL Dept)
    (40, 'Shreya', 'Bhati', NULL, 58000.00, '2022-06-18', 0),

    -- 41. Punjab
    (41, 'Manveer', 'Sidhu', 'Marketing', 82000.00, '2019-08-08', 1),

    -- 42. Haryana
    (42, 'Lakshay', 'Beniwal', 'Engineering', 88000.00, '2018-03-20', 1),

    -- 43. Himachal Pradesh (NULL Dept)
    (43, 'Anusha', 'Kangra', NULL, 64000.00, '2021-01-12', 1),

    -- 44. Madhya Pradesh
    (44, 'Shivangi', 'Bhadoria', 'Admin', 71000.00, '2020-02-17', 1),

    -- 45. Uttarakhand
    (45, 'Rudra', 'Bisht', 'Finance', 78000.00, '2019-07-23', 1),

    -- 46. Uttar Pradesh (NULL Dept)
    (46, 'Saurabh', 'Yadav', NULL, 67000.00, '2022-12-04', 0),

    -- 47. Goa
    (47, 'Alicia', 'Fernandes', 'HR', 72000.00, '2020-03-15', 1),

    -- 48. Tripura (NULL Dept)
    (48, 'Animesh', 'Debnath', NULL, 60000.00, '2022-05-09', 1),

    -- 49. Manipur
    (49, 'Irom', 'Khomdram', 'Operations', 74000.00, '2018-09-14', 1),

    -- 50. Meghalaya
    (50, 'Riyan', 'Lyngdoh', 'IT', 83000.00, '2019-11-28', 1),

    -- 51. Mizoram (NULL Dept)
    (51, 'Vanlallawmi', 'Hmar', NULL, 62000.00, '2021-08-30', 1),

    -- 52. Sikkim
    (52, 'Kiran', 'Tamang', 'Engineering', 88000.00, '2017-06-11', 1),

    -- 53. Arunachal Pradesh
    (53, 'Nyakum', 'Morang', 'Operations', 68000.00, '2020-12-20', 1),

    -- 54. Ladakh (NULL Dept)
    (54, 'Paldan', 'Norzang', NULL, 59000.00, '2022-03-13', 0),

    -- 55. Delhi (NCT)
    (55, 'Aditi', 'Bhardwaj', 'Finance', 91000.00, '2018-10-09', 1),

    -- 56. Chandigarh
    (56, 'Rohan', 'Chawla', 'IT', 94000.00, '2017-12-29', 1),

    -- 57. Jharkhand (NULL Dept)
    (57, 'Sangeeta', 'Munda', NULL, 61000.00, '2022-04-25', 1),

    -- 58. Bihar
    (58, 'Amit', 'Jha', 'Sales', 76000.00, '2019-02-15', 1),

    -- 59. Telangana
    (59, 'Sushanth', 'Reddy', 'Engineering', 98000.00, '2018-01-11', 1),

    -- 60. Andhra Pradesh (NULL Dept)
    (60, 'Meghana', 'Koppula', NULL, 64000.00, '2022-08-10', 0),

    -- 61. Maharashtra
    (61, 'Nilesh', 'Salve', 'HR', 71000.00, '2020-06-19', 1),

    -- 62. Odisha (NULL Dept)
    (62, 'Rashmita', 'Sethi', NULL, 58000.00, '2023-02-14', 0),

    -- 63. Bengal
    (63, 'Arindam', 'Chakraborty', 'Operations', 80000.00, '2019-04-18', 1),

    -- 64. Assam (NULL Dept)
    (64, 'Pragyan', 'Dutta', NULL, 62000.00, '2021-09-07', 1),

    -- 65. Nagaland
    (65, 'Chubatola', 'Aier', 'Marketing', 69000.00, '2020-05-15', 1),

    -- 66. Gujarat (NULL Dept)
    (66, 'Pooja', 'Modi', NULL, 60000.00, '2022-11-02', 0),

    -- 67. Kerala
    (67, 'Aswin', 'Kumar', 'Engineering', 97000.00, '2018-08-28', 1),

    -- 68. Karnataka (NULL Dept)
    (68, 'Rashmi', 'Rao', NULL, 59000.00, '2023-01-21', 1),

    -- 69. Tamil Nadu
    (69, 'Siddharth', 'Subramani', 'Finance', 78000.00, '2020-03-27', 1),

    -- 70. Punjab (NULL Dept)
    (70, 'Harjot', 'Kaur', NULL, 65000.00, '2022-09-30', 1);
GO