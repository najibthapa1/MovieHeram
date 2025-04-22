<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Dashboard</title>
    <style>
        /* Reset and Base Styles */
        
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css" />
</head>
</head>
<body>
    <div class="dashboard">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-header">
                <i class="fas fa-user-tie"></i>
                <h2>Admin<span>Dashboard</span></h2>
            </div>
            <div class="sidebar-menu">
                <div class="menu-item active">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-user-friends"></i>
                    <span>Users</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-video"></i>
                    <span>Movies</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-upload"></i>
                    <span>Upload</span>
                </div>
                <div class="menu-item">
                    <i class="fas fa-user-circle"></i>
                    <span>Profile</span>
                </div>
                <div class="menu-item" id="logout-btn">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </div>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>MovieHerau</h1>
                <div class="user-info">
                    <img src="IMG_0944.PNG" alt="User  ">
                    <span>John Doe</span>
                </div>
            </div>

            <div class="stats-cards">
                <div class="card">
                    <h3><i class="fas fa-users"></i> Total Users</h3>
                    <p>1,254</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-film"></i> Movies</h3>
                    <p>827</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-tv"></i> Series</h3>
                    <p>432</p>
                </div>
                <div class="card">
                    <h3><i class="fas fa-child"></i> Cartoons</h3>
                    <p>1,089</p>
                </div>
            </div>

            <!-- User Section -->
            <div class="user-section" id="user-section">
                <div class="user-section-header">
                    <h2 class="section-title"><i class="fas fa-user-friends"></i> User Management</h2>
                    <div class="user-actions">
                        <button class="action-btn add-btn">
                            <i class="fas fa-user-plus"></i> Add User
                        </button>
                        <button class="action-btn manage-btn">
                            <i class="fas fa-cog"></i> Manage
                        </button>
                    </div>
                </div>

                <div class="user-list-card">
                    <!-- User Item 1 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user1.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">John Smith</div>
                                <div class="user-email">john.smith@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <!-- User Item 2 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user2.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">Sarah Johnson</div>
                                <div class="user-email">sarah.j@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <!-- User Item 3 -->
                    <div class="user-list-item">
                        <div class="user-info-container">
                            <img src="user3.jpg" alt="User" class="user-avatar">
                            <div class="user-details">
                                <div class="user-name">Michael Brown</div>
                                <div class="user-email">michael.b@example.com</div>
                            </div>
                        </div>
                        <div class="user-actions-container">
                            <button class="user-action-btn edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="user-action-btn delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Movies Section -->
            <div class="movies-section" id="movies-section">
                <h2 class="section-title"><i class="fas fa-video"></i> Contents List</h2>

                <div class="movie-list-card">
                    <!-- Single Movie Item -->
                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>Inception</h4>
                            <p>Released on: April 1, 2025 | Genre: Sci-Fi | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>Interstellar</h4>
                            <p>Released on: March 15, 2025 | Genre: Sci-Fi | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>

                    <div class="movie-list-item">
                        <img src="https://via.placeholder.com/120x80" alt="Thumbnail" class="movie-thumb">
                        <div class="movie-info">
                            <h4>The Dark Knight</h4>
                            <p>Released on: March 28, 2025 | Genre: Action | Category: Movie</p>
                        </div>
                        <div class="movie-actions">
                            <button class="movie-action-btn movie-edit-btn">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="movie-action-btn movie-delete-btn">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Upload Section -->
            <div class="upload-section" id="upload-section">
                <div class="upload-header">
                    <h2 class="section-title"><i class="fas fa-upload"></i> Upload New Movie</h2>
                </div>
                <div class="upload-container">
                    <!-- Column 1: Upload Input -->
                    <div class="upload-input" style="display: flex; flex-direction: column;">
                        <div style="height: 310px;">
                            <label for="movie-upload" style="display: block; margin-bottom: 20px;"><h2>Select Movie:</h2></label>
                            <input type="file" id="movie-upload" accept="video/*">
                            <video id="video-preview" controls style="margin-top: 5px; display: none;"></video>
                        </div>
                        <div style="border-top: solid grey; padding: 10px;">
                            <label for="movie-title">Title:</label>
                            <input type="text" id="movie-title" placeholder="Enter movie title" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                        </div>
                    </div>
                    
                    <!-- Column 2: Movie Details -->
                    <div class="movie-details">
                        <div><h2 style="margin-top: -28px;">Movie Details</h2></div>
                        <div style="margin-bottom: 10px; margin-top: 15px;">
                            <label for="movie-genre">Genre:</label>
                            <input type="text" id="movie-genre" placeholder="Enter movie genre">
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="movie-category">Category:</label>
                            <input type="text" id="movie-category" placeholder="Enter movie category">
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="movie-description">Description:</label>
                            <textarea id="movie-description" placeholder="Enter movie description" rows="4"></textarea>
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="release-date">Release Date:</label>
                            <input type="date" id="release-date">
                        </div>
                    </div>

                    <!-- Column 3: Thumbnail Selector -->
                    <div class="thumbnail-selector" style="display: flex; flex-direction: column;">
                        <div style="height: 310px;">
                            <label for="thumbnail-upload" style="display: block; margin-bottom: 20px;"><h2>Select Thumbnail:</h2></label>
                            <input type="file" id="thumbnail-upload" accept="image/*" 
                            style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                            <img id="thumbnail-preview" src="" alt="Thumbnail Preview" style="margin-top: 15px; display: none;">
                        </div>
                        <div style="border-top: solid grey; padding: 10px;">
                            <button class="upload-btn">Upload</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Logout Confirmation Modal -->
    <div class="modal" id="logout-modal">
        <div class="modal-content">
            <h3><i class="fas fa-sign-out-alt"></i> Confirm Logout</h3>
            <p>Are you sure you want to logout from Admin Dashboard?</p>
            <div class="modal-buttons">
                <button class="modal-btn cancel-btn" id="cancel-logout">Cancel</button>
                <button class="modal-btn confirm-btn" id="confirm-logout">Logout</button>
            </div>
        </div>
    </div>

    <script>
        // Sidebar functionality remains exactly the same
        const menuItems = document.querySelectorAll('.menu-item');
        const mainContent = document.querySelector('.main-content');
        const userSection = document.getElementById('user-section');
        const moviesSection = document.getElementById('movies-section');
        const uploadSection = document.getElementById('upload-section');

        menuItems.forEach(item => {
            item.addEventListener('click', () => {
                // Remove 'active' class from all items
                menuItems.forEach(i => i.classList.remove('active'));
                // Add 'active' class to the clicked item
                item.classList.add('active');
                
                const text = item.textContent.trim();
                
                // Scroll to sections based on menu item clicked
                if (text === 'Dashboard') {
                    mainContent.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });
                }
                else if (text === 'Users') {
                    userSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Movies') {
                    moviesSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Upload') {
                    moviesSection.scrollIntoView({ behavior: 'smooth' });
                }
                else if (text === 'Profile') {
                    // You can add profile section scrolling here if you add a profile section
                }
            });
        });

        // Logout modal functionality remains the same
        const logoutBtn = document.getElementById('logout-btn');
        const logoutModal = document.getElementById('logout-modal');
        const cancelLogout = document.getElementById('cancel-logout');
        const confirmLogout = document.getElementById('confirm-logout');

        logoutBtn.addEventListener('click', () => {
            logoutModal.style.display = 'flex';
        });

        cancelLogout.addEventListener('click', () => {
            logoutModal.style.display = 'none';
        });

        confirmLogout.addEventListener('click', () => {
            // Submit a POST request to logout controller
            const form = document.createElement("form");
            form.method = "POST";
            form.action = "logout";
            document.body.appendChild(form);
            form.submit();
        });

        window.addEventListener('click', (event) => {
            if (event.target === logoutModal) {
                logoutModal.style.display = 'none';
            }
        });

        // File upload preview functionality remains the same
        const movieUpload = document.getElementById('movie-upload');
        const videoPreview = document.getElementById('video-preview');
        const thumbnailUpload = document.getElementById('thumbnail-upload');
        const thumbnailPreview = document.getElementById('thumbnail-preview');

        movieUpload.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                const fileURL = URL.createObjectURL(file);
                videoPreview.src = fileURL;
                videoPreview.style.display = 'block';
                videoPreview.classList.add('uploaded');
            }
        });

        thumbnailUpload.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                const fileURL = URL.createObjectURL(file);
                thumbnailPreview.src = fileURL;
                thumbnailPreview.style.display = 'block';
                thumbnailPreview.classList.add('uploaded');
            }
        });


        // New functionality for user actions
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Add User functionality will be implemented here');
            });
        });

        document.querySelectorAll('.remove-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Remove User functionality will be implemented here');
            });
        });

        document.querySelectorAll('.manage-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                alert('Manage Users functionality will be implemented here');
            });
        });

        // New functionality for user edit/delete buttons
        document.querySelectorAll('.user-action-btn.edit-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const userName = btn.closest('.user-list-item').querySelector('.user-name').textContent;
                alert(`Edit user: ${userName}`);
            });
        });

        document.querySelectorAll('.user-action-btn.delete-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const userName = btn.closest('.user-list-item').querySelector('.user-name').textContent;
                if (confirm(`Are you sure you want to delete user: ${userName}?`)) {
                    btn.closest('.user-list-item').remove();
                }
            });
        });

        // New functionality for movie edit/delete buttons
        document.querySelectorAll('.movie-action-btn.movie-edit-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const movieTitle = btn.closest('.movie-list-item').querySelector('h4').textContent;
                alert(`Edit movie: ${movieTitle}`);
            });
        });

        document.querySelectorAll('.movie-action-btn.movie-delete-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const movieTitle = btn.closest('.movie-list-item').querySelector('h4').textContent;
                if (confirm(`Are you sure you want to delete movie: ${movieTitle}?`)) {
                    btn.closest('.movie-list-item').remove();
                }
            });
        });
    </script>
</body>
</html>