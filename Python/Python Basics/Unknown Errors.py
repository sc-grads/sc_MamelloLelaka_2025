import traceback
def do_something():
    try:
        do_something()
    except Exception as e:
        print("An unexpected error occurred:", e)
        traceback.print_exc()  # Shows the full stack trace