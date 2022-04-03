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
-- Module      : Gogol.IAM.Organizations.Roles.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.create@.
module Gogol.IAM.Organizations.Roles.Create
  ( -- * Resource
    IAMOrganizationsRolesCreateResource,

    -- ** Constructing a Request
    IAMOrganizationsRolesCreate (..),
    newIAMOrganizationsRolesCreate,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.organizations.roles.create@ method which the
-- 'IAMOrganizationsRolesCreate' request conforms to.
type IAMOrganizationsRolesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "roles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateRoleRequest
    Core.:> Core.Post '[Core.JSON] Role

-- | Creates a new custom Role.
--
-- /See:/ 'newIAMOrganizationsRolesCreate' smart constructor.
data IAMOrganizationsRolesCreate = IAMOrganizationsRolesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @parent@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @parent@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/create projects.roles.create()>: @projects\/{PROJECT_ID}@. This method creates project-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/create organizations.roles.create()>: @organizations\/{ORGANIZATION_ID}@. This method creates organization-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles@ Note: Wildcard (*) values are
    -- invalid; you must specify a complete project ID or organization ID.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateRoleRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMOrganizationsRolesCreate' with the minimum fields required to make a request.
newIAMOrganizationsRolesCreate ::
  -- |  The @parent@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects> or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @parent@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/create projects.roles.create()>: @projects\/{PROJECT_ID}@. This method creates project-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/create organizations.roles.create()>: @organizations\/{ORGANIZATION_ID}@. This method creates organization-level <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles>. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles@ Note: Wildcard (*) values are
  -- invalid; you must specify a complete project ID or organization ID. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateRoleRequest ->
  IAMOrganizationsRolesCreate
newIAMOrganizationsRolesCreate parent payload =
  IAMOrganizationsRolesCreate
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
    IAMOrganizationsRolesCreate
  where
  type Rs IAMOrganizationsRolesCreate = Role
  type
    Scopes IAMOrganizationsRolesCreate =
      '[CloudPlatform'FullControl]
  requestClient IAMOrganizationsRolesCreate {..} =
    go
      parent
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
              Core.Proxy IAMOrganizationsRolesCreateResource
          )
          Core.mempty
