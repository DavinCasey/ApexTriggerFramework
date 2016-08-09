# Cloud9 for Salesforce (Beta)

You are test-driving the newest Salesforce integration on Cloud9.<br>
This is an Beta build, beware of bugs.

See our docs at https://cloud9-salesforce.readme.io for more help!

Please contact [support@c9.io](mailto:support@c9.io) with feedback.

## About this Version

This version of Cloud9 includes the following features you can use:

**Two-way code sync**

Apex, Visualforce and Lightning code is automatically synchronized between the
IDE and your Salesforce Environment. When the system detects changes to a file,
it is automatically uploaded to your Salesforce Environment. Once a minute,
changes made on your Salesforce Environment will be downloaded and merged into
your workspace.

A three-dot indicator on the project root folder indicates sync activity. You
can manually trigger the process by choosing *Salesforce* > *Refresh and Synchronize*.

Additional metadata is synchronized but hidden by default. Click the gear icon
on top of the file tree and choose *Show Hidden Files* to display the
`meta.xml` configuration files.

**Apex language support**

Cloud9 features first-class Apex language support with syntax highlighting,
auto-suggested code completion, quick-jump, outline and real-time syntax error
detection.

**Lightning and Visualforce support**

Use built-in Lightning/Visualforce support to improve your development workflow for pages
and components. When editing a Visualforce page, click *Preview* > *Live Preview File*
to open a preview frame next to your code editor. Drag tabs to arrange them in
different layouts.

Dynamic code snippets can be used to expand CSS-like abbreviations into
complete HTML structures with less code. Write an
[Emmet abbreviation](http://unbouncepages.com/cloud-alpha/clkn/http/emmet.io/)
and press <kbd>Tab</kbd> to complete it.

**Query and execute**

You can quickly run SOQL queries from inside your IDE using the *Query Force.com*
window in the bottom half of the screen. To execute Apex statements, use the
*Apex Force.com* window in the bottom half of the screen.

## Troubleshooting

If something goes haywire, error details should be available on the browser's
`console.log`.

## Share your Feedback

Your early and honest feedback is essential in guiding us in making this tool
something that you will love. There are a few quick ways to get in touch with
us:

* Email us at [support@c9.io](mailto:support@c9.io)
