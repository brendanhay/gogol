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
-- Module      : Gogol.IAM.Organizations.Roles.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom Role. When you delete a custom role, the following changes occur immediately: * You cannot bind a principal to the custom role in an IAM Policy. * Existing bindings to the custom role are not changed, but they have no effect. * By default, the response from ListRoles does not include the custom role. You have 7 days to undelete the custom role. After 7 days, the following changes occur: * The custom role is permanently deleted and cannot be recovered. * If an IAM policy contains a binding to the custom role, the binding is permanently removed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.delete@.
module Gogol.IAM.Organizations.Roles.Delete
  ( -- * Resource
    IAMOrganizationsRolesDeleteResource,

    -- ** Constructing a Request
    newIAMOrganizationsRolesDelete,
    IAMOrganizationsRolesDelete,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.organizations.roles.delete@ method which the
-- 'IAMOrganizationsRolesDelete' request conforms to.
type IAMOrganizationsRolesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Base64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Role

-- | Deletes a custom Role. When you delete a custom role, the following changes occur immediately: * You cannot bind a principal to the custom role in an IAM Policy. * Existing bindings to the custom role are not changed, but they have no effect. * By default, the response from ListRoles does not include the custom role. You have 7 days to undelete the custom role. After 7 days, the following changes occur: * The custom role is permanently deleted and cannot be recovered. * If an IAM policy contains a binding to the custom role, the binding is permanently removed.
--
-- /See:/ 'newIAMOrganizationsRolesDelete' smart constructor.
data IAMOrganizationsRolesDelete = IAMOrganizationsRolesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Used to perform a consistent read-modify-write.
    etag :: (Core.Maybe Core.Base64),
    -- | The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/delete projects.roles.delete()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method deletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/delete organizations.roles.delete()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method deletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the organization
    -- level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMOrganizationsRolesDelete' with the minimum fields required to make a request.
newIAMOrganizationsRolesDelete ::
  -- |  The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/delete projects.roles.delete()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method deletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/delete organizations.roles.delete()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method deletes only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the organization
  -- level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID. See 'name'.
  Core.Text ->
  IAMOrganizationsRolesDelete
newIAMOrganizationsRolesDelete name =
  IAMOrganizationsRolesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMOrganizationsRolesDelete
  where
  type Rs IAMOrganizationsRolesDelete = Role
  type
    Scopes IAMOrganizationsRolesDelete =
      '[CloudPlatform'FullControl]
  requestClient IAMOrganizationsRolesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMOrganizationsRolesDeleteResource
          )
          Core.mempty
