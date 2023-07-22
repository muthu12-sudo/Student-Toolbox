let uploadButton = document.getElementById("upload-button");
let chosenImage = document.getElementById("chosen-image");
let fileName = document.getElementById("file-name");
let contain = document.querySelector(".contain");
let error = document.getElementById("error");
let imageDisplay = document.getElementById("image-display");

const fileHandler = (file, name, type) => {
  if (type.split("/")[0] !== "image") {
    //File Type Error
    error.innerText = "Please upload an image file";
    return false;
  }
  error.innerText = "";
  let reader = new FileReader();
  reader.readAsDataURL(file);
  reader.onloadend = () => {
    //image and file name
    let imageContain = document.createElement("figure");
    let img = document.createElement("img");
    img.src = reader.result;
    imageContain.appendChild(img);
    imageContain.innerHTML += `<figcaption>${name}</figcaption>`;
    imageDisplay.appendChild(imageContain);
  };
};

//Upload Button
uploadButton.addEventListener("change", () => {
  imageDisplay.innerHTML = "";
  Array.from(uploadButton.files).forEach((file) => {
    fileHandler(file, file.name, file.type);
  });
});

contain.addEventListener(
  "dragenter",
  (e) => {
    e.preventDefault();
    e.stopPropagation();
    contain.classList.add("active1");
  },
  false
);

contain.addEventListener(
  "dragleave",
  (e) => {
    e.preventDefault();
    e.stopPropagation();
    contain.classList.remove("active1");
  },
  false
);

contain.addEventListener(
  "dragover",
  (e) => {
    e.preventDefault();
    e.stopPropagation();
    contain.classList.add("active1");
  },
  false
);

contain.addEventListener(
  "drop",
  (e) => {
    e.preventDefault();
    e.stopPropagation();
    contain.classList.remove("active1");
    let draggedData = e.dataTransfer;
    let files = draggedData.files;
    imageDisplay.innerHTML = "";
    Array.from(files).forEach((file) => {
      fileHandler(file, file.name, file.type);
    });
  },
  false
);

window.onload = () => {
  error.innerText = "";
};
