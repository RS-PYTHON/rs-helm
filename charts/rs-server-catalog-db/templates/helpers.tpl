{{/*
Create the image path for the passed in image field
*/}}
{{- define "mychart.image" -}}
{{- if eq (substr 0 7 .version) "sha256:" -}}
{{- printf "%s/%s/%s@%s" .registry .repository .name .version -}}
{{- else -}}
{{- printf "%s/%s/%s:%s" .registry .repository .name .version -}}
{{- end -}}
{{- end -}}
