package lasagna

func PreparationTime(layers []string, avg int) int {
	if avg == 0 {
		return len(layers) * 2
	} else {
		return len(layers) * avg
	}
}

func Quantities(layers []string) (noodles int, sauce float64) {
	for _, v := range layers {
		switch v {
		case "noodles":
			noodles += 50
		case "sauce":
			sauce += 0.2
		}
	}
	return noodles, sauce
}

func AddSecretIngredient(myFriendslist []string, myList []string)  {
  myList[len(myList) - 1] = myFriendslist[len(myFriendslist)-1]
}

func ScaleRecipe(quantities []float64, persons int)  []float64 {
  scale := float64(persons) / 2.0
  quantitiesCopy := make([]float64, len(quantities))
  copy(quantitiesCopy, quantities)
  
  for i, v := range quantitiesCopy {
    quantitiesCopy[i] = v * scale
  }

  return quantitiesCopy
}
