# Copyright 2021 The ParallelAccel Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =============================================================================
# Providers configuration
terraform {
  required_providers {
    google-private = ">=0.0.1"
    google         = ">=3.26"
  }
  required_version = ">= 0.12"
}

provider "google" {
  project = var.project_id
}

provider "google-private" {
  compute_custom_endpoint = "https://www.googleapis.com/compute/v1/"
  project                 = var.project_id
}
