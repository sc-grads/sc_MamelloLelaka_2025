import asyncio

async def say_after(delay, message):
    await asyncio.sleep(delay)
    print(message)

async def main():
    # Schedule say_after(1, "hello") to run “in the background”
    task1 = asyncio.create_task(say_after(1, "hello"))
    task2 = asyncio.create_task(say_after(2, "world"))

    print("Tasks created, now doing other work...")
    await asyncio.sleep(0.5)
    print("Still doing other work while tasks run.")

    # Now wait for both tasks to finish
    await task1
    await task2

asyncio.run(main())