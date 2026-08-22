import json
import random
import math
from collections import defaultdict

def rebalance_biomes():
    file_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json"

    with open(file_path, 'r') as f:
        data = json.load(f)

    biome_source = data.get('generator', {}).get('biome_source', {})
    biomes = biome_source.get('biomes', [])

    print(f"Original total biomes: {len(biomes)}")

    # Group biomes by type
    biome_groups = defaultdict(list)
    for i, biome in enumerate(biomes):
        biome_name = biome.get('biome', 'unknown')
        biome_groups[biome_name].append((i, biome))

    # Show current distribution
    print("\nCurrent distribution (top 10):")
    sorted_groups = sorted(biome_groups.items(), key=lambda x: len(x[1]), reverse=True)
    for biome_name, group in sorted_groups[:10]:
        print(f"  {biome_name}: {len(group)}")

    print("\nCurrent distribution (bottom 10):")
    for biome_name, group in sorted_groups[-10:]:
        print(f"  {biome_name}: {len(group)}")

    # Calculate statistics
    counts = [len(group) for group in biome_groups.values()]
    mean_count = sum(counts) / len(counts)
    print(f"\nStatistics:")
    print(f"  Biome types: {len(biome_groups)}")
    print(f"  Average entries per type: {mean_count:.1f}")
    print(f"  Median: {sorted(counts)[len(counts)//2]}")

    # Define targets
    # We want to reduce extreme outliers and fill in gaps
    # Strategy:
    # 1. Cap very high-frequency biomes at ~2.5x mean
    # 2. Ensure minimum frequency for all biomes (at least 0.5x mean, min 4)
    # 3. Preserve relative ordering to some extent

    high_cap = max(mean_count * 2.5, 25)  # At least 25 entries cap
    low_floor = max(mean_count * 0.5, 4)   # At least 4 entries floor

    print(f"\nTargets:")
    print(f"  High cap: {high_cap:.1f}")
    print(f"  Low floor: {low_floor:.1f}")

    # New biome list
    new_biomes = []

    # Process each biome type
    for biome_name, group in sorted_groups:
        current_count = len(group)
        target_count = current_count

        # Apply caps and floors
        if current_count > high_cap:
            target_count = int(high_cap)
            print(f"  Reducing {biome_name}: {current_count} -> {target_count}")
        elif current_count < low_floor:
            target_count = int(low_floor)
            print(f"  Increasing {biome_name}: {current_count} -> {target_count}")

        # Get the biome entries for this type
        entries = [biome for idx, biome in group]

        if target_count >= current_count:
            # Need to increase: duplicate existing entries
            # To preserve parameter variety, cycle through existing entries
            repeats = target_count // current_count
            remainder = target_count % current_count

            new_entries = []
            for i in range(repeats):
                new_entries.extend(entries)
            # Add remainder by cycling through entries
            new_entries.extend(entries[:remainder])
            entries = new_entries
        else:
            # Need to decrease: select subset
            # Try to preserve parameter diversity by selecting evenly spaced entries
            if target_count >= 1:
                step = max(1, current_count // target_count)
                indices = list(range(0, current_count, step))[:target_count]
                # If we didn't get enough, fill from the end
                while len(indices) < target_count:
                    indices.append(current_count - 1 - (len(indices) - (current_count // step)))
                indices = sorted(indices[:target_count])
                entries = [entries[i] for i in indices]
            else:
                entries = []  # Shouldn't happen with our floor

        # Add to new biome list with original indices preserved for stability
        for idx, (orig_idx, _) in enumerate(group):
            if idx < len(entries):
                new_biomes.append((orig_idx, entries[idx]))

    # Sort by original index to maintain approximate order
    new_biomes.sort(key=lambda x: x[0])
    final_biomes = [biome for idx, biome in new_biomes]

    # Update the data
    biome_source['biomes'] = final_biomes
    data['generator']['biome_source'] = biome_source

    # Save
    with open(file_path, 'w') as f:
        json.dump(data, f, indent=2)

    print(f"\nNew total biomes: {len(final_biomes)}")

    # Analyze new distribution
    new_counts = defaultdict(int)
    for biome in final_biomes:
        new_counts[biome.get('biome', 'unknown')] += 1

    new_sorted = sorted(new_counts.items(), key=lambda x: x[1], reverse=True)
    print(f"\nNew distribution (top 10):")
    for biome_name, count in new_sorted[:10]:
        print(f"  {biome_name}: {count} ({count/len(final_biomes)*100:.1f}%)")

    print(f"\nNew distribution (bottom 10):")
    for biome_name, count in new_sorted[-10:]:
        print(f"  {biome_name}: {count} ({count/len(final_biomes)*100:.1f}%)")

    # New statistics
    new_counts_list = [count for _, count in new_sorted]
    new_mean = sum(new_counts_list) / len(new_counts_list)
    print(f"\nNew Statistics:")
    print(f"  Biome types: {len(new_counts)}")
    print(f"  Average entries per type: {new_mean:.1f}")
    print(f"  Median: {sorted(new_counts_list)[len(new_counts_list)//2]}")
    print(f"  Min: {min(new_counts_list)}")
    print(f"  Max: {max(new_counts_list)}")

    # Calculate improvement in uniformity
    old_std = math.sqrt(sum((c - mean_count) ** 2 for c in counts) / len(counts))
    new_std = math.sqrt(sum((c - new_mean) ** 2 for c in new_counts_list) / len(new_counts_list))
    print(f"\nUniformity improvement:")
    print(f"  Old std dev: {old_std:.1f}")
    print(f"  New std dev: {new_std:.1f}")
    print(f"  Reduction: {((old_std - new_std) / old_std * 100):.1f}%")

if __name__ == "__main__":
    rebalance_biomes()