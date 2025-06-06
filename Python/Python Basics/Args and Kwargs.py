def mixed_example(required1, required2, *args, option=True, **kwargs):
    """
    - required1, required2: regular positional parameters
    - *args: extra positional arguments as a tuple
    - option: a keyword-only parameter with a default value
    - **kwargs: extra keyword arguments as a dict
    """
    print("Required:", required1, required2)
    print("Args tuple:", args)
    print("Option flag:", option)
    print("Kwargs dict:", kwargs)

    print(mixed_example(10, 20, 30, 40, option=False, debug=True, verbose=False))