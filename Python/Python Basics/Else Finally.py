import random

def fetch_data():
    """Simulate a network fetch that randomly fails."""
    if random.choice([True, False]):
        raise ConnectionError("Network unreachable")
    return {"value": 41}

def main():
    try:
        print("Attempting to fetch data...")
        data = fetch_data()        # May raise ConnectionError
    except ConnectionError as e:
        print("Fetch error:", e)
    else:
        # Only if no exception
        print("Success! Processing data:", data["value"] * 2)
    finally:
        print("Exiting main (cleanup if needed).")

# Run multiple times to see both paths
for _ in range(6):
    main()
    print("---")