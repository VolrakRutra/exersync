/// Create an empty vector
pub fn create_empty() -> Vec<u8> {
    vec![]
}

/// Create a buffer of `count` zeroes.
///
/// Applications often use buffers when serializing data to send over the network.
pub fn create_buffer(count: usize) -> Vec<u8> {
    vec![0;count]
}

/// Create a vector containing the first five elements of the Fibonacci sequence.
///
/// Fibonacci's sequence is the list of numbers where the next number is a sum of the previous two.
/// Its first five elements are `1, 1, 2, 3, 5`.
pub fn fibonacci() -> Vec<u8> {
    let mut v1 = 1u8;
    let mut v2 = 1u8;
    let mut result = vec![];
    result.push(v1);
    result.push(v2);
    
    for _ in 0..3u8{
        let v3 = v1 + v2;
        result.push(v3);
        v1 = v2;
        v2 = v3;
    }

    result
    

}
