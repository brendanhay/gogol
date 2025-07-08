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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Secrets.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.list@.
module Gogol.SecretManager.Projects.Locations.Secrets.List
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsListResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsList (..)
    , newSecretManagerProjectsLocationsSecretsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.list@ method which the
-- 'SecretManagerProjectsLocationsSecretsList' request conforms to.
type SecretManagerProjectsLocationsSecretsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "secrets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListSecretsResponse

-- | Lists Secrets.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsList' smart constructor.
data SecretManagerProjectsLocationsSecretsList = SecretManagerProjectsLocationsSecretsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter string, adhering to the rules in <https://cloud.google.com/secret-manager/docs/filtering List-operation filtering>. List only secrets matching the filter. If filter is empty, all secrets are listed.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number of results to return. If the number is greater than 25000, it is capped at 25000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. Pagination token, returned earlier via ListSecretsResponse.next/page/token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the project associated with the Secrets, in the format @projects\/*@ or @projects\/*\/locations\/*@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsList' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsList 
    :: 
                                             Core.Text
       -- ^  Required. The resource name of the project associated with the Secrets, in the format @projects\/*@ or @projects\/*\/locations\/*@ See 'parent'.
    -> SecretManagerProjectsLocationsSecretsList
newSecretManagerProjectsLocationsSecretsList parent
  = SecretManagerProjectsLocationsSecretsList{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              filter = Core.Nothing, pageSize = Core.Nothing,
                                              pageToken = Core.Nothing, parent = parent,
                                              uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsList
         where
        type Rs SecretManagerProjectsLocationsSecretsList =
             ListSecretsResponse
        type Scopes SecretManagerProjectsLocationsSecretsList =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsList{..}
          = go parent xgafv accessToken callback filter pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsSecretsListResource)
                      Core.mempty

