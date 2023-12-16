# ROSPM Package Example: hello-world

## installation

- install `rospm` first
- open a RouterOS terminal and install package by command

```

[[$GetFunc "rospm.install"] URL="https://raw.githubusercontent.com/Detavern/rospm-pkg-hello-world/master/hello-world.rsc"];
```

## invoke functions in installed package
```

[[$GetFunc "rospm.example.hello-world.helloWorld"]];
[[$GetFunc "rospm.example.hello-world.helloWorld"] Name="Alice"];
```
