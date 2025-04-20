-- Insert sample data into the Posts table
INSERT INTO Post (Title, Content, PostDate, AuthorName, AuthorAvatar, AuthorDescription)
VALUES
('Sample Post 1', 'Lorem ipsum content for post 1.', GETDATE(), 'John Doe', '/assets/img/author1.jpg', 'Author 1 description'),
('Sample Post 2', 'Lorem ipsum content for post 2.', GETDATE(), 'Jane Smith', '/assets/img/author2.jpg', 'Author 2 description');
