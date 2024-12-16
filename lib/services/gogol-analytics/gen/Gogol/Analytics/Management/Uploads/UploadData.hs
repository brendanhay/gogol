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
-- Module      : Gogol.Analytics.Management.Uploads.UploadData
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload data for a custom data source.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.uploadData@.
module Gogol.Analytics.Management.Uploads.UploadData
    (
    -- * Resource
      AnalyticsManagementUploadsUploadDataResource

    -- ** Constructing a Request
    , AnalyticsManagementUploadsUploadData (..)
    , newAnalyticsManagementUploadsUploadData
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.uploads.uploadData@ method which the
-- 'AnalyticsManagementUploadsUploadData' request conforms to.
type AnalyticsManagementUploadsUploadDataResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customDataSources" Core.:>
                     Core.Capture "customDataSourceId" Core.Text Core.:>
                       "uploads" Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] Upload
       Core.:<|>
       "upload" Core.:>
         "analytics" Core.:>
           "v3" Core.:>
             "management" Core.:>
               "accounts" Core.:>
                 Core.Capture "accountId" Core.Text Core.:>
                   "webproperties" Core.:>
                     Core.Capture "webPropertyId" Core.Text Core.:>
                       "customDataSources" Core.:>
                         Core.Capture "customDataSourceId" Core.Text Core.:>
                           "uploads" Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.QueryParam "uploadType" Core.AltMedia
                                 Core.:>
                                 Core.AltMedia Core.:>
                                   Core.Post '[Core.JSON] Upload

-- | Upload data for a custom data source.
--
-- /See:/ 'newAnalyticsManagementUploadsUploadData' smart constructor.
data AnalyticsManagementUploadsUploadData = AnalyticsManagementUploadsUploadData
    {
      -- | Account Id associated with the upload.
      accountId :: Core.Text
      -- | Custom data source Id to which the data being uploaded belongs.
    , customDataSourceId :: Core.Text
      -- | Web property UA-string associated with the upload.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUploadsUploadData' with the minimum fields required to make a request.
newAnalyticsManagementUploadsUploadData 
    ::  Core.Text
       -- ^  Account Id associated with the upload. See 'accountId'.
    -> Core.Text
       -- ^  Custom data source Id to which the data being uploaded belongs. See 'customDataSourceId'.
    -> Core.Text
       -- ^  Web property UA-string associated with the upload. See 'webPropertyId'.
    -> AnalyticsManagementUploadsUploadData
newAnalyticsManagementUploadsUploadData accountId customDataSourceId webPropertyId =
  AnalyticsManagementUploadsUploadData
    { accountId = accountId
    , customDataSourceId = customDataSourceId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementUploadsUploadData
         where
        type Rs AnalyticsManagementUploadsUploadData = Upload
        type Scopes AnalyticsManagementUploadsUploadData =
             '[Analytics'FullControl, Analytics'Edit]
        requestClient
          AnalyticsManagementUploadsUploadData{..}
          = go accountId webPropertyId customDataSourceId
              (Core.Just Core.AltJSON)
              analyticsService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementUploadsUploadDataResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload
              AnalyticsManagementUploadsUploadData)
         where
        type Rs
               (Core.MediaUpload
                  AnalyticsManagementUploadsUploadData)
             = Upload
        type Scopes
               (Core.MediaUpload
                  AnalyticsManagementUploadsUploadData)
             = Core.Scopes AnalyticsManagementUploadsUploadData
        requestClient
          (Core.MediaUpload
             AnalyticsManagementUploadsUploadData{..} body)
          = go accountId webPropertyId customDataSourceId
              (Core.Just Core.AltJSON)
              (Core.Just Core.AltMedia)
              body
              analyticsService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementUploadsUploadDataResource)
                      Core.mempty

