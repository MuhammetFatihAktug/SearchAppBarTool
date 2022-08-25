# Search Appbar

## I will description to next days

### Mini Example

    return Scaffold(
          appBar: SearchAppBar(
            controller: controller,
            callBack: (value) {},
          ),
          body: DefaultBody(
            defaultBody: Center(
              child: const Text('Default Body'),
            ),
            normalSearchBody: Center(
              child: const Text('Normal Search Body'),
            ),
            defaultSearchBody: Center(
              child: const Text('Default Search Body'),
            ),
          ),
        );