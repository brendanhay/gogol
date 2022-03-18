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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.GetSchema
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the schema of a data source. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.getSchema@.
module Gogol.CloudSearch.Indexing.Datasources.GetSchema
    (
    -- * Resource
      CloudSearchIndexingDatasourcesGetSchemaResource

    -- ** Constructing a Request
    , newCloudSearchIndexingDatasourcesGetSchema
    , CloudSearchIndexingDatasourcesGetSchema
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.indexing.datasources.getSchema@ method which the
-- 'CloudSearchIndexingDatasourcesGetSchema' request conforms to.
type CloudSearchIndexingDatasourcesGetSchemaResource
     =
     "v1" Core.:>
       "indexing" Core.:>
         Core.Capture "name" Core.Text Core.:>
           "schema" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "debugOptions.enableDebugging"
                     Core.Bool
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Schema

-- | Gets the schema of a data source. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesGetSchema' smart constructor.
data CloudSearchIndexingDatasourcesGetSchema = CloudSearchIndexingDatasourcesGetSchema
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    , debugOptionsEnableDebugging :: (Core.Maybe Core.Bool)
      -- | Name of the data source to get Schema. Format: datasources\/{source_id}
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesGetSchema' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesGetSchema 
    ::  Core.Text
       -- ^  Name of the data source to get Schema. Format: datasources\/{source_id} See 'name'.
    -> CloudSearchIndexingDatasourcesGetSchema
newCloudSearchIndexingDatasourcesGetSchema name =
  CloudSearchIndexingDatasourcesGetSchema
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , debugOptionsEnableDebugging = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchIndexingDatasourcesGetSchema
         where
        type Rs CloudSearchIndexingDatasourcesGetSchema =
             Schema
        type Scopes CloudSearchIndexingDatasourcesGetSchema =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient
          CloudSearchIndexingDatasourcesGetSchema{..}
          = go name xgafv accessToken callback
              debugOptionsEnableDebugging
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchIndexingDatasourcesGetSchemaResource)
                      Core.mempty

