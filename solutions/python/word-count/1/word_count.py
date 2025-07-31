import re
import string


def count_words(sentence):
    pattern = re.compile("[" + re.escape(string.punctuation.replace("'", "")) + "]")
    no_punct_sentence = pattern.sub(" ", sentence)
    split_sentence = re.split(r'\s+', no_punct_sentence)
    filter_one = [s.lower() for s in split_sentence if len(s) > 0 and s != "'"]
    
    actuals = []
    for word in filter_one:
        if "'" in word:
            while word[0] == "'":
                word = word[1:]
            
            while word[-1] == "'":
                word = word[0:-1]
        actuals.append(word)
    
    result = {}
    for word in actuals:
        if word in result:
            result[word] += 1
        else:
            result[word] = 1
    return result

count_words("'First: don't laugh. Then: don't cry. You're getting it.'"),
