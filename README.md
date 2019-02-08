# OpenGL Superbible - 7th Edition
When OpenGL was young, the highest-end SGI systems like the Reality Engine 2
cost $80,000 and could render 200,000 textured triangles per second, or 3,333
triangles per frame at 60 Hz. The CPUs of that era were slower than today, to
be sure, but at around 100 MHz, that’s still 500 CPU cycles for each triangle.
It was pretty easy to be graphics limited back then, and the API reflected
that the only way to specify geometry was immediate mode! Well, there were also
display lists for static geometry, which made being graphics-limited even easier.

OpenGL is not young anymore, the highest-end GPUs that it can run on cost around
$1000, and they don’t even list triangles per second in their basic product
description anymore, but the number is north of 6 billion. Today these GPUs are
in the middle of the single digit teraflops and several hundred gigabytes per
second of bandwidth. CPUs have gotten faster, too: With 4 cores and around 3 GHz,
they are shy of 200 gigaflops and have around 20 gigabytes per second of memory
bandwidth. So where we had 500 CPU cycles for a triangle in the early days, we
now have 0.5 cycles. Even if we could perfectly exploit all 4 cores, that would
give us a paltry 2 CPU cycles for each triangle! All that is to say that the
growth in hardware graphics performance has outstripped conventional CPU
performance growth by several orders of magnitude, and the consequences are
pretty obvious today. Not only is the CPU frequently the limiting factor in
graphics performance, we have an API that was designed against a different set
of assumptions.

The good news with OpenGL is that it has evolved too. First it added vertex
arrays so that a single draw command with fairly low CPU overhead gets
amplified into a lot of GPU work. This helped for a while, but it wasn’t enough.
We added instancing to further increase the amount of work, but this was a
somewhat limited form of work amplification, as we don’t always want many
instances of the same object in an organic, believable rendering.

Recognizing that these emerging limitations in the API had to be circumvented
somehow, OpenGL designers began extending the interface to remove as much
CPU-side overhead from the interface as possible. The “bindless” family of
extensions allows the GPU to reference buffers and textures directly rather than
going through expensive binding calls in the driver. Persistent maps allow the
application to scribble on memory at the same time the GPU is referencing it.
This sounds dangerous—and it can be!—but allowing the application to manage
memory hazards relieves a tremendous burden from the driver and allows for far
simpler, less general mechanisms to be employed. Sparse texture arrays allow
applications to manage texture memory as well with similar, very low-overhead
benefits. And finally multi-draw and multi-draw indirect added means the GPU can
generate the very buffers that it sources for drawing, leaving the CPU a lot
more available for other work.

All of these advances in OpenGL have been loosely lumped under the AZDO
(Approaching Zero Driver Overhead) umbrella, and most of them have been
incorporated into the core API. There are still significant areas for
improvement as we try to get to an API that allows developers to render as much
as they want, the way they want, without worrying that the CPU or driver
overhead will get in the way. These features require a bit more work to make use
of, but the results can be truly amazing! This edition of the OpenGL SuperBible
includes many new examples that make use of AZDO features and provide good
guidance on how to get the CPU out of the way. In particular, you’ll learn good
ways to make use of zero copy, proper fencing, and bindless.

This repository is designed both for people who are learning computer graphics
through OpenGL and for people who may already know about graphics but want to
learn about OpenGL. The intended audience is students of computer science,
computer graphics, or game design; professional software engineers; or simply
just hobbyists and people who are interested in learning something new. We begin
by assuming that the reader knows nothing about either computer graphics or
OpenGL. The reader should be familiar with computer programming in C++, however.

One of our goals with this repository was to ensure that there were as few
forward references as possible and to require little or no assumed knowledge.
The repository is accessible and readable, and if you start from the beginning
and read all the way through, you should come away with a good comprehension of
how OpenGL works and how to use it effectively in your applications. After
reading and understanding the content of this repository, you will be well
positioned to read and learn from more advanced computer graphics research
articles and confident that you can take the principles that they cover and
implement them in OpenGL.

