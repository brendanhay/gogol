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
-- Module      : Gogol.IAM.Roles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the definition of a Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.roles.get@.
module Gogol.IAM.Roles.Get
  ( -- * Resource
    IAMRolesGetResource,

    -- ** Constructing a Request
    newIAMRolesGet,
    IAMRolesGet,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.roles.get@ method which the
-- 'IAMRolesGet' request conforms to.
type IAMRolesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Role

-- | Gets the definition of a Role.
--
-- /See:/ 'newIAMRolesGet' smart constructor.
data IAMRolesGet = IAMRolesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/roles roles>, <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects>, or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/roles/get roles.get()>: @roles\/{ROLE_NAME}@. This method returns results from all <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles predefined roles> in Cloud IAM. Example request URL: @https:\/\/iam.googleapis.com\/v1\/roles\/{ROLE_NAME}@ * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/get projects.roles.get()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method returns only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL:
    -- @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/get organizations.roles.get()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method returns only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the organization level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMRolesGet' with the minimum fields required to make a request.
newIAMRolesGet ::
  -- |  The @name@ parameter\'s value depends on the target resource for the request, namely <https://cloud.google.com/iam/reference/rest/v1/roles roles>, <https://cloud.google.com/iam/reference/rest/v1/projects.roles projects>, or <https://cloud.google.com/iam/reference/rest/v1/organizations.roles organizations>. Each resource type\'s @name@ value format is described below: * <https://cloud.google.com/iam/reference/rest/v1/roles/get roles.get()>: @roles\/{ROLE_NAME}@. This method returns results from all <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles predefined roles> in Cloud IAM. Example request URL: @https:\/\/iam.googleapis.com\/v1\/roles\/{ROLE_NAME}@ * <https://cloud.google.com/iam/reference/rest/v1/projects.roles/get projects.roles.get()>: @projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method returns only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the project level. Example request URL:
  -- @https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}@ * <https://cloud.google.com/iam/reference/rest/v1/organizations.roles/get organizations.roles.get()>: @organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@. This method returns only <https://cloud.google.com/iam/docs/understanding-custom-roles custom roles> that have been created at the organization level. Example request URL: @https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}@ Note: Wildcard (*) values are invalid; you must specify a complete project ID or organization ID. See 'name'.
  Core.Text ->
  IAMRolesGet
newIAMRolesGet name =
  IAMRolesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMRolesGet where
  type Rs IAMRolesGet = Role
  type
    Scopes IAMRolesGet =
      '[CloudPlatform'FullControl]
  requestClient IAMRolesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAMRolesGetResource)
          Core.mempty
