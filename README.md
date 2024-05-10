# protovibe
Prototyping in visualization and behaviour for SPA (single page webapplications)

## Introduction
This repository is about a design and development process called "protovibe". Protovibe stands for __prototyping in visualization and behaviour__ and is a near null-code design process to establish a viable representation in  
 * feel & look -> __visualization__
 * perceived functionality -> __behaviour__
for a SPA (single page webapplications).

The purpose of prototyping is to give the users (the app-designer and his client) a viable idea of the final product. The goals for a efficient prototyping process might also be to provide a result as soon and as cheap as possible by reducing and moving most of the feedback time & costs into the design-phase rather than into the coding-phase of a SPA-project. The idealistic goal of using protovibe of a process is to delay as much a possible the coding and programming of the SPA-functionality. This is done by exploring the given use cases (standard cases and edge cases) of the SPA through using existing hypertext-mechanisms, and embrace a minimalistic & nearly null-code workflow before the cost of real backend and frontend coding meets the project.

## Manifestaion of a protovibe based SPA-prototype project
Following dogmatic near null-code principles describe a protovibe SPA:
 1. No backend (server) code shall exist to provide output for hypertext-injections into the SPA
 2. Frontend code (Javascript & webassembly, ...) in the browser shall be kept a minimum and just to inject and modify the SPA-mainpage for the given use cases
 3. The state of the protovibe SPA is the current visual state of the webpage's DOM. No hidden state is used.

## Technologies used 
To create a protovibe SPA you need
 1. A webbrowser 
   1. to show either the SPA-mainpage html-file on the local file-system. Beware that CORS-restrictions may apply and you need them to be disabled for the prototypes to work.
   2. or to show the SPA-mainpage html-file from a static webserver, that only provides static html ie. no dynamically generated html
 2. HTML-files and other hypertext artifacts
   1. one or more base html-files for the SPA-mainpage(s). Multiple SPA-mainpage html-files might be necessary for outlining various use-cases, but that can prevented by using [hx-plonck]().
   2. html-fragment files that are injected into the SPA-mainpage in a given use-case emulation.
   3. other hypertext-supporting artifacts such as CSS-files and images
 3. [HTMX](https://htmx.org/) as the core functionality to inject html-fragments into SPA-page to emulate the perceived functionality ie. behaviour
 4. [hx-plonck](https://github.com/sascha-dibbern/hx-plonck), a special java-script HTMX extension, that abstracts the paths to html-fragments injected by HTMX. Using hx-plonck helps to reduce the amount of copies of use-case based SPA-mainpage html-file, as use-case scenarios can be embedded and controlled from within a single SPA-mainpage through this extendsion.

## Examples
This repository contains some examples which can be divided into 2 groups
 * Non-plonck examples are protovibes without usage of hx-plonck (non-ploncked-examples)
 * Plonck examples are protovibes with usage of hx-plonck (ploncked-examples)

### Running of examples
There are to ways to run the examples

#### Use local file-system
The webbrowser fetches the SPA-mainpage and all artifacts from the local filesystem. Demo-scripts are made for this, but the reader has to be aware of, that the webbrowsers needs to run with CORS disabled. CORS is an essential security feature of a webbrowser. The demo-script files have a more detailed description about disabling CORS, running without it and the given risks.

#### Use static file webserver
The examples can also be copied into a webservers static content area an be seen with a webbrowser without any CORS-issues. In a design and prototype development scenario this approach might not be optimal as page-caching issue and extra time for html-upload might interfere with the personal prototype development workflow.


