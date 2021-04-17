curl -X POST \
-H "Authorization: Key 09af898f-26b0-4325-abeb-f9611a36137d" \
-H 'Content-Type: application/json' \
-d '{
  "check": "custom-auto-heal-pg185155",
  "subscriptions": [
    "entity:win-2807"
  ]
}' \
http://20.75.200.49:8080/api/core/v2/namespaces/default/checks/custom-auto-heal-pg185155/execute
