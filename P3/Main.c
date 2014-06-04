code Main
	-- OS Class: Project 3
	--
	-- <YOUR NAME HERE>
	-- <Randall Sewell>
	-----------------------------  Main  ---------------------------------

	function main ()
		InitializeScheduler()
		print("-------------HAIRING TEST-------------\n")
		BarberTest()	
		--print("-------------GAMING TEST-------------\n")
		--GameTest()
	endFunction  

	-----------------------------  Task 1: Implement the Sleeping Barber Problem  ---------------------------------

	const
		CHAIRS = 4      -- Chairs. Not Eames. 

	var
		haircuttees: 	Semaphore = new Semaphore -- aka 'barbers'
		haircutters:   	Semaphore = new Semaphore -- aka 'barbies' Wait, that's not right...
		waitForBarber: Semaphore = new Semaphore
		waitForCstmr: Semaphore = new Semaphore
		mutex:     		Semaphore = new Semaphore
		waiting:   		int = 0
		thread: 		array[21] of Thread = new array of Thread {21 of new Thread}

	function haircutter(waitTime: int)
		print("Stage Left: ")
		print(currentThread.name)
		print("\n")
		
		killTime(waitTime) -- Time to "cut hair."

		print("Barber: ")
		print(currentThread.name)
		print(" is about to not murder or rob anyone.\n")


		while (true)
			-- All this is straight from the Tanenbaum sheet.
			haircuttees.Down()    -- No "hair to cut."
			mutex.Down()          -- Grab mutex.
			waiting = waiting - 1 -- One less haircuttee
			haircutters.Up()      -- One haircutter ready to "cut"
			mutex.Up()            -- Release mutex.
			cut_hair()            -- Cut hair (outside critical region)
		endWhile
	endFunction 

	function haircuttee(waitTime: int)
		killTime(waitTime)
		print("Victim/Client: ")
		print(currentThread.name)
		print("\n")


		-- This is also straight from Tanenbaum
		mutex.Down()               -- enter critical region
		if (waiting < CHAIRS)      -- if there are no free chairs, leave
			waiting = waiting + 1  -- increment count of waiting haircuttees
			haircuttees.Up()       -- wake up barber if necessary
			mutex.Up()             -- release access to 'waiting'
			haircutters.Down()     -- go to sleep if # of free barbers is 0
			get_haircut()          -- be seated and be served
		else
			mutex.Up()             -- shop is full, do not wait

			print("There are no seats, so ")
			print(currentThread.name)
			print(" is bugging out. Lucky them!\n")
		endIf
	endFunction

	function get_haircut()
		waitForBarber.Down()
		print(currentThread.name)
		print(" is getting they hair did.\n")
		waitForBarber.Up()
	endFunction

	function cut_hair()
	    waitForCstmr.Down()
		print(currentThread.name)
		print(" is totally not murdering or robbing anyone.\n")

		killTime(50)
		
		print(currentThread.name)
		print(" is done not murdering or robbing anyone.\n")
		waitForCstmr.Up()
	endFunction

	function killTime(waitTime: int)
		-- No Sugar for delay, so this thing.
		var i: int
		for i = 1 to waitTime
		endFor
	endFunction

	function BarberTest()
		var i: int

		haircuttees.Init(0)
		haircutters.Init(0)
		waitForBarber.Init(0)
		waitForCstmr.Init(0)
		mutex.Init(1)

		print("Create some haircutters and haircuttees\n")
		thread[0].Init("Sweeney")
		thread[1].Init("Todd")
		thread[2].Init("Michael")
		thread[3].Init("Tod")
		thread[4].Init("Len")
		thread[5].Init("Denis")
		thread[6].Init("George")
		thread[7].Init("Timothy")
		thread[8].Init("Bob")
		thread[9].Init("Alun")
		thread[10].Init("Dave")
		thread[11].Init("Ben")
		thread[12].Init("Kelsey")
		thread[13].Init("Brian")
		thread[14].Init("Bryn")
		thread[15].Init("Thomas")
		thread[16].Init("Michael")
		thread[17].Init("David")
		thread[18].Init("Ray")
		thread[19].Init("Johnny")
		thread[20].Init("James")


		print("Create some haircutters with wait times\n")
		thread[0].Fork (haircutter, 10) -- Only three, which is more than Fleet ever had.
		-- thread[1].Fork (haircutter, 20)
		-- thread[20].Fork (haircutter, 5)


		print("Create some haircuttees with wait times\n")
		for i = 2 to 19
		  thread[i].Fork(haircuttee, 1000) -- Spin off the victims
		endFor
		--haircuttee()
		--haircuttee()
		--haircutter()

		ThreadFinish()   -- And now we wait.
		print("IT'S OVER.\n")
	endFunction
	
	-----------------------------  Task 2: The Gaming Parlor Problem  ---------------------------------

	var Game: GamingParlor

	function GameTest ()
	  var
		team: array[8] of Thread = new array of Thread {8 of new Thread}

	  Game = new GamingParlor
	  Game.Init ()

	  team[0].Init ("A Backgammon")
	  team[0].Fork (play, 4)
	  team[1].Init ("B Backgammon")
	  team[1].Fork (play, 4)
	  team[2].Init ("C Risk")
	  team[2].Fork (play, 5)
	  team[3].Init ("D Risk")
	  team[3].Fork (play, 5)
	  team[4].Init ("E Monopoly")
	  team[4].Fork (play, 2)
	  team[5].Init ("F Monopoly")
	  team[5].Fork (play, 2)
	  team[6].Init ("G Pictionary")
	  team[6].Fork (play, 1)
	  team[7].Init ("H Pictionary")
	  team[7].Fork (play, 1)

	  ThreadFinish()   -- And now we wait...
	endFunction

	function play (diceNeeded: int)
	  var i: int
	  for i = 1 to 5
		Game.Request(diceNeeded)
		currentThread.Yield()
		Game.Return(diceNeeded)
		currentThread.Yield()
	  endFor
	endFunction
	
	behavior GamingParlor

		method Init ()
		diceCount = 8
		groupsWaiting = 0
		firstCondition = new Condition
		secondCondition = new Condition
		firstCondition.Init()		
		secondCondition.Init()
		diceMutex = new Mutex
		diceMutex.Init()
		endMethod

		method Request (numberOfDice: int)
			-- Lock first, ask questions later
			diceMutex.Lock()
			self.Print ("requests", numberOfDice)
			groupsWaiting = groupsWaiting + 1
			
			if groupsWaiting > 1
				secondCondition.Wait(&diceMutex)
			endIf

			-- Ask questions, since it's later
			while numberOfDice > diceCount			
				firstCondition.Wait(&diceMutex)
			endWhile
			
			diceCount = diceCount - numberOfDice
			groupsWaiting = groupsWaiting - 1
			secondCondition.Signal(&diceMutex)
			
			self.Print ("proceeds with", numberOfDice)
			diceMutex.Unlock()
		endMethod

		method Return (numberOfDice: int)
		  diceMutex.Lock()
		  
		  -- Replace dice
		  diceCount = diceCount + numberOfDice
		  self.Print ("releases and adds back", numberOfDice)
		  
		  -- Signal
		  firstCondition.Signal(&diceMutex)
		  diceMutex.Unlock()
		endMethod
		
		-- Copy. Paste. 
		method Print (str: String, count: int)
			--
			-- This method prints the current thread's name and the arguments.
			-- It also prints the current number of dice available.
			--
				print (currentThread.name)
				print (" ")
				print (str)
				print (" ")
				printInt (count)
				nl ()
				print ("------------------------------Number of dice now avail = ")
				printInt (diceCount)
			nl ()
		endMethod		
    endBehavior
endCode
