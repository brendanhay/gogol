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
-- Module      : Network.Google.Logging.Organizations.Exclusions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion in the _Default sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.exclusions.get@.
module Network.Google.Logging.Organizations.Exclusions.Get
  ( -- * Resource
    LoggingOrganizationsExclusionsGetResource,

    -- ** Constructing a Request
    newLoggingOrganizationsExclusionsGet,
    LoggingOrganizationsExclusionsGet,
  )
where

import Network.Google.Logging.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @logging.organizations.exclusions.get@ method which the
-- 'LoggingOrganizationsExclusionsGet' request conforms to.
type LoggingOrganizationsExclusionsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LogExclusion

-- | Gets the description of an exclusion in the _Default sink.
--
-- /See:/ 'newLoggingOrganizationsExclusionsGet' smart constructor.
data LoggingOrganizationsExclusionsGet = LoggingOrganizationsExclusionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of an existing exclusion: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsExclusionsGet' with the minimum fields required to make a request.
newLoggingOrganizationsExclusionsGet ::
  -- |  Required. The resource name of an existing exclusion: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\" See 'name'.
  Core.Text ->
  LoggingOrganizationsExclusionsGet
newLoggingOrganizationsExclusionsGet name =
  LoggingOrganizationsExclusionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsExclusionsGet
  where
  type
    Rs LoggingOrganizationsExclusionsGet =
      LogExclusion
  type
    Scopes LoggingOrganizationsExclusionsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/logging.admin",
         "https://www.googleapis.com/auth/logging.read"
       ]
  requestClient LoggingOrganizationsExclusionsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingOrganizationsExclusionsGetResource
          )
          Core.mempty
