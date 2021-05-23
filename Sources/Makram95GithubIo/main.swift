import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Makram95GithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://makram95.github.io")!
    var name = "Marc Kramers Portfolio"
    var description = "Portfolio of Marc Kramer"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:

try Makram95GithubIo().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("Makram95/Makram95.github.io", useSSH: false)
)
