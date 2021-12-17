# gpay_clone

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

  items: [
              {
                "type": "vid",
                "source":
                    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
              },
              {
                "type": "img",
                "source":
                    'https://d15shllkswkct0.cloudfront.net/wp-content/blogs.dir/1/files/2020/07/flutter-mobile-web-desktop.jpg'
              },
              {
                "type": "img",
                "source":
                    'https://cdn.pixabay.com/photo/2021/11/20/20/31/spekulatius-6812721_960_720.jpg'
              },
              {
                "type": "img",
                "source":
                    'https://cdn.pixabay.com/photo/2021/11/16/08/01/animal-6800387_960_720.jpg'
              },
              {
                "type": "vid",
                "source":
                    'https://media.istockphoto.com/videos/zoom-out-of-chef-decorating-his-plate-and-looking-very-happy-video-id857947444'
              },
              {
                "type": "img",
                "source":
                    'https://d15shllkswkct0.cloudfront.net/wp-content/blogs.dir/1/files/2020/07/flutter-mobile-web-desktop.jpg'
              },
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return i['type'] == 'img'
                      ?  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        i['source'] ??
                            'https://cdn.pixabay.com/photo/2021/11/16/08/01/animal-6800387_960_720.jpg',
                        fit: BoxFit.contain,
                      )
                      //VideoPlay(src: i['source']??'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',),
                      )

                      : VideoItems(
                    videoPlayerController:
                    VideoPlayerController.network(i['source'] ??
                        'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
                    looping: false,
                    autoplay: true,
                  );
                },
              );
            }).toList(),
