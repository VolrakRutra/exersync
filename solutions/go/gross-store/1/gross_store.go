package gross

// Units stores the Gross Store unit measurements.
func Units() map[string]int {
	result := map[string]int{}
	result["quarter_of_a_dozen"] = 3
	result["half_of_a_dozen"] = 6
	result["dozen"] = 12
	result["small_gross"] = 120
	result["gross"] = 144
	result["great_gross"] = 1728

	return result
}

// NewBill creates a new bill.
func NewBill() map[string]int {
	return map[string]int{}
}

// AddItem adds an item to customer bill.
func AddItem(bill, units map[string]int, item, unit string) bool {
	value, exists := units[unit]
	if !exists {
		return false
	}
	_, billExists := bill[item]
	if !billExists {
		bill[item] = value

	} else {
		bill[item] += value
	}
	return true
}

// RemoveItem removes an item from customer bill.
func RemoveItem(bill, units map[string]int, item, unit string) bool {
	billItem, exists := bill[item]
	if !exists {
		return false
	}

	unitsItem, exists := units[unit]
	if !exists {
		return false
	}

	if billItem < unitsItem {
		return false
	}

	if billItem == unitsItem {
		delete(bill, item)
		return true
	}

	bill[item] -= unitsItem
	return true
}

// GetItem returns the quantity of an item that the customer has in his/her bill.
func GetItem(bill map[string]int, item string) (int, bool) {
	value, ok := bill[item]
	return value, ok

}
