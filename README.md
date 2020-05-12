# Google Tag Manager Custom Templates for the Snowplow JavaScript Tracker

## Overview

There are **two** Google Tag Manager [custom templates](https://developers.google.com/tag-manager/templates) in this repo. 

The **Snowplow Analytics** tag template is a template interface for the [Snowplow Analytics JavaScript tracker](https://github.com/snowplow/snowplow-javascript-tracker).

The **Snowplow Analytics Settings** variable template is a template interface for building and bundling tracker settings to be used in the Snowplow Analytics tag template.

## Quickstart

Work on the templates should be done in Google Tag Manager's native **template editor**. The reason for this is to make sure the templates have access to all the latest features of the template editor, and to make sure they pass GTM's own validation when exporting the changes.

To **import** a template into Google Tag Manager:

1. In a Google Tag Manager web container (any container will do), browse to **Templates** and click to create a new template.
2. From the template action menu, choose **Import**.
3. Locate the `template.tpl` file from the repo, and import it into the template editor.

Make the changes you wish. Once you're done, follow these steps:

1. **Save** the template in the template editor.
2. From the action menu, choose **Export**.
3. Copy the exported file into `template.tpl` in the respective folder of this repo.
4. **Commit** the changes to the `template.tpl` file.
5. Copy the **commit hash**.
6. Edit `metadata.yaml` in the template folder, and add the hash with its `changeNotes` as the latest version.
7. Move the previous latest version into the list of `Older versions`.
8. Save changes to `metadata.yaml` and **commit** them.
9. Finally, push the changes to the repo (should include the commit to `template.tpl` and the commit to `metadata.yaml`).

After pushing the changes, Google Tag Manager should update the template in the [community gallery](https://tagmanager.google.com/gallery/#/) within some hours to some days.

## Find out more

| Tag Template | Variable Template |
|---------------------------------|----------------------------------|
| ![i1][techdocs-image]           | ![il][techdocs-image]
| **[Technical Docs](https://www.simoahava.com/analytics/custom-templates/snowplow-analytics/)** | **[Technical Docs](https://www.simoahava.com/analytics/custom-templates/snowplow-analytics-settings/)** |

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
