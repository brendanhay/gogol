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
-- Module      : Network.Google.IAM.Organizations.Roles.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a custom Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.undelete@.
module Network.Google.IAM.Organizations.Roles.Undelete
  ( -- * Resource
    IAMOrganizationsRolesUndeleteResource,

    -- ** Constructing a Request
    newIAMOrganizationsRolesUndelete,
    IAMOrganizationsRolesUndelete,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.organizations.roles.undelete@ method which the
-- 'IAMOrganizationsRolesUndelete' request conforms to.
type IAMOrganizationsRolesUndeleteResource =
  "v1"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteRoleRequest
    Core.:> Core.Post '[Core.JSON] Role

-- | Undeletes a custom Role.
--
-- /See:/ 'newIAMOrganizationsRolesUndelete' smart constructor.
data IAMOrganizationsRolesUndelete = IAMOrganizationsRolesUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/undelete projects.roles.undelete()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method undeletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/undelete organizations.roles.undelete()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method undeletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the
    -- organization level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteRoleRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMOrganizationsRolesUndelete' with the minimum fields required to make a request.
newIAMOrganizationsRolesUndelete ::
  -- |  The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/undelete projects.roles.undelete()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method undeletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/undelete organizations.roles.undelete()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method undeletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the
  -- organization level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteRoleRequest ->
  IAMOrganizationsRolesUndelete
newIAMOrganizationsRolesUndelete name payload =
  IAMOrganizationsRolesUndelete
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
    IAMOrganizationsRolesUndelete
  where
  type Rs IAMOrganizationsRolesUndelete = Role
  type
    Scopes IAMOrganizationsRolesUndelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAMOrganizationsRolesUndelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMOrganizationsRolesUndeleteResource
          )
          Core.mempty
