import json
import re

def analyze_overworld():
    file_path = r"D:\Games\Minecraft\instances\26.2\minecraft\resourcepacks\Compromise_26_3\data\minecraft\dimension\overworld.json"

    with open(file_path, 'r') as f:
        data = json.load(f)

    # Find the biome source
    biome_source = data.get('generator', {}).get('biome_source', {})

    if not biome_source:
        print("Could not find biome_source")
        return

    # Find biomes
    biomes = biome_source.get('biomes', [])
    print(f"Total biomes: {len(biomes)}")

    # Count specific biome types
    jagged_peaks = [b for b in biomes if b.get('biome') == 'minecraft:jagged_peaks']
    frozen_peaks = [b for b in biomes if b.get('biome') == 'minecraft:frozen_peaks']
    snowy_slopes = [b for b in biomes if b.get('biome') == 'minecraft:snowy_slopes']
    grove = [b for b in biomes if b.get('biome') == 'minecraft:grove']
    meadow = [b for b in biomes if b.get('biome') == 'minecraft:meadow']
    cherry_grove = [b for b in biomes if b.get('biome') == 'minecraft:cherry_grove']
    plains = [b for b in biomes if b.get('biome') == 'minecraft:plains']
    forest = [b for b in biomes if 'forest' in b.get('biome', '')]

    print(f"\nBiome counts:")
    print(f"Jagged peaks: {len(jagged_peaks)} ({len(jagged_peaks)/len(biomes)*100:.1f}%)")
    print(f"Frozen peaks: {len(frozen_peaks)} ({len(frozen_peaks)/len(biomes)*100:.1f}%)")
    print(f"Snowy slopes: {len(snowy_slopes)} ({len(snowy_slopes)/len(biomes)*100:.1f}%)")
    print(f"Grove: {len(grove)} ({len(grove)/len(biomes)*100:.1f}%)")
    print(f"Meadow: {len(meadow)} ({len(meadow)/len(biomes)*100:.1f}%)")
    print(f"Cherry grove: {len(cherry_grove)} ({len(cherry_grove)/len(biomes)*100:.1f}%)")
    print(f"Plains: {len(plains)} ({len(plains)/len(biomes)*100:.1f}%)")
    print(f"Forest biomes: {len(forest)} ({len(forest)/len(biomes)*100:.1f}%)")

    mountain_total = len(jagged_peaks) + len(frozen_peaks) + len(snowy_slopes)
    print(f"\nTotal mountain biomes: {mountain_total} ({mountain_total/len(biomes)*100:.1f}%)")

    # Show parameter ranges for first few of each type
    print("\nSample jagged_peaks parameters:")
    for j, biome in enumerate(jagged_peaks[:3]):
        params = biome.get('parameters', {})
        print(f"  {j+1}: weirdness={params.get('weirdness')}, continentalness={params.get('continentalness')}, erosion={params.get('erosion')}, temperature={params.get('temperature')}, humidity={params.get('humidity')}")

    print("\nSample frozen_peaks parameters:")
    for j, biome in enumerate(frozen_peaks[:3]):
        params = biome.get('parameters', {})
        print(f"  {j+1}: weirdness={params.get('weirdness')}, continentalness={params.get('continentalness')}, erosion={params.get('erosion')}, temperature={params.get('temperature')}, humidity={params.get('humidity')}")

    print("\nSample snowy_slopes parameters:")
    for j, biome in enumerate(snowy_slopes[:3]):
        params = biome.get('parameters', {})
        print(f"  {j+1}: weirdness={params.get('weirdness')}, continentalness={params.get('continentalness')}, erosion={params.get('erosion')}, temperature={params.get('temperature')}, humidity={params.get('humidity')}")

    # Show plains parameters for comparison
    print("\nSample plains parameters:")
    for j, biome in enumerate(plains[:3]):
        params = biome.get('parameters', {})
        print(f"  {j+1}: weirdness={params.get('weirdness')}, continentalness={params.get('continentalness')}, erosion={params.get('erosion')}, temperature={params.get('temperature')}, humidity={params.get('humidity')}")

if __name__ == "__main__":
    analyze_overworld()