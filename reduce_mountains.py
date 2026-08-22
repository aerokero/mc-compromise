import json
import random

def reduce_mountain_biomes():
    file_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json"
    backup_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json.backup"

    # Load the original file
    with open(file_path, 'r') as f:
        data = json.load(f)

    # Get the biome source
    biome_source = data.get('generator', {}).get('biome_source', {})
    biomes = biome_source.get('biomes', [])

    print(f"Original total biomes: {len(biomes)}")

    # Separate mountain biomes from others
    mountain_biomes = []
    other_biomes = []

    mountain_types = {'minecraft:jagged_peaks', 'minecraft:frozen_peaks', 'minecraft:snowy_slopes'}

    for biome in biomes:
        if biome.get('biome') in mountain_types:
            mountain_biomes.append(biome)
        else:
            other_biomes.append(biome)

    print(f"Original mountain biomes: {len(mountain_biomes)}")
    print(f"  - Jagged peaks: {len([b for b in mountain_biomes if b['biome'] == 'minecraft:jagged_peaks'])}")
    print(f"  - Frozen peaks: {len([b for b in mountain_biomes if b['biome'] == 'minecraft:frozen_peaks'])}")
    print(f"  - Snowy slopes: {len([b for b in mountain_biomes if b['biome'] == 'minecraft:snowy_slopes'])}")
    print(f"Other biomes: {len(other_biomes)}")

    # Reduce mountain biomes by keeping only a subset
    # We'll keep about 40% of each mountain biome type to significantly reduce their frequency
    random.seed(42)  # For reproducible results

    jagged_peaks = [b for b in mountain_biomes if b['biome'] == 'minecraft:jagged_peaks']
    frozen_peaks = [b for b in mountain_biomes if b['biome'] == 'minecraft:frozen_peaks']
    snowy_slopes = [b for b in mountain_biomes if b['biome'] == 'minecraft:snowy_slopes']

    # Keep 40% of each type
    kept_jagged = random.sample(jagged_peaks, max(1, int(len(jagged_peaks) * 0.4)))
    kept_frozen = random.sample(frozen_peaks, max(1, int(len(frozen_peaks) * 0.4)))
    kept_snowy = random.sample(snowy_slopes, max(1, int(len(snowy_slopes) * 0.4)))

    new_mountain_biomes = kept_jagged + kept_frozen + kept_snowy

    print(f"\nAfter reduction:")
    print(f"  - Jagged peaks: {len(kept_jagged)} (reduced from {len(jagged_peaks)})")
    print(f"  - Frozen peaks: {len(kept_frozen)} (reduced from {len(frozen_peaks)})")
    print(f"  - Snowy slopes: {len(kept_snowy)} (reduced from {len(snowy_slopes)})")
    print(f"  - Total mountain: {len(new_mountain_biomes)} (reduced from {len(mountain_biomes)})")

    # Combine and shuffle
    new_biomes = other_biomes + new_mountain_biomes
    random.shuffle(new_biomes)

    # Update the data
    biome_source['biomes'] = new_biomes
    data['generator']['biome_source'] = biome_source

    # Save the modified file
    with open(file_path, 'w') as f:
        json.dump(data, f, indent=2)

    print(f"\nNew total biomes: {len(new_biomes)}")
    print(f"Mountain biome percentage: {len(new_mountain_biomes)/len(new_biomes)*100:.1f}%")
    print(f"Original mountain biome percentage: {len(mountain_biomes)/len(biomes)*100:.1f}%")
    print(f"Reduction: {((len(mountain_biomes)/len(biomes) - len(new_mountain_biomes)/len(new_biomes)) / (len(mountain_biomes)/len(biomes)) * 100):.1f}%")

if __name__ == "__main__":
    reduce_mountain_biomes()