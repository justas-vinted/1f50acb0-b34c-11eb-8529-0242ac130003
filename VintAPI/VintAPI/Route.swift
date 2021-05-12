import Foundation

public struct Route<T> {
    let request: URLRequest
    
    public init(request: URLRequest) {
        self.request = request
    }
    
    public func perform(completion: @escaping (Result<T, Error>) -> Void) {
        completion(.failure(NSError(domain: #file, code: 0, userInfo: nil)))
    }
}