It is not a goal of this repository to cover every last feature of OpenGL that
is, to mention every function in the specification or every value that can be
passed to a command. Rather, we intend to provide a solid understanding of
OpenGL, introduce the fundamentals, and explore some of its more advanced
features. After reading this repository, readers should be comfortable looking
up finer details in the OpenGL specification, experimenting with OpenGL on their
own machines, and using extensions (bonus features that add capabilities to
OpenGL not required by the main specification).

## The Architeture of the Repository
This repository is subdivided into three parts.

In Part I, “Foundations”, we explain what OpenGL is and how it connects to the
graphics pipeline, and we give minimal working examples that are sufficient to
demonstrate each section of it without requiring much, if any, knowledge of any
other part of the whole system. We lay a foundation for the math behind
three-dimensional computer graphics, and describe how OpenGL manages the large
amounts of data that are required to provide a compelling experience to the
users of such applications. We also describe the programming model for shaders,
which form a core part of any OpenGL application.

In Part II, “In Depth”, we introduce features of OpenGL that require some
knowledge of multiple parts of the graphics pipeline and may refer to concepts
mentioned in Part I. This allows us to cover more complex topics without
glossing over details or telling you to skip forward in the repository to find
out how something really works. By taking a second pass over the OpenGL system,
we are able to delve into where data goes as it leaves each part of OpenGL, as
you’ll already have been (at least briefly) introduced to its destination.

Finally, in Part III, “In Practice”, we dive deeper into the graphics pipeline,
cover some more advanced topics, and give a number of examples that use multiple
features of OpenGL. We provide a number of worked examples that implement
various rendering techniques, give a series of suggestions and advice on OpenGL
best practices and performance considerations, and end up with a practical
overview of OpenGL on several popular platforms, including mobile devices.

## Setup the library
Throughout the chapters of this repo a framework has been used to avoid
repeating source code. In order to get everything up and running keep in mind
that you will have to:

 - Clone the [gl3w](https://github.com/skaslev/gl3w) library inside ./library/gl3w.
 - Run gl3w_gen.py Python script to setup the [gl3w](https://github.com/skaslev/gl3w) library.
 - Clone the [glfw](https://github.com/glfw/glfw) library inside ./library/glfw.
 
Once done, you should be able to compile and run all the source files in this repo.

## Building
To build all the source codes in this repo simply run
```bash
cmake CMakeLists.txt -Bcmake-build-debug/
```
in the root folder of this repo, and then move to the `cmake-build-debug` and run
```bash
make
```

e.g.:
```bash
[rambodrahmani@rr-laptop opengl-superbible-7d]$ cmake CMakeLists.txt -Bcmake-build-debug/

-- Using X11 for window creation
-- Configuring done
-- Generating done
-- Build files have been written to: /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug

[rambodrahmani@rr-laptop cmake-build-debug]$ cd cmake-build-debug

[rambodrahmani@rr-laptop cmake-build-debug]$ make
[  6%] Built target library
[  8%] Built target gl3w_gen
[ 36%] Built target glfw
[ 46%] Built target library-test
[ 50%] Built target chapter1-source1
[ 55%] Built target chapter2-source2
[ 60%] Built target chapter2-source1
[ 65%] Built target chapter2-source6
[ 70%] Built target chapter2-source7
[ 75%] Built target chapter2-source3
[ 80%] Built target chapter2-source4
[ 85%] Built target chapter2-source5
[ 90%] Built target chapter3-source2
[ 95%] Built target chapter3-source1
[100%] Built target chapter3-source3
```
#### -- Could NOT find Vulkan (missing: VULKAN_INCLUDE_DIR)
You might get this warning message when running cmake. To get rid of it install
the followwing packages:
 - `vulkan-intel` (depending on your graphic card you might have to change this
one to `nvidia` or `vulkan-radeon` or `amdgpu-pro-vulkan` or `amdvlk-git`)
 - `vulkan-icd-loader`
 - `lib32-vulkan-icd-loader`
 - `extra/vulkan-headers`
