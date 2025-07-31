namespace targets {
// TODO: Insert the code for the alien class here
	class Alien {
	public: 
		Alien(int x, int y) {
			x_coordinate = x;
			y_coordinate = y;
		}
		
		bool hit() {
			if (health > 0) {
				health--;
			}
			return true;
		}

		int get_health() {
			return health;
		}

		bool is_alive() {
			return health > 0;
		}

		bool teleport(int new_x, int new_y) {
			x_coordinate = new_x;
			y_coordinate = new_y;
			return true;
		}

		bool collision_detection(Alien other) {
			return (x_coordinate == other.x_coordinate && y_coordinate == other.y_coordinate);
		}

		int x_coordinate = 0;
		int y_coordinate = 0;
	private:
		int health = 3;
	};
}  // namespace targets