package thefarm

import (
	"errors"
	"fmt"
)

func DivideFood(f FodderCalculator, cows int) (float64, error) {
	fatFactor, err := f.FatteningFactor()
	if err != nil {
		return 0, err
	}

	amt, err := f.FodderAmount(cows)

	if err != nil {
		return 0, err
	}

	amount := amt * fatFactor / float64(cows)
	return amount, nil
}

func ValidateInputAndDivideFood(f FodderCalculator, cows int) (float64, error) {
	if cows <= 0 {
		return 0, errors.New("invalid number of cows")
	}
	return DivideFood(f, cows)
}

func ValidateNumberOfCows(cows int) error {
	if cows < 0 {
		errorMsg := fmt.Sprintf("%v cows are invalid: there are no negative cows", cows)
		return errors.New(errorMsg)

	} else if cows == 0 {
		return errors.New("0 cows are invalid: no cows don't need food")

	}
	return nil
}
