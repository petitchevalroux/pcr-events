package main

import (
    "fmt"
)

type Task struct {
    params [] string
}

type TaskResult struct {
    task Task
    result string
}

type TaskQueue struct {
    inChannel chan string
    outChannel chan string
    callback func (string) string
}

func newTaskQueue(callback func (string) string) * TaskQueue {
    instance := new(TaskQueue)
    instance.inChannel = make(chan string)
    instance.outChannel = make(chan string)
    instance.callback = callback
    return instance
}

func (self TaskQueue) add(param string) {
    go  func () {
        self.inChannel <- param
    }()
}

func (self TaskQueue) run() {
    go  func () {
        self.outChannel <- self.callback(<- self.inChannel)
    }()
}


func main() {
    #https://www.opsdash.com/blog/job-queues-in-go.html
    testQueue := newTaskQueue(func(params string)(string) {
        return "callback run " + params
    })
    testQueue.add("bar")
    testQueue.run()
    fmt.Print(<- testQueue.outChannel)
}