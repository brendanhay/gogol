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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyHandles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists KeyHandles.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyHandles.list@.
module Gogol.CloudKMS.Projects.Locations.KeyHandles.List
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyHandlesListResource

    -- ** Constructing a Request
    , CloudKMSProjectsLocationsKeyHandlesList (..)
    , newCloudKMSProjectsLocationsKeyHandlesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyHandles.list@ method which the
-- 'CloudKMSProjectsLocationsKeyHandlesList' request conforms to.
type CloudKMSProjectsLocationsKeyHandlesListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "keyHandles" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListKeyHandlesResponse

-- | Lists KeyHandles.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyHandlesList' smart constructor.
data CloudKMSProjectsLocationsKeyHandlesList = CloudKMSProjectsLocationsKeyHandlesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter to apply when listing KeyHandles, e.g. @resource_type_selector=\"{SERVICE}.googleapis.com\/{TYPE}\"@.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. Optional limit on the number of KeyHandles to include in the response. The service may return fewer than this value. Further KeyHandles can subsequently be obtained by including the ListKeyHandlesResponse.next/page/token in a subsequent request. If unspecified, at most 100 KeyHandles will be returned.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. Optional pagination token, returned earlier via ListKeyHandlesResponse.next/page/token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Name of the resource project and location from which to list KeyHandles, e.g. @projects\/{PROJECT_ID}\/locations\/{LOCATION}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyHandlesList' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyHandlesList 
    ::  Core.Text
       -- ^  Required. Name of the resource project and location from which to list KeyHandles, e.g. @projects\/{PROJECT_ID}\/locations\/{LOCATION}@. See 'parent'.
    -> CloudKMSProjectsLocationsKeyHandlesList
newCloudKMSProjectsLocationsKeyHandlesList parent =
  CloudKMSProjectsLocationsKeyHandlesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyHandlesList
         where
        type Rs CloudKMSProjectsLocationsKeyHandlesList =
             ListKeyHandlesResponse
        type Scopes CloudKMSProjectsLocationsKeyHandlesList =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsLocationsKeyHandlesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyHandlesListResource)
                      Core.mempty

