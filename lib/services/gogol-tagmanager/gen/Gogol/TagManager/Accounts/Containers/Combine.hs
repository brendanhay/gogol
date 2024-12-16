{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Accounts.Containers.Combine
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Combines Containers.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.combine@.
module Gogol.TagManager.Accounts.Containers.Combine
    (
    -- * Resource
      TagManagerAccountsContainersCombineResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersCombine (..)
    , newTagManagerAccountsContainersCombine
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.combine@ method which the
-- 'TagManagerAccountsContainersCombine' request conforms to.
type TagManagerAccountsContainersCombineResource =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.CaptureMode "path" "combine" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "allowUserPermissionFeatureUpdate"
                 Core.Bool
                 Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "containerId" Core.Text Core.:>
                     Core.QueryParam "settingSource"
                       AccountsContainersCombineSettingSource
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] Container

-- | Combines Containers.
--
-- /See:/ 'newTagManagerAccountsContainersCombine' smart constructor.
data TagManagerAccountsContainersCombine = TagManagerAccountsContainersCombine
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.
    , allowUserPermissionFeatureUpdate :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | ID of container that will be merged into the current container.
    , containerId :: (Core.Maybe Core.Text)
      -- | GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    , path :: Core.Text
      -- | Specify the source of config setting after combine
    , settingSource :: (Core.Maybe AccountsContainersCombineSettingSource)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersCombine' with the minimum fields required to make a request.
newTagManagerAccountsContainersCombine 
    ::  Core.Text
       -- ^  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'path'.
    -> TagManagerAccountsContainersCombine
newTagManagerAccountsContainersCombine path =
  TagManagerAccountsContainersCombine
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , allowUserPermissionFeatureUpdate = Core.Nothing
    , callback = Core.Nothing
    , containerId = Core.Nothing
    , path = path
    , settingSource = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersCombine
         where
        type Rs TagManagerAccountsContainersCombine =
             Container
        type Scopes TagManagerAccountsContainersCombine =
             '[Tagmanager'Edit'Containers]
        requestClient TagManagerAccountsContainersCombine{..}
          = go path xgafv accessToken
              allowUserPermissionFeatureUpdate
              callback
              containerId
              settingSource
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersCombineResource)
                      Core.mempty

