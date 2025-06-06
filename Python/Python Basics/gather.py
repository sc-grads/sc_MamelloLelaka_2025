import asyncio

async def fetch_data():
    await asyncio.sleep(1)
    return "data"

async def compute_value():
    await asyncio.sleep(2)
    return 42

async def say_hello():
    await asyncio.sleep(0.5)
    return "hello"

async def main():
    # Schedule all three coroutines and wait for them concurrently
    results = await asyncio.gather(
        fetch_data(),
        compute_value(),
        say_hello()
    )
    print(results)  # ['data', 42, 'hello']

asyncio.run(main())