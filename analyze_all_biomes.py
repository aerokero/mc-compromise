import json
import re

def analyze_all_biomes():
    file_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json"

    with open(file_path, 'r') as f:
        data = json.load(f)

    # Get the biome source
    biome_source = data.get('generator', {}).get('biome_source', {})
    biomes = biome_source.get('biomes', [])

    print(f"Total biomes: {len(biomes)}")

    # Count all biome types
    biome_counts = {}
    for biome in biomes:
        biome_name = biome.get('biome', 'unknown')
        biome_counts[biome_name] = biome_counts.get(biome_name, 0) + 1

    # Sort by count descending
    sorted_biomes = sorted(biome_counts.items(), key=lambda x: x[1], reverse=True)

    print("\nBiome distribution:")
    print("-" * 50)
    for biome_name, count in sorted_biomes:
        percentage = (count / len(biomes)) * 100
        print(f"{biome_name:<35} {count:>4} ({percentage:>5.1f}%)")

    # Show statistics
    counts = [count for _, count in sorted_biomes]
    print(f"\nStatistics:")
    print(f"  Biome types: {len(biome_counts)}")
    print(f"  Most common: {sorted_biomes[0][0]} ({sorted_biomes[0][1]} biomes, {sorted_biomes[0][1]/len(biomes)*100:.1f}%)")
    print(f"  Least common: {sorted_biomes[-1][0]} ({sorted_biomes[-1][1]} biomes, {sorted_biomes[-1][1]/len(biomes)*100:.1f}%)")
    print(f"  Average per type: {len(biomes)/len(biome_counts):.1f}")
    print(f"  Median count: {sorted(counts)[len(counts)//2]}")

    # Calculate standard deviation to see how uneven distribution is
    import math
    mean = len(biomes) / len(biome_counts)
    variance = sum((c - mean) ** 2 for c in counts) / len(counts)
    std_dev = math.sqrt(variance)
    print(f"  Std deviation: {std_dev:.1f}")
    print(f"  Coefficient of variation: {(std_dev/mean)*100:.1f}%")

if __name__ == "__main__":
    analyze_all_biomes()