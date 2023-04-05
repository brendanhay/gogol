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
-- Module      : Gogol.Admin.Directory.Chromeosdevices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of Chrome OS devices within an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.list@.
module Gogol.Admin.Directory.Chromeosdevices.List
  ( -- * Resource
    DirectoryChromeosdevicesListResource,

    -- ** Constructing a Request
    DirectoryChromeosdevicesList (..),
    newDirectoryChromeosdevicesList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.chromeosdevices.list@ method which the
-- 'DirectoryChromeosdevicesList' request conforms to.
type DirectoryChromeosdevicesListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "chromeos"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeChildOrgunits" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam
              "orderBy"
              ChromeosdevicesListOrderBy
    Core.:> Core.QueryParam "orgUnitPath" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "projection"
              ChromeosdevicesListProjection
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam
              "sortOrder"
              ChromeosdevicesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ChromeOsDevices

-- | Retrieves a paginated list of Chrome OS devices within an account.
--
-- /See:/ 'newDirectoryChromeosdevicesList' smart constructor.
data DirectoryChromeosdevicesList = DirectoryChromeosdevicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | Return devices from all child orgunits, as well as the specified org unit. If this is set to true, \'orgUnitPath\' must be provided.
    includeChildOrgunits :: (Core.Maybe Core.Bool),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Device property to use for sorting results.
    orderBy :: (Core.Maybe ChromeosdevicesListOrderBy),
    -- | The full path of the organizational unit (minus the leading @\/@) or its unique ID.
    orgUnitPath :: (Core.Maybe Core.Text),
    -- | The @pageToken@ query parameter is used to request the next page of query results. The follow-on request\'s @pageToken@ query parameter is the @nextPageToken@ from your previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | Restrict information returned to a set of selected fields.
    projection :: (Core.Maybe ChromeosdevicesListProjection),
    -- | Search string in the format given at https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/list-query-operators
    query :: (Core.Maybe Core.Text),
    -- | Whether to return results in ascending or descending order. Must be used with the @orderBy@ parameter.
    sortOrder :: (Core.Maybe ChromeosdevicesListSortOrder),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesList' with the minimum fields required to make a request.
newDirectoryChromeosdevicesList ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  DirectoryChromeosdevicesList
newDirectoryChromeosdevicesList customerId =
  DirectoryChromeosdevicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      includeChildOrgunits = Core.Nothing,
      maxResults = 100,
      orderBy = Core.Nothing,
      orgUnitPath = Core.Nothing,
      pageToken = Core.Nothing,
      projection = Core.Nothing,
      query = Core.Nothing,
      sortOrder = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryChromeosdevicesList
  where
  type
    Rs DirectoryChromeosdevicesList =
      ChromeOsDevices
  type
    Scopes DirectoryChromeosdevicesList =
      '[ Admin'Directory'Device'Chromeos,
         Admin'Directory'Device'Chromeos'Readonly
       ]
  requestClient DirectoryChromeosdevicesList {..} =
    go
      customerId
      xgafv
      accessToken
      callback
      includeChildOrgunits
      (Core.Just maxResults)
      orderBy
      orgUnitPath
      pageToken
      projection
      query
      sortOrder
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryChromeosdevicesListResource
          )
          Core.mempty
