import json
import random
from collections import defaultdict

def final_biome_balance():
    file_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json"

    with open(file_path, 'r') as f:
        data = json.load(f)

    biome_source = data.get('generator', {}).get('biome_source', {})
    biomes = biome_source.get('biomes', [])

    print(f"Current total biomes: {len(biomes)}")

    # Group biomes by type
    biome_groups = defaultdict(list)
    for biome in biomes:
        biome_name = biome.get('biome', 'unknown')
        biome_groups[biome_name].append(biome)

    # Show current distribution
    counts = [len(group) for group in biome_groups.values()]
    print(f"\nCurrent statistics:")
    print(f"  Biome types: {len(biome_groups)}")
    print(f"  Total biomes: {sum(counts)}")
    print(f"  Min count: {min(counts)}")
    print(f"  Max count: {max(counts)}")
    print(f"  Average: {sum(counts)/len(counts):.1f}")

    # Define target range: aim for 12-20 occurrences per biome
    # This ensures even rare biomes appear frequently enough
    TARGET_MIN = 12
    TARGET_MAX = 20

    print(f"\nTarget range: {TARGET_MIN}-{TARGET_MAX} occurrences per biome")

    # New biome list
    new_biomes = []

    # Process each biome type
    for biome_name, group in biome_groups.items():
        current_count = len(group)
        target_count = current_count

        # Adjust to target range
        if current_count < TARGET_MIN:
            target_count = TARGET_MIN
            print(f"  Increasing {biome_name}: {current_count} -> {target_count}")
        elif current_count > TARGET_MAX:
            target_count = TARGET_MAX
            print(f"  Decreasing {biome_name}: {current_count} -> {target_count}")

        # Get the biome entries for this type
        entries = [biome for biome in group]

        if target_count >= current_count:
            # Need to increase: duplicate existing entries
            repeats = target_count // current_count
            remainder = target_count % current_count

            new_entries = []
            for i in range(repeats):
                new_entries.extend(entries)
            new_entries.extend(entries[:remainder])
            entries = new_entries
        else:
            # Need to decrease: select subset preserving diversity
            if target_count >= 1:
                # Select evenly spaced entries to preserve parameter variety
                step = max(1, current_count // target_count)
                indices = list(range(0, current_count, step))[:target_count]
                # Ensure we have exactly target_count entries
                while len(indices) < target_count:
                    # Fill gaps from the end
                    for i in range(current_count-1, -1, -1):
                        if i not in indices:
                            indices.append(i)
                            break
                    if len(indices) >= target_count:
                        break
                indices = sorted(indices[:target_count])
                entries = [entries[i] for i in indices]
            else:
                entries = []

        # Add entries to new biome list
        new_biomes.extend(entries)

    # Update the data
    biome_source['biomes'] = new_biomes
    data['generator']['biome_source'] = biome_source

    # Save
    with open(file_path, 'w') as f:
        json.dump(data, f, indent=2)

    print(f"\nNew total biomes: {len(new_biomes)}")

    # Analyze new distribution
    new_counts = defaultdict(int)
    for biome in new_biomes:
        new_counts[biome.get('biome', 'unknown')] += 1

    new_count_list = [count for count in new_counts.values()]
    print(f"\nNew statistics:")
    print(f"  Biome types: {len(new_counts)}")
    print(f"  Total biomes: {sum(new_count_list)}")
    print(f"  Min count: {min(new_count_list)}")
    print(f"  Max count: {max(new_count_list)}")
    print(f"  Average: {sum(new_count_list)/len(new_count_list):.1f}")

    # Check if all biomes are in target range
    below_min = [name for name, count in new_counts.items() if count < TARGET_MIN]
    above_max = [name for name, count in new_counts.items() if count > TARGET_MAX]

    if below_min:
        print(f"\nWarning: {len(below_min)} biomes below target min ({TARGET_MIN}): {below_min[:5]}{'...' if len(below_min) > 5 else ''}")
    if above_max:
        print(f"Warning: {len(above_max)} biomes above target max ({TARGET_MAX}): {above_max[:5]}{'...' if len(above_max) > 5 else ''}")

    if not below_min and not above_max:
        print(f"\nSuccess: All biomes within target range {TARGET_MIN}-{TARGET_MAX}!")

if __name__ == "__main__":
    final_biome_balance()