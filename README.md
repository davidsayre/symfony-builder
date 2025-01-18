## Simple Symfony builder (php8.3)

When you want to use docker to run php and symfony to create a new project.

Assume you don't have php, composer, symfony natively installed on your computer. Why not just boot a docker and mount ./app volume.

### Step 1:
```
my_computer>  ./start.sh
```

### Step 2: 

```
docker> symfony new (project)
```

### Exit docker and move files out of the ./app/(project)

```
docker> exit
my_computer> mv /app/(project) ../
```

