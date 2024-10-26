## SPRING FRAMEWORK

This application is a basic User Management System
built using Spring Core without Spring Boot,
Spring MVC, and Spring Data JPA. It allows users to perform CRUD operations
such as creating, viewing, updating, and deleting users through a web interface.

## Table of Contents
- [Project Structure](#project-structure)
- [Dependency Injection (DI)](#dependency-injection-di)
- [Inversion of Control (IoC)](#inversion-of-control-ioc)
- [Spring Beans](#spring-beans)
- [Bean Scopes](#bean-scopes)
- [ApplicationContext](#applicationcontext)
- [Component Scanning and Stereotype Annotations](#component-scanning-and-stereotype-annotations)
- [Spring Data JPA](#spring-data-jpa)
- [Spring MVC](#spring-mvc)
- [Installation and Setup](#installation-and-setup)

### Project Structure
    

### Dependency Injection (DI)
    EST UNE IMPLEMENTATION de Ioc il nous fait l'injection des beans externes dans notre class selon les besoin en evitant le couplage fort 
    on a 3 types d'injection : constructeur , setter et annotation 

### Inversion of Control (IoC)
    est une philosophie ou bien un concept qui fait la gestion et le controlle des des objets (beans )dans notre application

### Spring Beans
    est un objet java instancié et gérer par le conteneur Ioc et les beans sont configuré dans un fichier XML

### Bean Scopes
    voila les types:
    singleton (par defaut): le bean est instacie une seul fois dans notre application 
    prototype : le bean est instancie a chaque fois qu'il est demandé
    
### ApplicationContext
    est interface Ico qui exetend de beanFactory qui nous offre des fonctionalité pour gerer notre beans 

### Component Scanning and Stereotype Annotations
    Stereotype Annotations: sont les annotations qui markent une class comme un composant spring specifique au role qu'il joue dans l'application
    Component Scanning : est une fonctuinnalité qui permet au conteneur Ioc de chercher et detetcter les classes et l'enregistrer comme spring beans
### Spring Data JPA
    c'est module Spring qui facilite l'acces au base de donnée et et  de simplifier les opreration de persistance pour que les développeur soient concentrer sur le logique métier

### Spring MVC
    est un framework de spring pour construire des application base sue l'archetecteur MVC model vue controlleur et aide agérer les requete HTTP

### Installation and Setup
    commancons etape par etape installation des dépendances selon le besoin a l'aide de  maven et la configuration des fichiers xml ensuite extend l'interface JpaRepository poyur les opération de crud