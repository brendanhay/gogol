{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidManagement.Enterprises.EnrollmentTokens.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists active, unexpired enrollment tokens for a given enterprise. The list items contain only a partial view of EnrollmentToken object. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it\'s recommended to delete active enrollment tokens as soon as they\'re not intended to be used anymore.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.list@.
module Gogol.AndroidManagement.Enterprises.EnrollmentTokens.List
  ( -- * Resource
    AndroidManagementEnterprisesEnrollmentTokensListResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesEnrollmentTokensList (..),
    newAndroidManagementEnterprisesEnrollmentTokensList,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.list@ method which the
-- 'AndroidManagementEnterprisesEnrollmentTokensList' request conforms to.
type AndroidManagementEnterprisesEnrollmentTokensListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "enrollmentTokens"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEnrollmentTokensResponse

-- | Lists active, unexpired enrollment tokens for a given enterprise. The list items contain only a partial view of EnrollmentToken object. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it\'s recommended to delete active enrollment tokens as soon as they\'re not intended to be used anymore.
--
-- /See:/ 'newAndroidManagementEnterprisesEnrollmentTokensList' smart constructor.
data AndroidManagementEnterprisesEnrollmentTokensList = AndroidManagementEnterprisesEnrollmentTokensList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The requested page size. The service may return fewer than this value. If unspecified, at most 10 items will be returned. The maximum value is 100; values above 100 will be coerced to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results returned by the server.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the enterprise in the form enterprises\/{enterpriseId}.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesEnrollmentTokensList' with the minimum fields required to make a request.
newAndroidManagementEnterprisesEnrollmentTokensList ::
  -- |  Required. The name of the enterprise in the form enterprises\/{enterpriseId}. See 'parent'.
  Core.Text ->
  AndroidManagementEnterprisesEnrollmentTokensList
newAndroidManagementEnterprisesEnrollmentTokensList parent =
  AndroidManagementEnterprisesEnrollmentTokensList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesEnrollmentTokensList
  where
  type
    Rs AndroidManagementEnterprisesEnrollmentTokensList =
      ListEnrollmentTokensResponse
  type
    Scopes AndroidManagementEnterprisesEnrollmentTokensList =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesEnrollmentTokensList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidManagementEnterprisesEnrollmentTokensListResource
          )
          Core.mempty
