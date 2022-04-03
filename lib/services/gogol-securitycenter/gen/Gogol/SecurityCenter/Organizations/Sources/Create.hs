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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.create@.
module Gogol.SecurityCenter.Organizations.Sources.Create
  ( -- * Resource
    SecurityCenterOrganizationsSourcesCreateResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsSourcesCreate (..),
    newSecurityCenterOrganizationsSourcesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.create@ method which the
-- 'SecurityCenterOrganizationsSourcesCreate' request conforms to.
type SecurityCenterOrganizationsSourcesCreateResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Source
    Core.:> Core.Post '[Core.JSON] Source

-- | Creates a source.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesCreate' smart constructor.
data SecurityCenterOrganizationsSourcesCreate = SecurityCenterOrganizationsSourcesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the new source\'s parent. Its format should be \"organizations\/[organization_id]\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Source,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesCreate' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesCreate ::
  -- |  Required. Resource name of the new source\'s parent. Its format should be \"organizations\/[organization_id]\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Source ->
  SecurityCenterOrganizationsSourcesCreate
newSecurityCenterOrganizationsSourcesCreate parent payload =
  SecurityCenterOrganizationsSourcesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesCreate
  where
  type
    Rs SecurityCenterOrganizationsSourcesCreate =
      Source
  type
    Scopes SecurityCenterOrganizationsSourcesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsSourcesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        securityCenterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsSourcesCreateResource
            )
            Core.mempty
