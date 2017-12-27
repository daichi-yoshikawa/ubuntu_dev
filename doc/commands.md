Nice
====
Priority -20 is the highest priority, and priority 19 is the lowest priority.
Sometimes, renice will be denied because of permission.
In that case, just add sudo at the head of the following command.

```bash
    $ renice <priority (-20 to 19)> -p <process ID>
```

eg.
```bash
    $ renice -12 -p 1134
```
