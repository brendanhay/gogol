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
-- Module      : Gogol.CloudSearch.Settings.Datasources.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.create@.
module Gogol.CloudSearch.Settings.Datasources.Create
    (
    -- * Resource
      CloudSearchSettingsDatasourcesCreateResource

    -- ** Constructing a Request
    , CloudSearchSettingsDatasourcesCreate (..)
    , newCloudSearchSettingsDatasourcesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.settings.datasources.create@ method which the
-- 'CloudSearchSettingsDatasourcesCreate' request conforms to.
type CloudSearchSettingsDatasourcesCreateResource =
     "v1" Core.:>
       "settings" Core.:>
         "datasources" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] DataSource Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Creates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsDatasourcesCreate' smart constructor.
data CloudSearchSettingsDatasourcesCreate = CloudSearchSettingsDatasourcesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: DataSource
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsDatasourcesCreate' with the minimum fields required to make a request.
newCloudSearchSettingsDatasourcesCreate 
    ::  DataSource
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchSettingsDatasourcesCreate
newCloudSearchSettingsDatasourcesCreate payload =
  CloudSearchSettingsDatasourcesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchSettingsDatasourcesCreate
         where
        type Rs CloudSearchSettingsDatasourcesCreate =
             Operation
        type Scopes CloudSearchSettingsDatasourcesCreate =
             '[CloudSearch'FullControl, CloudSearch'Settings,
               CloudSearch'Settings'Indexing]
        requestClient
          CloudSearchSettingsDatasourcesCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSearchSettingsDatasourcesCreateResource)
                      Core.mempty

