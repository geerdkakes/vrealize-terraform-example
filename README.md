# vrealize-terraform-example


To run this first initialize:

```
$ docker run -it -v $PWD:/home   geerd/terraform:0.9.8 init
```
```
$ docker run -it -v $PWD:/home   geerd/terraform:0.9.8 get
```

After that do a plan to see if the correct actions are taken (you should also save the plan to disk)

```
$ docker run -it -v $PWD:/home   geerd/terraform:0.9.8 plan
```

To apply the propose changes use (you can also apply the plan you saved in the last step):
```
$ docker run -it -v $PWD:/home   geerd/terraform:0.9.8 apply
```
