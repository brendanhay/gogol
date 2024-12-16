{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spanner.Projects.InstanceConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance configuration and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance configuration. The instance configuration name is assigned by the caller. If the named instance configuration already exists, @CreateInstanceConfig@ returns @ALREADY_EXISTS@. Immediately after the request returns: * The instance configuration is readable via the API, with all requested attributes. The instance configuration\'s reconciling field is set to true. Its state is @CREATING@. While the operation is pending: * Cancelling the operation renders the instance configuration immediately unreadable via the API. * Except for deleting the creating resource, all other attempts to modify the instance configuration are rejected. Upon completion of the returned operation: * Instances can be created using the instance configuration. * The instance configuration\'s reconciling field becomes false. Its state becomes @READY@. The returned long-running
-- operation will have a name of the format @\/operations\/@ and can be used to track creation of the instance configuration. The metadata field type is CreateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires @spanner.instanceConfigs.create@ permission on the resource parent.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.create@.
module Gogol.Spanner.Projects.InstanceConfigs.Create
    (
    -- * Resource
      SpannerProjectsInstanceConfigsCreateResource

    -- ** Constructing a Request
    , SpannerProjectsInstanceConfigsCreate (..)
    , newSpannerProjectsInstanceConfigsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.create@ method which the
-- 'SpannerProjectsInstanceConfigsCreate' request conforms to.
type SpannerProjectsInstanceConfigsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "instanceConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CreateInstanceConfigRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an instance configuration and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance configuration. The instance configuration name is assigned by the caller. If the named instance configuration already exists, @CreateInstanceConfig@ returns @ALREADY_EXISTS@. Immediately after the request returns: * The instance configuration is readable via the API, with all requested attributes. The instance configuration\'s reconciling field is set to true. Its state is @CREATING@. While the operation is pending: * Cancelling the operation renders the instance configuration immediately unreadable via the API. * Except for deleting the creating resource, all other attempts to modify the instance configuration are rejected. Upon completion of the returned operation: * Instances can be created using the instance configuration. * The instance configuration\'s reconciling field becomes false. Its state becomes @READY@. The returned long-running
-- operation will have a name of the format @\/operations\/@ and can be used to track creation of the instance configuration. The metadata field type is CreateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires @spanner.instanceConfigs.create@ permission on the resource parent.
--
-- /See:/ 'newSpannerProjectsInstanceConfigsCreate' smart constructor.
data SpannerProjectsInstanceConfigsCreate = SpannerProjectsInstanceConfigsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the project in which to create the instance configuration. Values are of the form @projects\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CreateInstanceConfigRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigsCreate' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigsCreate 
    ::  Core.Text
       -- ^  Required. The name of the project in which to create the instance configuration. Values are of the form @projects\/@. See 'parent'.
    -> CreateInstanceConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SpannerProjectsInstanceConfigsCreate
newSpannerProjectsInstanceConfigsCreate parent payload =
  SpannerProjectsInstanceConfigsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstanceConfigsCreate
         where
        type Rs SpannerProjectsInstanceConfigsCreate =
             Operation
        type Scopes SpannerProjectsInstanceConfigsCreate =
             '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstanceConfigsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstanceConfigsCreateResource)
                      Core.mempty

