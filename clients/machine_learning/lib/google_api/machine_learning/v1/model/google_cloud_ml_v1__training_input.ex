# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingInput do
  @moduledoc """
  Represents input parameters for a training job. When using the
  gcloud command to submit your training job, you can specify
  the input parameters as command-line arguments and/or in a YAML configuration
  file referenced from the --config command-line argument. For
  details, see the guide to
  <a href="/ml-engine/docs/tensorflow/training-jobs">submitting a training
  job</a>.

  ## Attributes

  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Command line arguments to pass to the program.
  *   `hyperparameters` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__HyperparameterSpec.t`, *default:* `nil`) - Optional. The set of Hyperparameters to tune.
  *   `jobDir` (*type:* `String.t`, *default:* `nil`) - Optional. A Google Cloud Storage path in which to store training outputs
      and other data needed for training. This path is passed to your TensorFlow
      program as the '--job-dir' command-line argument. The benefit of specifying
      this field is that Cloud ML validates the path for use in training.
  *   `masterConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t`, *default:* `nil`) - Optional. The configuration for your master worker.

      You should only set `masterConfig.acceleratorConfig` if `masterType` is set
      to a Compute Engine machine type. Learn about [restrictions on accelerator
      configurations for
      training.](/ml-engine/docs/tensorflow/using-gpus#compute-engine-machine-types-with-gpu)

      Set `masterConfig.imageUri` only if you build a custom image. Only one of
      `masterConfig.imageUri` and `runtimeVersion` should be set. Learn more about
      [configuring custom
      containers](/ml-engine/docs/distributed-training-containers).
  *   `masterType` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the type of virtual machine to use for your training
      job's master worker. You must specify this field when `scaleTier` is set to
      `CUSTOM`.

      You can use certain Compute Engine machine types directly in this field.
      The following types are supported:

      - `n1-standard-4`
      - `n1-standard-8`
      - `n1-standard-16`
      - `n1-standard-32`
      - `n1-standard-64`
      - `n1-standard-96`
      - `n1-highmem-2`
      - `n1-highmem-4`
      - `n1-highmem-8`
      - `n1-highmem-16`
      - `n1-highmem-32`
      - `n1-highmem-64`
      - `n1-highmem-96`
      - `n1-highcpu-16`
      - `n1-highcpu-32`
      - `n1-highcpu-64`
      - `n1-highcpu-96`

      Learn more about [using Compute Engine machine
      types](/ml-engine/docs/machine-types#compute-engine-machine-types).

      Alternatively, you can use the following legacy machine types:

      - `standard`
      - `large_model`
      - `complex_model_s`
      - `complex_model_m`
      - `complex_model_l`
      - `standard_gpu`
      - `complex_model_m_gpu`
      - `complex_model_l_gpu`
      - `standard_p100`
      - `complex_model_m_p100`
      - `standard_v100`
      - `large_model_v100`
      - `complex_model_m_v100`
      - `complex_model_l_v100`

      Learn more about [using legacy machine
      types](/ml-engine/docs/machine-types#legacy-machine-types).

      Finally, if you want to use a TPU for training, specify `cloud_tpu` in this
      field. Learn more about the [special configuration options for training
      with
      TPUs](/ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine).
  *   `packageUris` (*type:* `list(String.t)`, *default:* `nil`) - Required. The Google Cloud Storage location of the packages with
      the training program and any additional dependencies.
      The maximum number of package URIs is 100.
  *   `parameterServerConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t`, *default:* `nil`) - Optional. The configuration for parameter servers.

      You should only set `parameterServerConfig.acceleratorConfig` if
      `parameterServerConfigType` is set to a Compute Engine machine type. [Learn
      about restrictions on accelerator configurations for
      training.](/ml-engine/docs/tensorflow/using-gpus#compute-engine-machine-types-with-gpu)

      Set `parameterServerConfig.imageUri` only if you build a custom image for
      your parameter server. If `parameterServerConfig.imageUri` has not been
      set, AI Platform uses the value of `masterConfig.imageUri`.
      Learn more about [configuring custom
      containers](/ml-engine/docs/distributed-training-containers).
  *   `parameterServerCount` (*type:* `String.t`, *default:* `nil`) - Optional. The number of parameter server replicas to use for the training
      job. Each replica in the cluster will be of the type specified in
      `parameter_server_type`.

      This value can only be used when `scale_tier` is set to `CUSTOM`.If you
      set this value, you must also set `parameter_server_type`.

      The default value is zero.
  *   `parameterServerType` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the type of virtual machine to use for your training
      job's parameter server.

      The supported values are the same as those described in the entry for
      `master_type`.

      This value must be consistent with the category of machine type that
      `masterType` uses. In other words, both must be Compute Engine machine
      types or both must be legacy machine types.

      This value must be present when `scaleTier` is set to `CUSTOM` and
      `parameter_server_count` is greater than zero.
  *   `pythonModule` (*type:* `String.t`, *default:* `nil`) - Required. The Python module name to run after installing the packages.
  *   `pythonVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of Python used in training. If not set, the default
      version is '2.7'. Python '3.5' is available when `runtime_version` is set
      to '1.4' and above. Python '2.7' works with all supported
      <a href="/ml-engine/docs/runtime-version-list">runtime versions</a>.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Required. The Google Compute Engine region to run the training job in.
      See the <a href="/ml-engine/docs/tensorflow/regions">available regions</a>
      for AI Platform services.
  *   `runtimeVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The AI Platform runtime version to use for training. If not
      set, AI Platform uses the default stable version, 1.0. For more
      information, see the
      <a href="/ml-engine/docs/runtime-version-list">runtime version list</a>
      and
      <a href="/ml-engine/docs/versioning">how to manage runtime versions</a>.
  *   `scaleTier` (*type:* `String.t`, *default:* `nil`) - Required. Specifies the machine types, the number of replicas for workers
      and parameter servers.
  *   `useChiefInTfConfig` (*type:* `boolean()`, *default:* `nil`) - Optional. Use 'chief' instead of 'master' in TF_CONFIG when Custom
      Container is used and evaluator is not specified.

      Defaults to false.
  *   `workerConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t`, *default:* `nil`) - Optional. The configuration for workers.

      You should only set `workerConfig.acceleratorConfig` if `workerType` is set
      to a Compute Engine machine type. [Learn about restrictions on accelerator
      configurations for
      training.](/ml-engine/docs/tensorflow/using-gpus#compute-engine-machine-types-with-gpu)

      Set `workerConfig.imageUri` only if you build a custom image for your
      worker. If `workerConfig.imageUri` has not been set, AI Platform uses
      the value of `masterConfig.imageUri`. Learn more about
      [configuring custom
      containers](/ml-engine/docs/distributed-training-containers).
  *   `workerCount` (*type:* `String.t`, *default:* `nil`) - Optional. The number of worker replicas to use for the training job. Each
      replica in the cluster will be of the type specified in `worker_type`.

      This value can only be used when `scale_tier` is set to `CUSTOM`. If you
      set this value, you must also set `worker_type`.

      The default value is zero.
  *   `workerType` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the type of virtual machine to use for your training
      job's worker nodes.

      The supported values are the same as those described in the entry for
      `masterType`.

      This value must be consistent with the category of machine type that
      `masterType` uses. In other words, both must be Compute Engine machine
      types or both must be legacy machine types.

      If you use `cloud_tpu` for this value, see special instructions for
      [configuring a custom TPU
      machine](/ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine).

      This value must be present when `scaleTier` is set to `CUSTOM` and
      `workerCount` is greater than zero.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(String.t()),
          :hyperparameters =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__HyperparameterSpec.t(),
          :jobDir => String.t(),
          :masterConfig => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t(),
          :masterType => String.t(),
          :packageUris => list(String.t()),
          :parameterServerConfig =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t(),
          :parameterServerCount => String.t(),
          :parameterServerType => String.t(),
          :pythonModule => String.t(),
          :pythonVersion => String.t(),
          :region => String.t(),
          :runtimeVersion => String.t(),
          :scaleTier => String.t(),
          :useChiefInTfConfig => boolean(),
          :workerConfig => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig.t(),
          :workerCount => String.t(),
          :workerType => String.t()
        }

  field(:args, type: :list)

  field(
    :hyperparameters,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__HyperparameterSpec
  )

  field(:jobDir)
  field(:masterConfig, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig)
  field(:masterType)
  field(:packageUris, type: :list)

  field(
    :parameterServerConfig,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig
  )

  field(:parameterServerCount)
  field(:parameterServerType)
  field(:pythonModule)
  field(:pythonVersion)
  field(:region)
  field(:runtimeVersion)
  field(:scaleTier)
  field(:useChiefInTfConfig)
  field(:workerConfig, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ReplicaConfig)
  field(:workerCount)
  field(:workerType)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingInput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
