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
-- Module      : Gogol.CloudSearch.Debug.Datasources.Items.SearchByViewUrl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the item whose viewUrl exactly matches that of the URL provided in the request. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.searchByViewUrl@.
module Gogol.CloudSearch.Debug.Datasources.Items.SearchByViewUrl
    (
    -- * Resource
      CloudSearchDebugDatasourcesItemsSearchByViewUrlResource

    -- ** Constructing a Request
    , newCloudSearchDebugDatasourcesItemsSearchByViewUrl
    , CloudSearchDebugDatasourcesItemsSearchByViewUrl
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.debug.datasources.items.searchByViewUrl@ method which the
-- 'CloudSearchDebugDatasourcesItemsSearchByViewUrl' request conforms to.
type CloudSearchDebugDatasourcesItemsSearchByViewUrlResource
     =
     "v1" Core.:>
       "debug" Core.:>
         Core.Capture "name" Core.Text Core.:>
           "items:searchByViewUrl" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] SearchItemsByViewUrlRequest
                           Core.:>
                           Core.Post '[Core.JSON] SearchItemsByViewUrlResponse

-- | Fetches the item whose viewUrl exactly matches that of the URL provided in the request. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchDebugDatasourcesItemsSearchByViewUrl' smart constructor.
data CloudSearchDebugDatasourcesItemsSearchByViewUrl = CloudSearchDebugDatasourcesItemsSearchByViewUrl
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Source name, format: datasources\/{source_id}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SearchItemsByViewUrlRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchDebugDatasourcesItemsSearchByViewUrl' with the minimum fields required to make a request.
newCloudSearchDebugDatasourcesItemsSearchByViewUrl 
    ::  Core.Text
       -- ^  Source name, format: datasources\/{source_id} See 'name'.
    -> SearchItemsByViewUrlRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchDebugDatasourcesItemsSearchByViewUrl
newCloudSearchDebugDatasourcesItemsSearchByViewUrl name payload =
  CloudSearchDebugDatasourcesItemsSearchByViewUrl
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchDebugDatasourcesItemsSearchByViewUrl
         where
        type Rs
               CloudSearchDebugDatasourcesItemsSearchByViewUrl
             = SearchItemsByViewUrlResponse
        type Scopes
               CloudSearchDebugDatasourcesItemsSearchByViewUrl
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          CloudSearchDebugDatasourcesItemsSearchByViewUrl{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchDebugDatasourcesItemsSearchByViewUrlResource)
                      Core.mempty

