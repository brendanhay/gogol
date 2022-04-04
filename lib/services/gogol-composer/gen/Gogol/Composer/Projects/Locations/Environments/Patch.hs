{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Composer.Projects.Locations.Environments.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.patch@.
module Gogol.Composer.Projects.Locations.Environments.Patch
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsPatchResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsPatch (..),
    newComposerProjectsLocationsEnvironmentsPatch,
  )
where

import Gogol.Composer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @composer.projects.locations.environments.patch@ method which the
-- 'ComposerProjectsLocationsEnvironmentsPatch' request conforms to.
type ComposerProjectsLocationsEnvironmentsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Environment
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Update an environment.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsPatch' smart constructor.
data ComposerProjectsLocationsEnvironmentsPatch = ComposerProjectsLocationsEnvironmentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The relative resource name of the environment to update, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Environment,
    -- | Required. A comma-separated list of paths, relative to @Environment@, of fields to update. For example, to set the version of scikit-learn to install in the environment to 0.19.0 and to remove an existing installation of numpy, the @updateMask@ parameter would include the following two @paths@ values: \"config.softwareConfig.pypiPackages.scikit-learn\" and \"config.softwareConfig.pypiPackages.numpy\". The included patch environment would specify the scikit-learn version as follows: { \"config\":{ \"softwareConfig\":{ \"pypiPackages\":{ \"scikit-learn\":\"==0.19.0\" } } } } Note that in the above example, any existing PyPI packages other than scikit-learn and numpy will be unaffected. Only one update type may be included in a single request\'s @updateMask@. For example, one cannot update both the PyPI packages and labels in the same request. However, it is possible to update multiple members of a map field simultaneously in the same request. For example, to set the labels \"label1\" and \"label2\" while
    -- clearing \"label3\" (assuming it already exists), one can provide the paths \"labels.label1\", \"labels.label2\", and \"labels.label3\" and populate the patch environment as follows: { \"labels\":{ \"label1\":\"new-label1-value\" \"label2\":\"new-label2-value\" } } Note that in the above example, any existing labels that are not included in the @updateMask@ will be unaffected. It is also possible to replace an entire map field by providing the map field\'s path in the @updateMask@. The new value of the field will be that which is provided in the patch environment. For example, to delete all pre-existing user-specified PyPI packages and install botocore at version 1.7.14, the @updateMask@ would contain the path \"config.softwareConfig.pypiPackages\", and the patch environment would be the following: { \"config\":{ \"softwareConfig\":{ \"pypiPackages\":{ \"botocore\":\"==1.7.14\" } } } } __Note:__ Only the following fields can be updated: * @config.softwareConfig.pypiPackages@ * Replace all custom custom PyPI
    -- packages. If a replacement package map is not included in @environment@, all custom PyPI packages are cleared. It is an error to provide both this mask and a mask specifying an individual package. * @config.softwareConfig.pypiPackages.@packagename * Update the custom PyPI package /packagename/, preserving other packages. To delete the package, include it in @updateMask@, and omit the mapping for it in @environment.config.softwareConfig.pypiPackages@. It is an error to provide both a mask of this form and the @config.softwareConfig.pypiPackages@ mask. * @labels@ * Replace all environment labels. If a replacement labels map is not included in @environment@, all labels are cleared. It is an error to provide both this mask and a mask specifying one or more individual labels. * @labels.@labelName * Set the label named /labelName/, while preserving other labels. To delete the label, include it in @updateMask@ and omit its mapping in @environment.labels@. It is an error to provide both a mask of this form and the
    -- @labels@ mask. * @config.nodeCount@ * Horizontally scale the number of nodes in the environment. An integer greater than or equal to 3 must be provided in the @config.nodeCount@ field. Supported for Cloud Composer environments in versions composer-1././-airflow-/././. / @config.webServerNetworkAccessControl@ * Replace the environment\'s current @WebServerNetworkAccessControl@. * @config.softwareConfig.airflowConfigOverrides@ * Replace all Apache Airflow config overrides. If a replacement config overrides map is not included in @environment@, all config overrides are cleared. It is an error to provide both this mask and a mask specifying one or more individual config overrides. * @config.softwareConfig.airflowConfigOverrides.@section-name * Override the Apache Airflow config property /name/ in the section named /section/, preserving other properties. To delete the property override, include it in @updateMask@ and omit its mapping in @environment.config.softwareConfig.airflowConfigOverrides@. It is an error to
    -- provide both a mask of this form and the @config.softwareConfig.airflowConfigOverrides@ mask. * @config.softwareConfig.envVariables@ * Replace all environment variables. If a replacement environment variable map is not included in @environment@, all custom environment variables are cleared. It is an error to provide both this mask and a mask specifying one or more individual environment variables. * @config.softwareConfig.schedulerCount@ * Horizontally scale the number of schedulers in Airflow. A positive integer not greater than the number of nodes must be provided in the @config.softwareConfig.schedulerCount@ field. Supported for Cloud Composer environments in versions composer-1././-airflow-2././. * @config.databaseConfig.machineType@ * Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. Supported for Cloud Composer environments in versions composer-1././-airflow-/././. / @config.webServerConfig.machineType@ *
    -- Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. Supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsPatch' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsPatch ::
  -- |  The relative resource name of the environment to update, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Environment ->
  ComposerProjectsLocationsEnvironmentsPatch
newComposerProjectsLocationsEnvironmentsPatch name payload =
  ComposerProjectsLocationsEnvironmentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsPatch
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsPatch =
      Operation
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsPatchResource
            )
            Core.mempty
