
IronMQ on OpenShift in 5 Minutes
--------------------------------

This git repository helps you easily integrate the cloud message queue service IronMQ into your OpenShift apps.

###Step 1. Create OpenShift App###

Create an account at http://openshift.redhat.com/ and set up you local machine with the client tools.

Create a ruby-1.9 application (you can call your application whatever you want)
<pre>
    rhc app create ironmq ruby-1.9
</pre>
Add this upstream IronMQ repo
<pre>
    cd ironmq
    git remote add upstream -m master git://github.com/openshift-quickstart/ironmq-openshift-quickstart.git
    git pull -s recursive -X theirs upstream master
</pre>

###Step 2. Configure IronMQ###

1. Sign up for a developer account at http://iron.io
2. Create a project
3. Retrieve your token and project_id
4. Enter those values into <strong>config.rb</strong>

```
  config = {
    token: 'put_token_here',
    project_id: 'put_project_id_here'
  }
```

###Step 3. Deploy your app###

```
    git add .
    git commit -m "my first commmit"
    git push
```

###Step 4. View your app!###

```
    http://ironmq-$yournamespace.rhcloud.com
```


More Information
----------------------------

For IronMQ's developer center visit http://dev.iron.io

For more info on the IronMQ Ruby client visit https://github.com/iron-io/iron_mq_ruby

For info on using IronMQ with other programming languages visit: http://dev.iron.io/mq/libraries/

For more information on Iron.io visit http://iron.io