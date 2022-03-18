{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudSearch.Debug.Identitysources.Unmappedids.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists unmapped user identities for an identity source. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.identitysources.unmappedids.list@.
module Gogol.CloudSearch.Debug.Identitysources.Unmappedids.List
    (
    -- * Resource
      CloudSearchDebugIdentitysourcesUnmappedidsListResource

    -- ** Constructing a Request
    , newCloudSearchDebugIdentitysourcesUnmappedidsList
    , CloudSearchDebugIdentitysourcesUnmappedidsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.debug.identitysources.unmappedids.list@ method which the
-- 'CloudSearchDebugIdentitysourcesUnmappedidsList' request conforms to.
type CloudSearchDebugIdentitysourcesUnmappedidsListResource
     =
     "v1" Core.:>
       "debug" Core.:>
         Core.Capture "parent" Core.Text Core.:>
           "unmappedids" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "debugOptions.enableDebugging"
                     Core.Bool
                     Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "resolutionStatusCode"
                           DebugIdentitysourcesUnmappedidsListResolutionStatusCode
                           Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON]
                                   ListUnmappedIdentitiesResponse

-- | Lists unmapped user identities for an identity source. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchDebugIdentitysourcesUnmappedidsList' smart constructor.
data CloudSearchDebugIdentitysourcesUnmappedidsList = CloudSearchDebugIdentitysourcesUnmappedidsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    , debugOptionsEnableDebugging :: (Core.Maybe Core.Bool)
      -- | Maximum number of items to fetch in a request. Defaults to 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from a previous List request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The name of the identity source, in the following format: identitysources\/{source_id}
    , parent :: Core.Text
      -- | Limit users selection to this status.
    , resolutionStatusCode :: (Core.Maybe
   DebugIdentitysourcesUnmappedidsListResolutionStatusCode)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchDebugIdentitysourcesUnmappedidsList' with the minimum fields required to make a request.
newCloudSearchDebugIdentitysourcesUnmappedidsList 
    ::  Core.Text
       -- ^  The name of the identity source, in the following format: identitysources\/{source_id} See 'parent'.
    -> CloudSearchDebugIdentitysourcesUnmappedidsList
newCloudSearchDebugIdentitysourcesUnmappedidsList parent =
  CloudSearchDebugIdentitysourcesUnmappedidsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , debugOptionsEnableDebugging = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , resolutionStatusCode = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchDebugIdentitysourcesUnmappedidsList
         where
        type Rs
               CloudSearchDebugIdentitysourcesUnmappedidsList
             = ListUnmappedIdentitiesResponse
        type Scopes
               CloudSearchDebugIdentitysourcesUnmappedidsList
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          CloudSearchDebugIdentitysourcesUnmappedidsList{..}
          = go parent xgafv accessToken callback
              debugOptionsEnableDebugging
              pageSize
              pageToken
              resolutionStatusCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchDebugIdentitysourcesUnmappedidsListResource)
                      Core.mempty

