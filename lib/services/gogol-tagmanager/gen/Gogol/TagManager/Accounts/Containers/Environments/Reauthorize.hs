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
-- Module      : Gogol.TagManager.Accounts.Containers.Environments.Reauthorize
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-generates the authorization code for a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.reauthorize@.
module Gogol.TagManager.Accounts.Containers.Environments.Reauthorize
    (
    -- * Resource
      TagManagerAccountsContainersEnvironmentsReauthorizeResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersEnvironmentsReauthorize (..)
    , newTagManagerAccountsContainersEnvironmentsReauthorize
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.reauthorize@ method which the
-- 'TagManagerAccountsContainersEnvironmentsReauthorize' request conforms to.
type TagManagerAccountsContainersEnvironmentsReauthorizeResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.CaptureMode "path" "reauthorize" Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Environment Core.:>
                         Core.Post '[Core.JSON] Environment

-- | Re-generates the authorization code for a GTM Environment.
--
-- /See:/ 'newTagManagerAccountsContainersEnvironmentsReauthorize' smart constructor.
data TagManagerAccountsContainersEnvironmentsReauthorize = TagManagerAccountsContainersEnvironmentsReauthorize
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id}
    , path :: Core.Text
      -- | Multipart request metadata.
    , payload :: Environment
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersEnvironmentsReauthorize' with the minimum fields required to make a request.
newTagManagerAccountsContainersEnvironmentsReauthorize 
    ::  Core.Text
       -- ^  GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id} See 'path'.
    -> Environment
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersEnvironmentsReauthorize
newTagManagerAccountsContainersEnvironmentsReauthorize path payload =
  TagManagerAccountsContainersEnvironmentsReauthorize
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersEnvironmentsReauthorize
         where
        type Rs
               TagManagerAccountsContainersEnvironmentsReauthorize
             = Environment
        type Scopes
               TagManagerAccountsContainersEnvironmentsReauthorize
             = '[Tagmanager'Publish]
        requestClient
          TagManagerAccountsContainersEnvironmentsReauthorize{..}
          = go path xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersEnvironmentsReauthorizeResource)
                      Core.mempty

