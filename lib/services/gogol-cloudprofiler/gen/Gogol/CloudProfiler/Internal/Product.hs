{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudProfiler.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudProfiler.Internal.Product
  ( -- * CreateProfileRequest
    CreateProfileRequest (..),
    newCreateProfileRequest,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * Deployment_Labels
    Deployment_Labels (..),
    newDeployment_Labels,

    -- * ListProfilesResponse
    ListProfilesResponse (..),
    newListProfilesResponse,

    -- * Profile
    Profile (..),
    newProfile,

    -- * Profile_Labels
    Profile_Labels (..),
    newProfile_Labels,
  )
where

import Gogol.CloudProfiler.Internal.Sum
import Gogol.Prelude qualified as Core

-- | CreateProfileRequest describes a profile resource online creation request. The deployment field must be populated. The profile_type specifies the list of profile types supported by the agent. The creation call will hang until a profile of one of these types needs to be collected.
--
-- /See:/ 'newCreateProfileRequest' smart constructor.
data CreateProfileRequest = CreateProfileRequest
  { -- | Deployment details.
    deployment :: (Core.Maybe Deployment),
    -- | One or more profile types that the agent is capable of providing.
    profileType :: (Core.Maybe [CreateProfileRequest_ProfileTypeItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateProfileRequest' with the minimum fields required to make a request.
newCreateProfileRequest ::
  CreateProfileRequest
newCreateProfileRequest =
  CreateProfileRequest
    { deployment = Core.Nothing,
      profileType = Core.Nothing
    }

instance Core.FromJSON CreateProfileRequest where
  parseJSON =
    Core.withObject
      "CreateProfileRequest"
      ( \o ->
          CreateProfileRequest
            Core.<$> (o Core..:? "deployment")
            Core.<*> (o Core..:? "profileType")
      )

instance Core.ToJSON CreateProfileRequest where
  toJSON CreateProfileRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployment" Core..=) Core.<$> deployment,
            ("profileType" Core..=) Core.<$> profileType
          ]
      )

-- | Deployment contains the deployment identification information.
--
-- /See:/ 'newDeployment' smart constructor.
data Deployment = Deployment
  { -- | Labels identify the deployment within the user universe and same target. Validation regex for label names: @^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$@. Value for an individual label must be \<= 512 bytes, the total size of all label names and values must be \<= 1024 bytes. Label named \"language\" can be used to record the programming language of the profiled deployment. The standard choices for the value include \"java\", \"go\", \"python\", \"ruby\", \"nodejs\", \"php\", \"dotnet\". For deployments running on Google Cloud Platform, \"zone\" or \"region\" label should be present describing the deployment location. An example of a zone is \"us-central1-a\", an example of a region is \"us-central1\" or \"us-central\".
    labels :: (Core.Maybe Deployment_Labels),
    -- | Project ID is the ID of a cloud project. Validation regex: @^a-z{4,61}[a-z0-9]$@.
    projectId :: (Core.Maybe Core.Text),
    -- | Target is the service name used to group related deployments: * Service name for App Engine Flex \/ Standard. * Cluster and container name for GKE. * User-specified string for direct Compute Engine profiling (e.g. Java). * Job name for Dataflow. Validation regex: @^[a-z0-9]([-a-z0-9_.]{0,253}[a-z0-9])?$@.
    target :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
newDeployment ::
  Deployment
newDeployment =
  Deployment
    { labels = Core.Nothing,
      projectId = Core.Nothing,
      target = Core.Nothing
    }

instance Core.FromJSON Deployment where
  parseJSON =
    Core.withObject
      "Deployment"
      ( \o ->
          Deployment
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "target")
      )

instance Core.ToJSON Deployment where
  toJSON Deployment {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("projectId" Core..=) Core.<$> projectId,
            ("target" Core..=) Core.<$> target
          ]
      )

-- | Labels identify the deployment within the user universe and same target. Validation regex for label names: @^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$@. Value for an individual label must be \<= 512 bytes, the total size of all label names and values must be \<= 1024 bytes. Label named \"language\" can be used to record the programming language of the profiled deployment. The standard choices for the value include \"java\", \"go\", \"python\", \"ruby\", \"nodejs\", \"php\", \"dotnet\". For deployments running on Google Cloud Platform, \"zone\" or \"region\" label should be present describing the deployment location. An example of a zone is \"us-central1-a\", an example of a region is \"us-central1\" or \"us-central\".
--
-- /See:/ 'newDeployment_Labels' smart constructor.
newtype Deployment_Labels = Deployment_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment_Labels' with the minimum fields required to make a request.
newDeployment_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Deployment_Labels
newDeployment_Labels additional =
  Deployment_Labels {additional = additional}

instance Core.FromJSON Deployment_Labels where
  parseJSON =
    Core.withObject
      "Deployment_Labels"
      (\o -> Deployment_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Deployment_Labels where
  toJSON Deployment_Labels {..} = Core.toJSON additional

-- | ListProfileResponse contains the list of collected profiles for deployments in projects which the user has permissions to view.
--
-- /See:/ 'newListProfilesResponse' smart constructor.
data ListProfilesResponse = ListProfilesResponse
  { -- | Token to receive the next page of results. This field maybe empty if there are no more profiles to fetch.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of profiles fetched.
    profiles :: (Core.Maybe [Profile]),
    -- | Number of profiles that were skipped in the current page since they were not able to be fetched successfully. This should typically be zero. A non-zero value may indicate a transient failure, in which case if the number is too high for your use case, the call may be retried.
    skippedProfiles :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProfilesResponse' with the minimum fields required to make a request.
newListProfilesResponse ::
  ListProfilesResponse
newListProfilesResponse =
  ListProfilesResponse
    { nextPageToken = Core.Nothing,
      profiles = Core.Nothing,
      skippedProfiles = Core.Nothing
    }

instance Core.FromJSON ListProfilesResponse where
  parseJSON =
    Core.withObject
      "ListProfilesResponse"
      ( \o ->
          ListProfilesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "profiles")
            Core.<*> (o Core..:? "skippedProfiles")
      )

instance Core.ToJSON ListProfilesResponse where
  toJSON ListProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("profiles" Core..=) Core.<$> profiles,
            ("skippedProfiles" Core..=) Core.<$> skippedProfiles
          ]
      )

