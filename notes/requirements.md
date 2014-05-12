## Task Manager Requirements

*Phase 1*

#### Projects/Tasks
* A new project can be created with a name
    - Initialize project
    - Create name
* When a project is create a unique ID is generated and appended to the project
    - Method: Name
    - Method: PID
    - Method: Date Created
    - Method: Complete (Boolean)
    - Method: Archive
* A new task can be created with:
    - Method: Project ID
        + Unique PID instance variable
    - Method: Task ID
        + Unique TID instance variable
    - Method: Description
        + Description instance variable
    - Method: Priority #
        + Priority instance variable (Range 1-3)
    - Method: Created Date
    - Method: Archive
    - Method: Complete?
* A task can be marked complete
    - Instance variable - Complete = False
        + Writer method
    - Method: mark true -- No method to mark false
* A project can retrieve a list of all complete tasks
    - Method: sort complete == true
* A project can retrieve a list of all incomplete tasks, sorted by priority
    - If two tasks have the same priority, the older tasks get priority
    - Method: sort priority

##### Projects - User
* Ask the project it's name
* Ask the project it's date created
* Ask the project if it's completed
* Ask the project it's archive status

**RSPEC**
*Instance level*
- it "can tell the user it's name" do
- It "can tell the user it's creation date" do
- it "can tell the user it's completion status" do
- it "can tell the user it's archive status" do

*Class level*
- it "can list it's archived projects" do
- it "can tell the user the number of project instances" do

##### Tasks - User
* Ask the task it's project ID
* Ask the task it's task ID
* Ask the task it's Description
* Ask the task it's Created Date
* Ask the task it's Completion status
* Ask the task it's archive status

**RSPEC**
*Instance Level*
- it "can tell the user it's project ID" do
- it "can tell the user it's task ID" do
- it "has user id's that start at 1 for each new project instance" do
- it "can tell the user it's description" do
- it "create the description" do
- it "can update the description" do
- it "can tell the user it's creation date" do
- it "can tell the user it's completion status" do
- it "can be marked completed" do
- it "can tell the user it's priority" do
- it "can update it's priority" do
- it "does not return completed tasks in for the active project" do
- it "does not return uncompleted tasks in the archive section" do

*Class level*
- it "can tell the user how many tasks have been made" do
- it "can tell the user how many tasks have been completed" do

#### Terminal Client
* help - Show all commands
* list - List all projects
* create NAME - create a new project w/ name = NAME
* Show PID - show remaining tasks for project w/id
* History PID - show completed tasks
* Add PID priority Desc - Add a new task to project w/ id = PID
* Mark TID - Mark task w/ ID as complete

**Methods**
* list all commands
* list all projects
* create project w/ name
* Create task w/ description
* Show remaining tasks by PID
* Show remaining tasks by name
* Show completed tasks within a project
* Show completed projects
* Mark tasks complete
* 

**RSPEC**
- It "can list all it's commands" do
- It "can list all projects" do
- It "can list all tasks in a project" do
- it "can create a new Project w/ name equal to user input" do
- it "can show remaining tasks for project w/id" do
- it "can show remaining tasks for a project w/name" do
- it "can show completed tasks with project ID" do
- it "can show task description with task_id"
- it "can create a task with a priority" do
- it "can add priority to a task" do
- it "can update a priority on a project" do
- it "can mark a task complete w/ ID" do
- 
*Phase 2*

#### Class DB
* Create a project - format in a way that can be built into an object and pass information to DB
* Build project - take project object and build instance
* get_project - retrieve project from DB
* destroy_project - get rid of project
* update_project - update information on a current project

#### Employees (Complete the DB logic first)
* An employee can be created with a name
* This must automatically generate and assign a unique ID
* Mutliple employees can participate in a single project
* Taks can be assigned to an employee
    - The employee must be participating in that project

#### Terminal Client - Commands
*  help - Show these commands again
*  project list - list all projects
*  project create NAME - create a new project
*  project show PID - show remaining tasks for project PID
*  project history PID - Show completed tasks for project PID
*  project employees PID - Show the employees participating in this project
*  project recruit PID EID - Add employee EID to participate in project
*  task create PID PRIORITY DESC - Add a new task to project PID
*  task assign TID EID - Assign task to employee
*  task mark TID - Mark task TID as complete
*  emp list - List all employees
*  emp create NAME - create a new employee
*  emp show EID - Show employee EID and all participating projects
*  emp show EID - Show employee EID and all participating projects
*  emp details EID - Show all remaining tasks assigned to employee EID along with project name next to each task
*  emp history EID - Show completed tasks for employe with id=EID
