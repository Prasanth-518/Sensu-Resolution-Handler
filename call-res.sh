curl -X POST \
-H "Authorization: Key a643643f-8b61-423c-bff6-1c15614d0917" \
-H 'Content-Type: application/json' \
-d '{
  "check": "custom-auto-heal-pg185155",
  "subscriptions": [
    "entity:win-2807"
  ]
}' \
http://20.75.200.49:8080/api/core/v2/namespaces/default/checks/custom-auto-heal-pg185155/execute
