#!/usr/bin/env bash
set -euo pipefail
echo "This script moves your existing files into the new docs layout using git mv."
echo "Review the paths before running."

mkdir -p docs/handbook docs/developer docs/templates docs/onboarding docs/legal

git mv details/01_Triad_Full_Protocol.md docs/handbook/01_Triad_Full_Protocol.md
git mv details/02_Community_Rules_Agreement.md docs/handbook/02_Community_Rules_Agreement.md
git mv details/03_XP_Table_and_Promotion_Checklists.md docs/handbook/03_XP_Table_and_Promotion_Checklists.md
git mv details/04_Identity_Recovery_and_Unmasking_Workflow.md docs/handbook/04_Identity_Recovery_and_Unmasking_Workflow.md
git mv details/05_Abuse_Response_SOP.md docs/handbook/05_Abuse_Response_SOP.md
git mv details/06_Security_Privacy_and_Data_Policies.md docs/handbook/06_Security_Privacy_and_Data_Policies.md
git mv details/07_Beginner_Microproject_and_Onboarding.md docs/handbook/07_Beginner_Microproject_and_Onboarding.md
git mv details/09_Governance_and_Conflict_of_Interest_Policy.md docs/handbook/09_Governance_and_Conflict_of_Interest_Policy.md
git mv details/12_Domain_and_Branding_Checklist.md docs/handbook/12_Domain_and_Branding_Checklist.md
git mv details/10_Operational_Checklists.md docs/templates/10_Operational_Checklists.md
git mv details/08_Client_Contract_Template_and_Revenue_Split.md docs/legal/08_Client_Contract_Template_and_Revenue_Split.md
git mv details/11_Terms_of_Service_and_Privacy_Policy_Draft.md docs/legal/11_Terms_of_Service_and_Privacy_Policy_Draft.md
git mv details/13_Developer_Builder_Guide.md docs/developer/13_Developer_Builder_Guide.md
# Move base_inf
mkdir -p docs/templates
git mv details/base_inf/plain_inf.md docs/templates/plain_inf.md

echo "Done moving files. Review changes and commit."