# pdiot-activity-tracker
This is the practical for the PDIoT course. 

## File structure
```
.
├── app                     # Submodule to the forked pdiot app
├── ml                      # Where all the ML model stuff goes
│   └── pdiot-data          # Submodule to the given data directory
└── README.md

```

## Installation
1. Clone this repo
2. Get the submodules: 

```
git submodule init
git submodule update
```

## Changing the submodules
1. Commit and push the changes in the submodule (inside the app folder)
2. Commit and push changes in the base directory (to track the updated submodule)
