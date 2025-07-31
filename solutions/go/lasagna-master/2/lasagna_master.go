package lasagna

func PreparationTime(layers []string, timePerLayer int) int {
	if timePerLayer == 0 {
		timePerLayer = 2
	}
	return len(layers) * timePerLayer
}

func Quantities(layers []string) (int, float64) {
	noods := 0
	sauce := 0.0
	for _, layer := range layers {
		switch layer {
		case "sauce":
			sauce += 0.2
		case "noodles":
			noods += 50
		}
	}

	return noods, sauce
}

func AddSecretIngredient(friendsList []string, myList []string) {
	lastFriendsItem := friendsList[len(friendsList)-1]
	myList[len(myList)-1] = lastFriendsItem
}

func ScaleRecipe(quantities []float64, portions int) []float64 {

	result := []float64{}

	for i := range quantities {
		result = append(result, (quantities[i]/2.0)*float64(portions))
	}

	return result
}
