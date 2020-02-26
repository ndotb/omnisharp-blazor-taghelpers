Purpose: test OmniSharp's reflexes for TagHelper discovery

This is just the stock hosted blazor template with:
* a dummy component library
* a static method call in the Client's `Program.cs` to ensure that the library is bundled during build & publish, and
* a reference to `<ReferencedComponent/>;` in `Index.razor`.

In ComponentLibrary is a bash file named `makecomponents.sh` that takes one parameter: the number of components you want.
