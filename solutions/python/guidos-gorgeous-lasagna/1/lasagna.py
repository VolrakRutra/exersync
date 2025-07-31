EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(minutes_in_oven):
    """Calculate the time remaining in the oven

    :param minutes_in_oven: int - how long was the lasagna in the oven
    :return: int - how much longer will lasagna be in the oven

    This function subtracts the minutes in the oven argument from EXPECTED_BAKE_TIME constant
    """
    return EXPECTED_BAKE_TIME - minutes_in_oven


def preparation_time_in_minutes(number_of_layers):
    """ Calculate the time it took to prepare the lasagna

    :param number_of_layers: int - how many layers are there in the lasagna
    :return: int - time spent on the lasagna prep in total

    This function takes the number_of_layers argument and multiplies it by the PREPARATION_TIME constant

    """
    return number_of_layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the elapsed cooking time.

    :param number_of_layers: int - the number of layers in the lasagna.
    :param elapsed_bake_time: int - elapsed cooking time.
    :return: int - total time elapsed (in minutes) preparing and cooking.

    This function takes two integers representing the number of lasagna layers and the
    time already spent baking and calculates the total elapsed minutes spent cooking the
    lasagna.
    """
    return elapsed_bake_time + preparation_time_in_minutes(number_of_layers)