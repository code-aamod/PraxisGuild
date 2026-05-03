% Developer / Builder Guide (non-code)
% Practical guidance and priorities for implementing Triad Protocol

Goal
- Build a safe, auditable, privacy-preserving platform that supports XP awards, promotions, founder meta-role, private media channels, and governance flows.

Priorities (must-have for launch)
1. Authentication & accounts
- Handles + email + 2FA for elevated roles.
- Store PII encrypted with key escrow (K-of-N gate) or strong access control.

2. Ledger & audit
- XP ledger: immutable event records (award, revoke), maintain sum as derived field.
- Promotion records and audit logs append-only and signed (logical).

3. Verification workflows
- Support auto, peer and senior approval flows with evidence attachments and reviewer sign-off UI.
- Enforce caps and inactivity cron job (7-day check).

4. Private Media Channel features
- Channel gating by rank and primer completed flag.
- Draft/publish workflow with approval gates and evidence attachments.
- Role-based publishing rights, logging of official account actions.

5. Identity recovery
- Implement a documented intake form and approval workflow; do not build an automated unilateral unlock.
- Key release must be manual and require multi-party approval.

6. Security & secrets
- Use a vault (HashiCorp Vault / KMS) for credentials; limit access and log checkouts.
- Rotate official credentials and implement session timeouts.

7. Client engagements & escrow
- Support contract artifacts, milestone-based escrow, and payout processing with transparent splits.

8. Monitoring & anomaly detection
- Detect suspicious XP patterns: frequent mutual awards, large sudden awards, same verifier-recipient repeated patterns.
- Flag for human review.

9. Testing & staging
- Run pilot with seeded users; simulate abuse scenarios and unmasking in sandbox.
- Test edge cases: revoked awards, appeal reversals, emergency freezes.

10. Metrics & dashboards
- Build governance dashboard: pending promotions, audit exceptions, active emergencies, revenue, KPIs.

Implementation notes (non-technical)
- Prefer small, auditable changes: always create an audit entry for critical actions.
- Provide human-readable exports for audits.
- Keep sensitive operations manual (not fully automated) early on to preserve governance control.

Launch checklist
- Bootcamp content ready.
- Onboarding flow + consent acceptance functional.
- XP ledger and award workflow tested.
- Private channel gating and draft/publish pipelines tested.
- Incident reporting & triage workflow implemented.

End of file.
