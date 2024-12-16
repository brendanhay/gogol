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
-- Module      : Gogol.TagManager.Accounts.Containers.Versions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.get@.
module Gogol.TagManager.Accounts.Containers.Versions.Get
    (
    -- * Resource
      TagManagerAccountsContainersVersionsGetResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersVersionsGet (..)
    , newTagManagerAccountsContainersVersionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.get@ method which the
-- 'TagManagerAccountsContainersVersionsGet' request conforms to.
type TagManagerAccountsContainersVersionsGetResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "path" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "containerVersionId" Core.Text
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ContainerVersion

-- | Gets a Container Version.
--
-- /See:/ 'newTagManagerAccountsContainersVersionsGet' smart constructor.
data TagManagerAccountsContainersVersionsGet = TagManagerAccountsContainersVersionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The GTM ContainerVersion ID. Specify published to retrieve the currently published version.
    , containerVersionId :: (Core.Maybe Core.Text)
      -- | GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id}
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersVersionsGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersVersionsGet 
    ::  Core.Text
       -- ^  GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id} See 'path'.
    -> TagManagerAccountsContainersVersionsGet
newTagManagerAccountsContainersVersionsGet path =
  TagManagerAccountsContainersVersionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , containerVersionId = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersVersionsGet
         where
        type Rs TagManagerAccountsContainersVersionsGet =
             ContainerVersion
        type Scopes TagManagerAccountsContainersVersionsGet =
             '[Tagmanager'Edit'Containers,
               Tagmanager'Edit'Containerversions,
               Tagmanager'Readonly]
        requestClient
          TagManagerAccountsContainersVersionsGet{..}
          = go path xgafv accessToken callback
              containerVersionId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersVersionsGetResource)
                      Core.mempty

