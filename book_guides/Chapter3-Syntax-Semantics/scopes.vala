{
	int x;
	{
		int y = x; // valid, x is visible here
	}

	int x = y; // invalid, y does not exist here
}
//  While they don’t make a lot of sense, empty scopes are also allowed.