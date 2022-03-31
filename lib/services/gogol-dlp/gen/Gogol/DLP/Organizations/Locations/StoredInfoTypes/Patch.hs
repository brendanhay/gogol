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
-- Module      : Gogol.DLP.Organizations.Locations.StoredInfoTypes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.patch@.
module Gogol.DLP.Organizations.Locations.StoredInfoTypes.Patch
  ( -- * Resource
    DLPOrganizationsLocationsStoredInfoTypesPatchResource,

    -- ** Constructing a Request
    newDLPOrganizationsLocationsStoredInfoTypesPatch,
    DLPOrganizationsLocationsStoredInfoTypesPatch,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.patch@ method which the
-- 'DLPOrganizationsLocationsStoredInfoTypesPatch' request conforms to.
type DLPOrganizationsLocationsStoredInfoTypesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    Core.:> Core.Patch
              '[Core.JSON]
              GooglePrivacyDlpV2StoredInfoType

-- | Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsStoredInfoTypesPatch' smart constructor.
data DLPOrganizationsLocationsStoredInfoTypesPatch = DLPOrganizationsLocationsStoredInfoTypesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of organization and storedInfoType to be updated, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsStoredInfoTypesPatch' with the minimum fields required to make a request.
newDLPOrganizationsLocationsStoredInfoTypesPatch ::
  -- |  Required. Resource name of organization and storedInfoType to be updated, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest ->
  DLPOrganizationsLocationsStoredInfoTypesPatch
newDLPOrganizationsLocationsStoredInfoTypesPatch name payload =
  DLPOrganizationsLocationsStoredInfoTypesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPOrganizationsLocationsStoredInfoTypesPatch
  where
  type
    Rs DLPOrganizationsLocationsStoredInfoTypesPatch =
      GooglePrivacyDlpV2StoredInfoType
  type
    Scopes
      DLPOrganizationsLocationsStoredInfoTypesPatch =
      '[CloudPlatform'FullControl]
  requestClient
    DLPOrganizationsLocationsStoredInfoTypesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dLPService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DLPOrganizationsLocationsStoredInfoTypesPatchResource
            )
            Core.mempty
