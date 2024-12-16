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
-- Module      : Gogol.Analytics.Management.Uploads.DeleteUploadData
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete data associated with a previous upload.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.deleteUploadData@.
module Gogol.Analytics.Management.Uploads.DeleteUploadData
    (
    -- * Resource
      AnalyticsManagementUploadsDeleteUploadDataResource

    -- ** Constructing a Request
    , AnalyticsManagementUploadsDeleteUploadData (..)
    , newAnalyticsManagementUploadsDeleteUploadData
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.uploads.deleteUploadData@ method which the
-- 'AnalyticsManagementUploadsDeleteUploadData' request conforms to.
type AnalyticsManagementUploadsDeleteUploadDataResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customDataSources" Core.:>
                     Core.Capture "customDataSourceId" Core.Text Core.:>
                       "deleteUploadData" Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON]
                             AnalyticsDataimportDeleteUploadDataRequest
                             Core.:> Core.Post '[Core.JSON] ()

-- | Delete data associated with a previous upload.
--
-- /See:/ 'newAnalyticsManagementUploadsDeleteUploadData' smart constructor.
data AnalyticsManagementUploadsDeleteUploadData = AnalyticsManagementUploadsDeleteUploadData
    {
      -- | Account Id for the uploads to be deleted.
      accountId :: Core.Text
      -- | Custom data source Id for the uploads to be deleted.
    , customDataSourceId :: Core.Text
      -- | Multipart request metadata.
    , payload :: AnalyticsDataimportDeleteUploadDataRequest
      -- | Web property Id for the uploads to be deleted.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUploadsDeleteUploadData' with the minimum fields required to make a request.
newAnalyticsManagementUploadsDeleteUploadData 
    ::  Core.Text
       -- ^  Account Id for the uploads to be deleted. See 'accountId'.
    -> Core.Text
       -- ^  Custom data source Id for the uploads to be deleted. See 'customDataSourceId'.
    -> AnalyticsDataimportDeleteUploadDataRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property Id for the uploads to be deleted. See 'webPropertyId'.
    -> AnalyticsManagementUploadsDeleteUploadData
newAnalyticsManagementUploadsDeleteUploadData accountId customDataSourceId payload webPropertyId =
  AnalyticsManagementUploadsDeleteUploadData
    { accountId = accountId
    , customDataSourceId = customDataSourceId
    , payload = payload
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementUploadsDeleteUploadData
         where
        type Rs AnalyticsManagementUploadsDeleteUploadData =
             ()
        type Scopes
               AnalyticsManagementUploadsDeleteUploadData
             = '[Analytics'FullControl, Analytics'Edit]
        requestClient
          AnalyticsManagementUploadsDeleteUploadData{..}
          = go accountId webPropertyId customDataSourceId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementUploadsDeleteUploadDataResource)
                      Core.mempty

