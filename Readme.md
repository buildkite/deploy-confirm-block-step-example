# Deploy Confirmation Block Step Example

[![Build status](https://badge.buildkite.com/50a1f7b69a06c7a30871816c2074f3358b67ecb29a8279fe1f.svg?branch=main)](https://buildkite.com/buildkite/deploy-confirm-block-step-example)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that will show a `block` step for deploys if the `date` command on the agent returns "Friday".

👉 **See this example in action:** [buildkite/deploy-confirm-block-step-example](https://buildkite.com/buildkite/deploy-confirm-block-step-example/builds/latest?branch=main)

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get this running, or try it yourself:

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/deploy-confirm-block-step-example/builds/latest?branch=main">
  <img width="2400" alt="Screenshot of example pipeline build page" src=".buildkite/screenshot.png" />
</a>

Here's what the step looks like:

![Demo](images/demo.gif)

If you respond with "Yes, I'm sure. If something goes wrong, I'll fix it", it'll run the `deploy.sh` file again but allow the deploy through like usual:

<img src="images/yes.png" width="50%" height="50%"/>

However if you respond with "Err, nah. I've changed my mind", it will still run the `deploy.sh` step, but the build will fail, essentially "blocking" this build from being deployed.

<img src="images/no.png" width="50%" height="50%"/>

## License

See [LICENCE](LICENCE) (MIT)
