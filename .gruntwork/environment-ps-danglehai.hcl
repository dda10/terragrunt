// Pipelines environment config for the ps-danglehai AWS account.
// Pipelines reads all .hcl files in .gruntwork/. Add a new file here to register a new environment.
// Docs: https://docs.gruntwork.io/2.0/docs/pipelines/configuration/settings

environment "ps-danglehai" {
  // Defines the environment as matching all units under ps-danglehai/.
  filter {
    paths = ["ps-danglehai/*"]
  }

  authentication {
    // Pipelines assumes these IAM roles via OIDC. No static credentials needed.
    // plan role: read-only, used on PRs. apply role: write, used on merge to deploy branch.
    // Both roles are created by the bootstrap stack in _global/bootstrap/.
    aws_oidc {
      account_id         = "434481793703"
      plan_iam_role_arn  = "arn:aws:iam::434481793703:role/pipelines-plan"
      apply_iam_role_arn = "arn:aws:iam::434481793703:role/pipelines-apply"
    }
  }
}
