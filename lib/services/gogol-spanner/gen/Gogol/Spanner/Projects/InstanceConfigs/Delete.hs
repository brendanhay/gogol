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
-- Module      : Gogol.Spanner.Projects.InstanceConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the instance configuration. Deletion is only allowed when no instances are using the configuration. If any instances are using the configuration, returns @FAILED_PRECONDITION@. Only user-managed configurations can be deleted. Authorization requires @spanner.instanceConfigs.delete@ permission on the resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.delete@.
module Gogol.Spanner.Projects.InstanceConfigs.Delete
    (
    -- * Resource
      SpannerProjectsInstanceConfigsDeleteResource

    -- ** Constructing a Request
    , SpannerProjectsInstanceConfigsDelete (..)
    , newSpannerProjectsInstanceConfigsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.delete@ method which the
-- 'SpannerProjectsInstanceConfigsDelete' request conforms to.
type SpannerProjectsInstanceConfigsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "etag" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "validateOnly" Core.Bool Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Empty

-- | Deletes the instance configuration. Deletion is only allowed when no instances are using the configuration. If any instances are using the configuration, returns @FAILED_PRECONDITION@. Only user-managed configurations can be deleted. Authorization requires @spanner.instanceConfigs.delete@ permission on the resource name.
--
-- /See:/ 'newSpannerProjectsInstanceConfigsDelete' smart constructor.
data SpannerProjectsInstanceConfigsDelete = SpannerProjectsInstanceConfigsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Used for optimistic concurrency control as a way to help prevent simultaneous deletes of an instance configuration from overwriting each other. If not empty, the API only deletes the instance configuration when the etag provided matches the current status of the requested instance configuration. Otherwise, deletes the instance configuration without checking the current status of the requested instance configuration.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The name of the instance configuration to be deleted. Values are of the form @projects\/\/instanceConfigs\/@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | An option to validate, but not actually execute, a request, and provide the same response.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigsDelete' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigsDelete 
    ::  Core.Text
       -- ^  Required. The name of the instance configuration to be deleted. Values are of the form @projects\/\/instanceConfigs\/@ See 'name'.
    -> SpannerProjectsInstanceConfigsDelete
newSpannerProjectsInstanceConfigsDelete name =
  SpannerProjectsInstanceConfigsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , etag = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstanceConfigsDelete
         where
        type Rs SpannerProjectsInstanceConfigsDelete = Empty
        type Scopes SpannerProjectsInstanceConfigsDelete =
             '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstanceConfigsDelete{..}
          = go name xgafv accessToken callback etag uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstanceConfigsDeleteResource)
                      Core.mempty

