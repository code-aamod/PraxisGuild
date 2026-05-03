% Security, Privacy & Data Policies
% Practical policies to protect members and the platform

1. Authentication & access
- 2FA mandatory for all accounts with elevated privileges (Rank ≥ Veteran or anyone with access to official credentials).
- Strong password policy: minimum length, complexity, no password reuse.
- OAuth linking of personal accounts discouraged for leader-sensitive flows.

2. Secrets & credential management
- Official account credentials stored in a secure vault; access via short-term checkouts and dual-approval for critical ops.
- Rotate credentials for official accounts on a schedule (e.g., every 90 days) or after any suspected compromise.

3. Key custody & identity escrow (theory)
- Use K-of-N key escrow (Shamir-like model) for PII decryption where practical: require multiple keepers (governance nodes) to reconstruct.
- Keep minimal number of keepers and well-defined custody rules; document keeper responsibilities and rotation.

4. Logging & audit
- Log critical actions: XP awards ≥ threshold, promotions, emergency Founder actions, identity recovery, credential checkouts.
- Protect logs: retention policy, encryption at rest, strict role-based access.

5. Data retention & deletion
- Evidence artifacts retained for a baseline period (recommendation: 2 years) unless legal hold applies.
- Minimal PII retention; delete or archive according to policy and jurisdictional rules.
- Provide members a process to request data export or deletion consistent with platform law obligations.

6. Backups & recovery
- Regular backups of encrypted artifacts and audit logs to geographically separate locations.
- Document recovery plan and test restoration annually.

7. Incident response
- Incident detection → containment (freeze) → investigation → disclosure per policy.
- Public disclosure policy: notify affected users and governance; follow legal disclosure requirements.
- Keep a contact roster (legal counsel, security lead, governance contacts).

8. Developer & ops access
- Principle of least privilege: grant only necessary access and log all elevated operations.
- Review privileged accounts quarterly.

9. Privacy by design
- Default to pseudonymous displays; any use of PII requires documented need and governance approval.
- Minimize data collected at signup.

10. Compliance basics
- Design with data-residency options if you plan to operate across jurisdictions.
- Plan for lawful requests with the identity-recovery workflow and legal counsel.

End of file.
