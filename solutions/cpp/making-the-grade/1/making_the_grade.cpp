#include <array>
#include <string>
#include <vector>

// Round down all provided student scores.
std::vector<int> round_down_scores(std::vector<double> student_scores) {
    std::vector<int> result = {};
    for (int i = 0; i < student_scores.size(); i++) {
        result.emplace_back(static_cast<int>(student_scores[i]));
    }

    return result;
}


// Count the number of failing students out of the group provided.
int count_failed_students(std::vector<int> student_scores) {
    int result = 0;
    for (int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] <= 40) {
            result++;
        }
    }

    return result;
}

// Determine how many of the provided student scores were 'the best' based on the provided threshold.
std::vector<int> above_threshold(std::vector<int> student_scores, int threshold) {
    std::vector<int> result = {};
    for (int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] >= threshold) {
            result.push_back(student_scores[i]);
        }
    }
    return result;
}

// Create a list of grade thresholds based on the provided highest grade.
std::array<int, 4> letter_grades(int highest_score) {
    std::array<int, 4> result = {};

    int diff = highest_score - 40;
    int inc = diff / 4;

    for (int i = 0; i < 4; i++) {
        result[i] = 41 + i* inc;
    }

    return result;
}

// Organize the student's rank, name, and grade information in ascending order.
std::vector<std::string> student_ranking(std::vector<int> student_scores, std::vector<std::string> student_names) {
    std::vector<std::string> result = {};
    for (int i = 0; i < student_scores.size(); i++) {
        int n = i + 1;
        std::string s = student_names[i];
        int g = student_scores[i];
        std::string value = "" + std::to_string(n) + ". " + s + ": " + std::to_string(g);
        result.push_back(value);
    }
    return result;
}

// Create a string that contains the name of the first student to make a perfect score on the exam.
std::string perfect_score(std::vector<int> student_scores, std::vector<std::string> student_names) {
    for (int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] == 100) {
            return student_names[i];
        }
    }
    return "";
}