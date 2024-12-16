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
-- Module      : Gogol.CloudSearch.Settings.Datasources.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.patch@.
module Gogol.CloudSearch.Settings.Datasources.Patch
    (
    -- * Resource
      CloudSearchSettingsDatasourcesPatchResource

    -- ** Constructing a Request
    , CloudSearchSettingsDatasourcesPatch (..)
    , newCloudSearchSettingsDatasourcesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.settings.datasources.patch@ method which the
-- 'CloudSearchSettingsDatasourcesPatch' request conforms to.
type CloudSearchSettingsDatasourcesPatchResource =
     "v1" Core.:>
       "settings" Core.:>
         Core.Capture "name" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "debugOptions.enableDebugging"
                   Core.Bool
                   Core.:>
                   Core.QueryParam "updateMask" Core.FieldMask Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] DataSource Core.:>
                             Core.Patch '[Core.JSON] Operation

-- | Updates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsDatasourcesPatch' smart constructor.
data CloudSearchSettingsDatasourcesPatch = CloudSearchSettingsDatasourcesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    , debugOptionsEnableDebugging :: (Core.Maybe Core.Bool)
      -- | The name of the datasource resource. Format: datasources\/{source_id}. The name is ignored when creating a datasource.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DataSource
      -- | Only applies to <https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.datasources/patch settings.datasources.patch>. Update mask to control which fields to update. Example field paths: @name@, @displayName@. * If @update_mask@ is non-empty, then only the fields specified in the @update_mask@ are updated. * If you specify a field in the @update_mask@, but don\'t specify its value in the source, that field is cleared. * If the @update_mask@ is not present or empty or has the value @*@, then all fields are updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsDatasourcesPatch' with the minimum fields required to make a request.
newCloudSearchSettingsDatasourcesPatch 
    ::  Core.Text
       -- ^  The name of the datasource resource. Format: datasources\/{source_id}. The name is ignored when creating a datasource. See 'name'.
    -> DataSource
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchSettingsDatasourcesPatch
newCloudSearchSettingsDatasourcesPatch name payload =
  CloudSearchSettingsDatasourcesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , debugOptionsEnableDebugging = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchSettingsDatasourcesPatch
         where
        type Rs CloudSearchSettingsDatasourcesPatch =
             Operation
        type Scopes CloudSearchSettingsDatasourcesPatch =
             '[CloudSearch'FullControl, CloudSearch'Settings,
               CloudSearch'Settings'Indexing]
        requestClient CloudSearchSettingsDatasourcesPatch{..}
          = go name xgafv accessToken callback
              debugOptionsEnableDebugging
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchSettingsDatasourcesPatchResource)
                      Core.mempty

