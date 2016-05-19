configuration AppC {
}
implementation {
	components MyCollectionC;
	components AppP;
	components SerialPrintfC, SerialStartC;
	components new TimerMilliC() as StartTimer;
	components new TimerMilliC() as PeriodicTimer;
	components new TimerMilliC() as JitterTimer;
	components MainC, RandomC;

	AppP.Boot -> MainC;
	AppP.MyCollection -> MyCollectionC;
	AppP.Random -> RandomC;
	AppP.StartTimer -> StartTimer;
	AppP.PeriodicTimer -> PeriodicTimer;
	AppP.JitterTimer -> JitterTimer;
}
