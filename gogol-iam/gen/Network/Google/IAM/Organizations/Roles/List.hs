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
-- Module      : Network.Google.IAM.Organizations.Roles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists every predefined Role that IAM supports, or every custom role that is defined for an organization or project.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.list@.
module Network.Google.IAM.Organizations.Roles.List
  ( -- * Resource
    IAMOrganizationsRolesListResource,

    -- ** Constructing a Request
    newIAMOrganizationsRolesList,
    IAMOrganizationsRolesList,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.organizations.roles.list@ method which the
-- 'IAMOrganizationsRolesList' request conforms to.
type IAMOrganizationsRolesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "roles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" OrganizationsRolesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRolesResponse

-- | Lists every predefined Role that IAM supports, or every custom role that is defined for an organization or project.
--
-- /See:/ 'newIAMOrganizationsRolesList' smart constructor.
data IAMOrganizationsRolesList = IAMOrganizationsRolesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional limit on the number of roles to include in the response. The default is 300, and the maximum is 1,000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional pagination token returned in an earlier ListRolesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | The @parent@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/roles roles>, <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects>, or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @parent@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/roles/list roles.list()>: An empty string. This method doesn\'t require a resource; it simply returns all <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles predefined roles> in Cloud IAM. Example request URL: @https:\/\/iam.googleapis.com\/v1\/roles@ * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/list projects.roles.list()>: @projects\/{PROJECT_ID}@. This method lists all project-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles@ *
    -- <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/list organizations.roles.list()>: @organizations\/{ORGANIZATION_ID}@. This method lists all organization-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID.
    parent :: Core.Text,
    -- | Include Roles that have been deleted.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional view for the returned Role objects. When @FULL@ is specified, the @includedPermissions@ field is returned, which includes a list of all permissions in the role. The default value is @BASIC@, which does not return the @includedPermissions@ field.
    view :: (Core.Maybe OrganizationsRolesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMOrganizationsRolesList' with the minimum fields required to make a request.
newIAMOrganizationsRolesList ::
  -- |  The @parent@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/roles roles>, <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects>, or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @parent@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/roles/list roles.list()>: An empty string. This method doesn\'t require a resource; it simply returns all <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles predefined roles> in Cloud IAM. Example request URL: @https:\/\/iam.googleapis.com\/v1\/roles@ * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/list projects.roles.list()>: @projects\/{PROJECT_ID}@. This method lists all project-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles@ *
  -- <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/list organizations.roles.list()>: @organizations\/{ORGANIZATION_ID}@. This method lists all organization-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID. See 'parent'.
  Core.Text ->
  IAMOrganizationsRolesList
newIAMOrganizationsRolesList parent =
  IAMOrganizationsRolesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest IAMOrganizationsRolesList where
  type Rs IAMOrganizationsRolesList = ListRolesResponse
  type
    Scopes IAMOrganizationsRolesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAMOrganizationsRolesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      showDeleted
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMOrganizationsRolesListResource
          )
          Core.mempty