-- | Profile resource.
--
-- /See:/ 'newProfile' smart constructor.
data Profile = Profile
  { -- | Deployment this profile corresponds to.
    deployment :: (Core.Maybe Deployment),
    -- | Duration of the profiling session. Input (for the offline mode) or output (for the online mode). The field represents requested profiling duration. It may slightly differ from the effective profiling duration, which is recorded in the profile data, in case the profiling can\'t be stopped immediately (e.g. in case stopping the profiling is handled asynchronously).
    duration :: (Core.Maybe Core.Duration),
    -- | Input only. Labels associated to this specific profile. These labels will get merged with the deployment labels for the final data set. See documentation on deployment labels for validation rules and limits.
    labels :: (Core.Maybe Profile_Labels),
    -- | Output only. Opaque, server-assigned, unique ID for this profile.
    name :: (Core.Maybe Core.Text),
    -- | Input only. Profile bytes, as a gzip compressed serialized proto, the format is https:\/\/github.com\/google\/pprof\/blob\/master\/proto\/profile.proto.
    profileBytes :: (Core.Maybe Core.Base64),
    -- | Type of profile. For offline mode, this must be specified when creating the profile. For online mode it is assigned and returned by the server.
    profileType :: (Core.Maybe Profile_ProfileType),
    -- | Output only. Start time for the profile. This output is only present in response from the ListProfiles method.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
newProfile ::
  Profile
newProfile =
  Profile
    { deployment = Core.Nothing,
      duration = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      profileBytes = Core.Nothing,
      profileType = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON Profile where
  parseJSON =
    Core.withObject
      "Profile"
      ( \o ->
          Profile
            Core.<$> (o Core..:? "deployment")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "profileBytes")
            Core.<*> (o Core..:? "profileType")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Profile where
  toJSON Profile {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployment" Core..=) Core.<$> deployment,
            ("duration" Core..=) Core.<$> duration,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("profileBytes" Core..=) Core.<$> profileBytes,
            ("profileType" Core..=) Core.<$> profileType,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Input only. Labels associated to this specific profile. These labels will get merged with the deployment labels for the final data set. See documentation on deployment labels for validation rules and limits.
--
-- /See:/ 'newProfile_Labels' smart constructor.
newtype Profile_Labels = Profile_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile_Labels' with the minimum fields required to make a request.
newProfile_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Profile_Labels
newProfile_Labels additional =
  Profile_Labels {additional = additional}

instance Core.FromJSON Profile_Labels where
  parseJSON =
    Core.withObject
      "Profile_Labels"
      (\o -> Profile_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Profile_Labels where
  toJSON Profile_Labels {..} = Core.toJSON additional
