import 'dart:ffi';
import 'dart:io';

void main(){
  List <String> task_list=[];
  var choice;
  do{
  print("\n To Do List Functionality : \n 1. View All Task. \n 2. Add New Task. \n 3. Delete Previous Task. \n 4. Update Existing Task. ");
  stdout.write("Enter number to perform a task : ");
  String input = (stdin.readLineSync()!) ;

   switch(input){
    case '1' :
    print("All task:");
    if(task_list.isNotEmpty){
      for (var i = 0; i < task_list.length; i++) {
        print("${i+1}.${task_list[i]}");
        print("all task shown successfully!");
      }
    }
      else{
      print("There are no task in your TO DO LIST!");
      }
    break;

      case '2' :
    stdout.write("Add new task:");
    String task =(stdin.readLineSync()!);
    task_list.add(task);
    print("task added successfully!");
    break;

    case '3' :

    if(task_list.isNotEmpty){
      print("Deleting previous...");
      task_list.removeLast();
      print("task deleted successfully!");
    }
    else{
      print("There is no task to delete");
    }
    break;
    case '4' :
    print("Update existing task:");
    stdout.write("Enter task number: ");
    int taskNum = int.parse(stdin.readLineSync()!);
    if (taskNum > 0 && taskNum <= task_list.length) {
      stdout.write("write new task: ");
      String task2 = stdin.readLineSync()!;
      task_list[taskNum - 1] = task2;
      print("Task updated successfully!");
    } else {
        print("Invalid task number!");
    }
    break;
    default:
    print("Invalid! input please enter a valid number.");
    break;
   }
     stdout.write("Enter Y to continue and Enter N to exit: ");
     choice = (stdin.readLineSync()!);
  }

  while (choice=='y'|| choice=='Y');
print("Thanks for using TO DO LIST!");
 
}