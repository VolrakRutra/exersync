package linkedlist

import (
	"errors"
)

// Define the List and Element types here.

type List struct {
	head *Element
	tail *Element
	size int
}
type Element struct {
	Value int
	next  *Element
}

func New(data []int) *List {
	var l List
	for _, elem := range data {
		l.Push(elem)
	}
	return &l
}

func (l *List) Size() int {
	return l.size
}

func (l *List) Push(element int) {
	newNode := &Element{Value: element}

	if l.Size() == 0 {
		l.head = newNode
		l.size++
		return
	}

	tail := l.head

	for tail.next != nil {
		tail = tail.next
	}

	tail.next = newNode
	l.size++
}

func (l *List) Pop() (int, error) {
	if l.size == 0 {
		return 0, errors.New("Can't pop from an empty list")
	} else if l.size == 1 {
		result := l.head.Value
		l.head = nil
		l.tail = nil
		l.size--
		return result, nil
	} else {
		tail := l.head
		prev := tail
		for tail.next != nil {
			prev = tail
			tail = tail.next
		}
		prev.next = nil
		l.tail = prev
		result := tail.Value
		l.size--
		return result, nil
	}
}

func (l *List) Array() []int {
	if l.size == 0 {
		return []int{}
	}
	node := l.head
	result := []int{}
	for node.next != nil {
		result = append(result, node.Value)
		node = node.next
	}
	result = append(result, node.Value)
	return result
}

func (l *List) Reverse() *List {
	if l.Size() == 0 {
		return l
	}
	curr := l.head
	var prev *Element = nil
	var next *Element = nil
	for curr != nil {
		next = curr.next
		curr.next = prev
		prev = curr
		curr = next
	}

	l.head = prev

	return l
}
