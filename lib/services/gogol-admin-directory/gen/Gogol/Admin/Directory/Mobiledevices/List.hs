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
-- Module      : Gogol.Admin.Directory.Mobiledevices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all user-owned mobile devices for an account. To retrieve a list that includes company-owned devices, use the Cloud Identity <https://cloud.google.com/identity/docs/concepts/overview-devices Devices API> instead.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.list@.
module Gogol.Admin.Directory.Mobiledevices.List
    (
    -- * Resource
      DirectoryMobiledevicesListResource

    -- ** Constructing a Request
    , newDirectoryMobiledevicesList
    , DirectoryMobiledevicesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.mobiledevices.list@ method which the
-- 'DirectoryMobiledevicesList' request conforms to.
type DirectoryMobiledevicesListResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               "devices" Core.:>
                 "mobile" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "orderBy" MobiledevicesListOrderBy
                             Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "projection"
                                 MobiledevicesListProjection
                                 Core.:>
                                 Core.QueryParam "query" Core.Text Core.:>
                                   Core.QueryParam "sortOrder"
                                     MobiledevicesListSortOrder
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.Get '[Core.JSON] MobileDevices

-- | Retrieves a paginated list of all user-owned mobile devices for an account. To retrieve a list that includes company-owned devices, use the Cloud Identity <https://cloud.google.com/identity/docs/concepts/overview-devices Devices API> instead.
--
-- /See:/ 'newDirectoryMobiledevicesList' smart constructor.
data DirectoryMobiledevicesList = DirectoryMobiledevicesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    , customerId :: Core.Text
      -- | Maximum number of results to return. Max allowed value is 100.
    , maxResults :: Core.Int32
      -- | Device property to use for sorting results.
    , orderBy :: (Core.Maybe MobiledevicesListOrderBy)
      -- | Token to specify next page in the list
    , pageToken :: (Core.Maybe Core.Text)
      -- | Restrict information returned to a set of selected fields.
    , projection :: (Core.Maybe MobiledevicesListProjection)
      -- | Search string in the format given at https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/search-operators
    , query :: (Core.Maybe Core.Text)
      -- | Whether to return results in ascending or descending order. Must be used with the @orderBy@ parameter.
    , sortOrder :: (Core.Maybe MobiledevicesListSortOrder)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMobiledevicesList' with the minimum fields required to make a request.
newDirectoryMobiledevicesList 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
    -> DirectoryMobiledevicesList
newDirectoryMobiledevicesList customerId =
  DirectoryMobiledevicesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , maxResults = 100
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , projection = Core.Nothing
    , query = Core.Nothing
    , sortOrder = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryMobiledevicesList
         where
        type Rs DirectoryMobiledevicesList = MobileDevices
        type Scopes DirectoryMobiledevicesList =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
        requestClient DirectoryMobiledevicesList{..}
          = go customerId xgafv accessToken callback
              (Core.Just maxResults)
              orderBy
              pageToken
              projection
              query
              sortOrder
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryMobiledevicesListResource)
                      Core.mempty

