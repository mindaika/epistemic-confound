header Main

  uses System, Thread, Synch

  functions
    main ()	
    get_haircut()
    cut_hair()
    haircutter(waitTime: int)
    haircuttee(waitTime: int)
    killTime(waitTime: int)
	BarberTest()
  
  class GamingParlor
    superclass Object
    fields
      diceCount: 		int
	  groupsWaiting:	int
      firstCondition:  	Condition
	  secondCondition: 	Condition	  
      diceMutex:  		Mutex
    methods
      Init ()
      Request (numberOfDice: int)
      Return (numberOfDice: int)
      Print (str: String, count: int)  endClass

endHeader
