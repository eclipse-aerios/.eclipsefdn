local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.aerios', 'eclipse-aerios') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/iot.aerios",
    description: "A Meta-OS to govern the Cloud-Edge-IoT continuum",
    location: "European Union",
    members_can_change_project_visibility: false,
    members_can_create_public_pages: true,
    members_can_create_public_repositories: false,
    name: "Eclipse aeriOS project",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('aerios-k8s-shim') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Middleware component for K8s integration",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "k8s",
        "token"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('federator') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "The aeriOS Federator serves as a management service responsible for controlling the establishment and maintenance of federation mechanisms among the multiple aeriOS domains that form the Cloud-Edge-IoT continuum",
      has_discussions: true,
      has_issues: true,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "federator",
        "management",
        "ngsi-ld",
        "domain"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('hlo-allocator') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "(Re)Allocator component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "ai",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('hlo-data-aggregator') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Data aggregator component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('hlo-deployment-engine') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Deployment Engine component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('hlo-fe') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Frontend component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "federation",
        "hlo",
        "ngsi-ld",
        "orchestration",
        "tosca"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('management-portal-backend') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Management Portal backend",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "backend",
        "management",
        "management-portal",
        "webapp"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('management-portal-frontend') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Management Portal frontend",
      has_discussions: true,
      has_issues: true,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "frontend",
        "management",
        "management-portal",
        "webapp"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('aerios-website') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS project website",
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_issues: true,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "hugo",
        "hugo-solstice-theme",
        "website"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('self-awareness') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite analyses and obtains information from a computing node, continuously monitoring its health status and workload",
      has_discussions: true,
      has_issues: true,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "infrastructure-element",
        "node",
        "self",
        "self-awareness"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    },
    orgs.newRepo('self-orchestrator') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite is capable of managing facts, rules and alerts to send warnings about problems in an IE to the aeriOS EAT",
      has_discussions: true,
      has_issues: true,
      has_wiki: false,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "alerts",
        "infrastructure-element",
        "node",
        "orchestration",
        "rules",
        "self",
        "self-orchestrator"
      ],
      workflows+: {
        default_workflow_permissions: "write",
        enabled: true
      }
    }
  ],
}
