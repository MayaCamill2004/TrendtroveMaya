<?php
use PHPUnit\Framework\TestCase;

class DatabaseTest extends TestCase {
    private $conn;

    protected function setUp(): void {

        $this->conn = new mysqli("localhost", "Maya", "OjTcOmKpR4[fZHl", "Trendtrove");
        $this->assertFalse($this->conn->connect_error);
    }

    protected function tearDown(): void {
        $this->conn->close();
    }

    // Users
    public function testCreateUser() {
        $result = createUser('Julia', 'julia@gmail.com', '1234', 'https://i.pinimg.com/564x/b5/ed/d1/b5edd1770d6366f9db7e2c1ae8315daa.jpg', '19 year old','https://i.pinimg.com/564x/63/bc/9f/63bc9ff3122d289b10458b239bfc36f9.jpg');
        $this->assertTrue($result);
    }

    public function testReadUser() {
        $user = readUser(1);
        $this->assertIsArray($user);
    }

    public function testUpdateUser() {
        $result = updateUser(1, 'Julian Grech', 'julian@gmail.com', '1234', '$2y$10$RNN2LUzWgDfzJMv0e8tYveUt2oQK3Hx999LOiD8ZMj1EKdX9j9vGK','https://i.pinimg.com/564x/4d/51/db/4d51db057196b7a560c0660333760e3b.jpg');
        $this->assertTrue($result);
    }

    public function testDeleteUser() {
        $result = deleteUser(1); 
        $this->assertTrue($result);
    }

    // Pins
    public function testCreatePin() {
        $result = createPin(1, 'http://example.com/image.jpg', 'Description', 'tags', 1);
        $this->assertTrue($result);
    }

    public function testReadPin() {
        $pin = readPin(1); // Adjust the ID as per your test data
        $this->assertIsArray($pin);
    }

    public function testUpdatePin() {
        $result = updatePin(1, 32, 'https://i.pinimg.com/564x/a5/da/35/a5da357df724314336ccf4dd2950a79a.jpg', 'Bape T-shirt', 'Bape', 1);
        $this->assertTrue($result);
    }

    public function testDeletePin() {
        $result = deletePin(1); 
        $this->assertTrue($result);
    }

    // Comments
    public function testCreateComment() {
        $result = createComment(1, 1, 'Nice fit');
        $this->assertTrue($result);
    }

    public function testReadComment() {
        $comment = readComment(1); 
        $this->assertIsArray($comment);
    }

    public function testUpdateComment() {
        $result = updateComment(2, 'love it');
        $this->assertTrue($result);
    }

    public function testDeleteComment() {
        $result = deleteComment(1); 
        $this->assertTrue($result);
    }

    // Season Collection
    public function testCreateSeasonCollection() {
        $result = createSeasonCollection('Summer', 'Summer brings vibrant colours and breezy styles, perfect for sun-soaked days');
        $this->assertTrue($result);
    }

    public function testReadSeasonCollection() {
        $collection = readSeasonCollection(1); 
        $this->assertIsArray($collection);
    }

    public function testUpdateSeasonCollection() {
        $result = updateSeasonCollection(1, 'Winter', 'Winter offers the magic of elegant textures and sophisticated layers, keeping you stylishly warm. ');
        $this->assertTrue($result);
    }

    public function testDeleteSeasonCollection() {
        $result = deleteSeasonCollection(1); // 
        $this->assertTrue($result);
    }

    // Notifications
    public function testCreateNotification() {
        $result = createNotification(12, 'follow', 'User with ID 33 followed you.', 0);
        $this->assertTrue($result);
    }

    public function testReadNotifications() {
        $notifications = readNotifications(1);
        $this->assertIsArray($notifications);
    }

    public function testUpdateNotification() {
        $result = updateNotification(1, 4); 
        $this->assertTrue($result);
    }

    public function testDeleteNotification() {
        $result = deleteNotification(1); 
        $this->assertTrue($result);
    }

    // Messages
    public function testCreateMessage() {
        $result = createMessage(5, 18, 'where did you buy your last outfit?');
        $this->assertTrue($result);
    }

    public function testReadMessages() {
        $messages = readMessages(1); 
        $this->assertIsArray($messages);
    }

    public function testUpdateMessage() {
        $result = updateMessage(1, 'love it');
        $this->assertTrue($result);
    }

    public function testDeleteMessage() {
        $result = deleteMessage(1); 
        $this->assertTrue($result);
    }

    // Boards
    public function testCreateBoard() {
        $result = createBoard(5, 'Spain outfits');
        $this->assertTrue($result);
    }

    public function testReadBoards() {
        $boards = readBoards(5);
        $this->assertIsArray($boards);
    }

    public function testUpdateBoard() {
        $result = updateBoard(5, 'spain fits');
        $this->assertTrue($result);
    }

    public function testDeleteBoard() {
        $result = deleteBoard(1); 
        $this->assertTrue($result);
    }

    // Analytics
    public function testCreateAnalytics() {
        $result = createAnalytics(1, 'view', date('2024-05-05 08:59:10'), 1);
        $this->assertTrue($result);
    }

    public function testReadAnalytics() {
        $analytics = readAnalytics(1); 
        $this->assertIsArray($analytics);
    }

    public function testUpdateAnalytics() {
        $result = updateAnalytics(1, 1, 'like', date('2024-05-05 08:59:10'), 1);
        $this->assertTrue($result);
    }

    public function testDeleteAnalytics() {
        $result = deleteAnalytics(1); 
        $this->assertTrue($result);
    }
}
?>
