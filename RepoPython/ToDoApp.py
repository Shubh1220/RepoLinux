def task():
    tasks=[]
    print("-----WELCOME TO THE TASK MANAGEMENT APP-----")

    total_task=int(input("Enter how many task you want to add= "))
    for i in range(1,total_task+1):
        task_name=input(f"Enter task {i}= ")
        tasks.append(task_name)

    print(f"Todays's tasks are\n{tasks}")

    while True:
        operation=int(input("Enter 1-Add\n2-Update\n3-Delete\n4-View\n5-Exit/Stop/"))
        if operation==1:
            add=input("Enter task you want to add= ")
            tasks.append(add)
            print(f"Task {add} has been successfully added...")

        elif operation==2:
            update=input("Enter the task name you want to update= ")
            if update in tasks:
                up=input("Enter new task= ")
                ind=tasks.index(update)
                tasks[ind]=up
                print(f"Updated task {up}")

        elif operation==3:
              delete=input("Which task you want to delete= ")
              if delete in tasks:
                  ind=tasks.index(delete)
                  del tasks[ind]
                  print(f"Task {delete} has been deleted...")

        elif operation==4:
            print(f"Total tasks= {tasks}")

        elif operation==5:
            print("Closing the program...") 
            break

        else:
            print("Invalid input")

task()