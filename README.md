# XCodeTemplates

This is a repository with xcode file template samples. With file templates you can avoid create initial structure every time you create a swift file. This project provides some basic templates and I would like to invite the community to create new ones.

## Get started

Usually the Xcode default template files are located in the path bellow

`/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates`  

Inside of it you can find the folders for project and file templeates. 

### Steps to import templates

1. Close Xcode
2. Navigate to the `File Templates` folder 
3. Copy the `Custom` and `Custom modules` folder to it
4. Open Xcode and create a new file



#### Video

<p>
<video src='https://github.com/gabe351/XCodeTemplates/blob/main/Media/AddingTemplates.mp4' width=180/>
</p>

## Available templates

1. [File templates](#file-templates)
2. [Module templates](#module-templates)

<p>
  <img src="https://github.com/gabe351/XCodeTemplates/blob/main/Media/templateList.png">
</p>

<h2 id="file-templates">File templates</h2>

### Enum

```swift
import Foundation

enum <User input> {
}


```

### Struct

```swift
import Foundation

struct <User input> {
}


```

### ViewController

```swift
import UIKit

class <User input>: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


```


### TableviewController

```swift
import UIKit

class <User input>: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}


```

### Remote data source with async await

```swift
import Foundation

private typealias resultType = (data: Data, urlResponse: URLResponse)

final class <User input> {

    static let shared = <User input>()

    func request<T: Decodable>(
        _ api: Api
    ) async throws -> T {
        guard let url = api.path else {
            throw NetworkError.invalidUrl
        }

        let result: resultType = try await URLSession.shared.data(from: url)

        guard let response = result.urlResponse as? HTTPURLResponse else {
            throw NetworkError.badResponse
        }

        let statusCode = StatusCodeHandler.getResult(response.statusCode)

        switch statusCode {
        case .success:
            return try JSONDecoder().decode(
                T.self,
                from: result.data
            )
        case .failure:
            throw NetworkError.httpError(
                code: response.statusCode
            )
        }
    }
}

extension <User input> {
    enum Api {

        case examplePath
        case detailPath(id: String)

        var path: URL? {

            switch self {

            case .examplePath:
                return URL(string: "https://samplePath.com/detail")
            case .detailPath(let id):
                return URL(string: "https://samplePath.com/detail/\(id).json")

            }
        }
    }

    enum NetworkError: LocalizedError {

        case httpError(code: Int)
        case invalidUrl
        case badResponse
        var errorDescription: String? {

            switch self {
            case.httpError(let code):
                return "HTTP Error code: \(code)"
            case .invalidUrl:
                return "The URL is invalid"
            case .badResponse:
                return "Not expected response from server"
            }
        }
    }

    enum StatusCodeHandler {
        case success
        case failure

        static func getResult(_ code: Int) -> Self {
            let successRange = 200...299

            if successRange.contains(code) {
                return .success
            } else {
                return .failure
            }
        }
    }
}


```

<h2 id="module-templates">Module templates</h2>

Module template creates a group of files according to the selected architecture:

Add image here

1. UiKit - MVVM
2. UiKit - MVP
3. UiKit - VIPER

<h3 id="module-templates">MVVM module template</h3>




