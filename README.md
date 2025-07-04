# Buildkite Deploy Confirmation Block Step Example

[![Build status](https://badge.buildkite.com/50a1f7b69a06c7a30871816c2074f3358b67ecb29a8279fe1f.svg?branch=main)](https://buildkite.com/buildkite/deploy-confirm-block-step-example)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that shows how to use a [`block` step](https://buildkite.com/docs/pipelines/block-step) to confirm deployments - but only if the `date` command on the agent returns **Friday**.

👉 **See this example in action:** [buildkite/deploy-confirm-block-step-example](https://buildkite.com/buildkite/deploy-confirm-block-step-example/builds/latest?branch=main)

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/deploy-confirm-block-step-example/builds/latest?branch=main">
  <img width="2400" alt="Screenshot of deploy confirmation block example pipeline" src=".buildkite/screenshot.png" />
</a>

<!-- docs:start -->

## How it works

If the current day is **Friday**, a block step will appear asking for manual deploy confirmation. The user can choose to:

- ✅ **Confirm deploy**
  Respond: `"Yes, I'm sure. If something goes wrong, I'll fix it"`
  → `deploy.sh` runs normally

- ❌ **Cancel deploy**
  Respond: `"Err, nah. I've changed my mind"`
  → `deploy.sh` still runs but exits with a failure

### Block step preview

Here's what the block step looks like:

![Block step demo](images/demo.gif)

#### ✅ Confirming

<img src="images/yes.png" width="50%" height="50%" alt="Yes confirmation example" />

#### ❌ Cancelling

<img src="images/no.png" width="50%" height="50%" alt="No confirmation example" />

<!-- docs:end -->

## License

See [LICENSE](LICENSE) (MIT)
