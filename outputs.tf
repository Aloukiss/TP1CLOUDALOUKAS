output "bucket_name" {
  value = minio_s3_bucket.web_bucket.bucket
}

output "web_index_object_name" {
  value = minio_s3_object.index_html.object_name
}
