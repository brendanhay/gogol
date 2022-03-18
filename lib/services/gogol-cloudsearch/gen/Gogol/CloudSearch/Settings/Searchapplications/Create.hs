{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.create@.
module Gogol.CloudSearch.Settings.Searchapplications.Create
    (
    -- * Resource
      CloudSearchSettingsSearchapplicationsCreateResource

    -- ** Constructing a Request
    , newCloudSearchSettingsSearchapplicationsCreate
    , CloudSearchSettingsSearchapplicationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.settings.searchapplications.create@ method which the
-- 'CloudSearchSettingsSearchapplicationsCreate' request conforms to.
type CloudSearchSettingsSearchapplicationsCreateResource
     =
     "v1" Core.:>
       "settings" Core.:>
         "searchapplications" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] SearchApplication Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Creates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsCreate' smart constructor.
data CloudSearchSettingsSearchapplicationsCreate = CloudSearchSettingsSearchapplicationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SearchApplication
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsCreate' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsCreate 
    ::  SearchApplication
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchSettingsSearchapplicationsCreate
newCloudSearchSettingsSearchapplicationsCreate payload =
  CloudSearchSettingsSearchapplicationsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchSettingsSearchapplicationsCreate
         where
        type Rs CloudSearchSettingsSearchapplicationsCreate =
             Operation
        type Scopes
               CloudSearchSettingsSearchapplicationsCreate
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient
          CloudSearchSettingsSearchapplicationsCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchSettingsSearchapplicationsCreateResource)
                      Core.mempty

