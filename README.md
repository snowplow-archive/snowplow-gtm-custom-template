# Snowplow Analytics Custom Tag Template

## Overview

This is the Google Tag Manager [custom template](https://developers.google.com/tag-manager/templates) for the [Snowplow Analytics JavaScript tracker](https://github.com/snowplow/snowplow-javascript-tracker). 

The **Snowplow Analytics** tag template lets you deploy, implement, and configure the Snowplow Analytics JS tracker on the website using Google Tag Manager.

It has been designed to be used with the Snowplow Analytics Settings custom variable template.

## Quickstart

Work on the template should be done in Google Tag Manager's native **template editor**. This is to ensure the template has access to all the latest features of the template editor, and to make sure it passes GTM's own validation when exporting the changes.

To **import** the template into Google Tag Manager:

1. In a Google Tag Manager **web** container (any container will do), browse to **Templates** and click to create a new template.
2. From the template action menu, choose **Import**.
3. Locate the `template.tpl` file from this repo, and import it into the template editor.

Make the changes you wish. Make sure the unit tests pass (in the **Tests** tab of the editor). Update the tests if necessary. 

Once you're done, follow these steps:

1. **Save** the template in the template editor.
2. From the action menu, choose **Export**.
3. Replace the `template.tpl` file in this repo with the exported file (make sure to keep `template.tpl` as its name)..
4. **Commit** the changes to the `template.tpl` file.
5. Copy the **commit hash**.
6. Edit `metadata.yaml` in the template folder, and add the hash with its `changeNotes` as the latest version.
7. Move the previous latest version into the list of `Older versions`.
8. Save changes to `metadata.yaml` and **commit** them.
9. Finally, push the changes to the repo (should include the commit to `template.tpl` and the commit to `metadata.yaml`).

After pushing the changes, Google Tag Manager should update the template in the [community gallery](https://tagmanager.google.com/gallery/#/) within some hours to some days.

## Find out more

| Tag Template |
|---------------------------------|
| ![i1][techdocs-image]           |
| **[Technical Docs](https://www.simoahava.com/analytics/custom-templates/snowplow-analytics/)** |

## Copyright and license

Significant portions copyright 2020 Simo Ahava. Remainder copyright 2020 Snowplow Analytics Ltd. All rights reserved.

Licensed under the **[Apache License, Version 2.0][license]** (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[techdocs-image]: https://d3i6fms1cm1j0i.cloudfront.net/github/images/techdocs.png
