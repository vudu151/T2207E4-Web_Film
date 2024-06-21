// BAO GIO XONG CELEBRITIES => LAM TIEP


// // 1.Foreach Job in Header
// fetch('/v1/jobs')
//     .then(response =>{
//         if(!response.ok){
//             throw new Error("Network response was not ok");
//         }
//         return response.json();
//     })
//     .then(data =>{
//         const jobList = document.getElementById('jobList');
//         data.forEach(job =>{
//             const listItem = document.createElement('li');
//             const link = document.createElement('a');
//             link.textContent = job.name; // Thêm tên công việc vào nội dung của thẻ <a>
//             // Ở đây bạn có thể thêm thuộc tính href cho thẻ <a> nếu cần thiết
//             // link.setAttribute('href', '/celebrities/' + job.id);
//             listItem.appendChild(link);
//             jobList.appendChild(listItem);
//         })
//     })
//     .catch(error => {
//         console.error('There was a problem with the fetch operation:', error);
//     });