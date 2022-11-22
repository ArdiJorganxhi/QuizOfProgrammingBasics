# Welcome to one of the easiest quizzes for programming!

Quiz Of Programming Basics is a short quiz about basics of programming. There are 3 questions in total and each one is 1 point in value. For every correct answer, you get +1 point and for every wrong answer you don't get any points.


This application is developed using SwiftUI, the aim of the project was to learn more about basics of SwiftUI and usage of navigations between different Views. 

There are 5 Views in total: ContentView, Guide2View, StartQuizView, QuestionView, FinishedView.



# ContentView

ContentView contains a Welcome text and a NavigationLink as a SF Symbol to change the view to Guide2View.
<img width="260" alt="Screenshot 2022-11-23 at 01 13 38" src="https://user-images.githubusercontent.com/73110402/203432179-7dfa9b12-b9e2-47d3-b6c6-4f7a4328c859.png">


# Guide2View & StartQuizView

Guide2View uses TabView to show guides as tabs, there are 4 tabs, three of them gives a guideline for user while the last one navigates to StartQuizView and it takes an input from user using TextField and navigates to QuestionView.


https://user-images.githubusercontent.com/73110402/203432681-c15d24b8-6a1f-4956-b82c-a741d5398d4c.mov


# QuestionView & FinishedView

QuestionView displays three questions and validates the points of player when answering a question. When user clicks an answer choice, it automatically changes the question and answer choices and validates if user selected correct answer. At the end, it navigates to FinishedView and it shows user it's final score.

P.S: Normally, input taken from StartView is shown too, but the record was made from QuestionView so it doesn't show any username, you can see the original one at full implementation video.


https://user-images.githubusercontent.com/73110402/203433424-06fd6659-964a-41cf-9623-970532b9f4d6.mov



# Full implementation:



https://user-images.githubusercontent.com/73110402/203434398-c56653f3-8a5a-4132-b01b-55a6100fd769.mov







