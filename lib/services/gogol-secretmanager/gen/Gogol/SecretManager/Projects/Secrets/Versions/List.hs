{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Projects.Secrets.Versions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists SecretVersions. This call does not return secret data.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.list@.
module Gogol.SecretManager.Projects.Secrets.Versions.List
    (
    -- * Resource
      SecretManagerProjectsSecretsVersionsListResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsVersionsList (..)
    , newSecretManagerProjectsSecretsVersionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.list@ method which the
-- 'SecretManagerProjectsSecretsVersionsList' request conforms to.
type SecretManagerProjectsSecretsVersionsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "versions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListSecretVersionsResponse

-- | Lists SecretVersions. This call does not return secret data.
--
-- /See:/ 'newSecretManagerProjectsSecretsVersionsList' smart constructor.
data SecretManagerProjectsSecretsVersionsList = SecretManagerProjectsSecretsVersionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter string, adhering to the rules in <https://cloud.google.com/secret-manager/docs/filtering List-operation filtering>. List only secret versions matching the filter. If filter is empty, all secret versions are listed.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number of results to return. If the number is greater than 25000, it is capped at 25000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. Pagination token, returned earlier via ListSecretVersionsResponse.next/page/token][].
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Secret associated with the SecretVersions to list, in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsVersionsList' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsVersionsList 
    :: 
                                            Core.Text
       -- ^  Required. The resource name of the Secret associated with the SecretVersions to list, in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@. See 'parent'.
    -> SecretManagerProjectsSecretsVersionsList
newSecretManagerProjectsSecretsVersionsList parent
  = SecretManagerProjectsSecretsVersionsList{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             filter = Core.Nothing, pageSize = Core.Nothing,
                                             pageToken = Core.Nothing, parent = parent,
                                             uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsSecretsVersionsList
         where
        type Rs SecretManagerProjectsSecretsVersionsList =
             ListSecretVersionsResponse
        type Scopes SecretManagerProjectsSecretsVersionsList =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsVersionsList{..}
          = go parent xgafv accessToken callback filter pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsVersionsListResource)
                      Core.mempty

