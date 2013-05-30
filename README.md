# actdemos

Demos for [AjaxControlToolkit](http://www.asp.net/ajaxLibrary/AjaxControlToolkitSampleSite/Default.aspx)

- [ReorderList](http://www.asp.net/ajaxLibrary/AjaxControlToolkitSampleSite/ReorderList/ReorderList.aspx): See <code>AjaxControlToolkitDemos/Pages/ReorderListDemo.aspx</code>

## Project Layout

``` sh
AjaxControlToolkitDemos
  AjaxControlToolkitDemos        # frontend
    Site.Master                  # <- include ACT-ScriptManager here
    Pages                        # Demo pages
    Styles
      DemoAjaxControlToolkit.css # customized css for AjaxControlToolkit
    ...
  Model                          # ViewModel for frontend
  packages                       # NuGet packages (incl. AjaxControlToolkit DLL)
```

Don't forget to add 
`
<ajaxToolkit:ToolkitScriptManager EnableScriptGlobalization="true" EnableScriptLocalization="true" runat="Server" EnableViewState="true"  EnablePartialRendering="true" ID="sm" CombineScripts="false" />
`
to the file `Site.Master` to activate the AjaxControlToolkit.
