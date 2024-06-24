function loadVideoFromGoogleCloud(videoSourceId, videoUrl) {
    // Fetch the video metadata asynchronously
    fetch(videoUrl)
        .then(response => response.blob())
        .then(blob => {
            // Update the video source with the fetched blob
            const videoSource = document.getElementById(videoSourceId);
            videoSource.src = URL.createObjectURL(blob);
        })
        .catch(error => {
            console.error('Error loading video:', error);
        });
}