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
-- Module      : Gogol.CloudSearch.Settings.Searchapplications.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.patch@.
module Gogol.CloudSearch.Settings.Searchapplications.Patch
    (
    -- * Resource
      CloudSearchSettingsSearchapplicationsPatchResource

    -- ** Constructing a Request
    , CloudSearchSettingsSearchapplicationsPatch (..)
    , newCloudSearchSettingsSearchapplicationsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.settings.searchapplications.patch@ method which the
-- 'CloudSearchSettingsSearchapplicationsPatch' request conforms to.
type CloudSearchSettingsSearchapplicationsPatchResource
     =
     "v1" Core.:>
       "settings" Core.:>
         Core.Capture "name" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] SearchApplication Core.:>
                           Core.Patch '[Core.JSON] Operation

-- | Updates a search application. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsSearchapplicationsPatch' smart constructor.
data CloudSearchSettingsSearchapplicationsPatch = CloudSearchSettingsSearchapplicationsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the Search Application. Format: searchapplications\/{application_id}.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SearchApplication
      -- | Only applies to <https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.searchapplications/patch settings.searchapplications.patch>. Update mask to control which fields to update. Example field paths: @search_application.name@, @search_application.displayName@. * If @update_mask@ is non-empty, then only the fields specified in the @update_mask@ are updated. * If you specify a field in the @update_mask@, but don\'t specify its value in the @search_application@, then that field is cleared. * If the @update_mask@ is not present or empty or has the value @*@, then all fields are updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsSearchapplicationsPatch' with the minimum fields required to make a request.
newCloudSearchSettingsSearchapplicationsPatch 
    ::  Core.Text
       -- ^  The name of the Search Application. Format: searchapplications\/{application_id}. See 'name'.
    -> SearchApplication
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchSettingsSearchapplicationsPatch
newCloudSearchSettingsSearchapplicationsPatch name payload =
  CloudSearchSettingsSearchapplicationsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchSettingsSearchapplicationsPatch
         where
        type Rs CloudSearchSettingsSearchapplicationsPatch =
             Operation
        type Scopes
               CloudSearchSettingsSearchapplicationsPatch
             =
             '[CloudSearch'FullControl, CloudSearch'Settings,
               CloudSearch'Settings'Query]
        requestClient
          CloudSearchSettingsSearchapplicationsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchSettingsSearchapplicationsPatchResource)
                      Core.mempty

