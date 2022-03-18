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
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.Reset
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a search application to default settings. This will return an empty response. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.reset@.
module Gogol.CloudSearch.Settings.Searchapplications.Reset
    (
    -- * Resource
      CloudSearchSettingsSearchapplicationsResetResource

    -- ** Constructing a Request
    , newCloudSearchSettingsSearchapplicationsReset
    , CloudSearchSettingsSearchapplicationsReset
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.settings.searchapplications.reset@ method which the
-- 'CloudSearchSettingsSearchapplicationsReset' request conforms to.
type CloudSearchSettingsSearchapplicationsResetResource
     =
     "v1" Core.:>
       "settings" Core.:>
         Core.CaptureMode "name" "reset" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         ResetSearchApplicationRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Resets a search application to default settings. This will return an empty response. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsReset' smart constructor.
data CloudSearchSettingsSearchapplicationsReset = CloudSearchSettingsSearchapplicationsReset
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the search application to be reset. Format: applications\/{application_id}.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ResetSearchApplicationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsReset' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsReset 
    ::  Core.Text
       -- ^  The name of the search application to be reset. Format: applications\/{application_id}. See 'name'.
    -> ResetSearchApplicationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchSettingsSearchapplicationsReset
newCloudSearchSettingsSearchapplicationsReset name payload =
  CloudSearchSettingsSearchapplicationsReset
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchSettingsSearchapplicationsReset
         where
        type Rs CloudSearchSettingsSearchapplicationsReset =
             Operation
        type Scopes
               CloudSearchSettingsSearchapplicationsReset
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient
          CloudSearchSettingsSearchapplicationsReset{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchSettingsSearchapplicationsResetResource)
                      Core.mempty

