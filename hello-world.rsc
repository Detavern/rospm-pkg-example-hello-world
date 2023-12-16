# name: the name when invoked by `GetFunc`
# version: will be compared when upgrading
# url: will be used when upgrading
# proxyUrl: if exist, this url will be used instead of `url` when upgrading

:local metaInfo {
    "name"="rospm.example.hello-world";
    "author"="rospm";
    "version"="1.0.0";
    "description"="A bootstrap ROSPM extension package example";
    "url"="https://raw.githubusercontent.com/Detavern/rospm-pkg-example-hello-world/master/hello-world.rsc";
};


# $helloWorld
# [[$GetFunc "rospm.example.hello-world.helloWorld"] Name="Alice"];
# In order to avoid using of built-in keywords, UpperCamelCase is strongly recommended
# for the style of keyword arguments.
# kwargs: Name=<str>    substitution of string "world"
:local helloWorld do={
    :global IsNothing;
    :if ([$IsNothing $Name]) do={
        :put "Hello world!";
    } else {
        :put ("Hello $Name!");
    }
}


# $helloWorldB
# You MUST use a keyword argument when passing arguments into functions.
# the position argument won't work, this is an example.
# [[$GetFunc "rospm.example.hello-world.helloWorldB"] "Alice"];
# args: <str>    substitution of string "world"
:local helloWorldB do={
    :global IsNothing;
    :if ([$IsNothing $1]) do={
        :put "Hello world!";
    } else {
        :put ("Hello $Name!");
    }
}


:local package {
    "metaInfo"=$metaInfo;
    "helloWorld"=$helloWorld;
    "helloWorldB"=$helloWorldB;
}
:return $package;
