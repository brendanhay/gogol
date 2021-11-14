{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudSearch.Settings.Datasources.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a datasource. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.create@.
module Network.Google.Resource.CloudSearch.Settings.Datasources.Create
    (
    -- * REST Resource
      SettingsDatasourcesCreateResource

    -- * Creating a Request
    , settingsDatasourcesCreate
    , SettingsDatasourcesCreate

    -- * Request Lenses
    , sdcXgafv
    , sdcUploadProtocol
    , sdcAccessToken
    , sdcUploadType
    , sdcPayload
    , sdcCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.datasources.create@ method which the
-- 'SettingsDatasourcesCreate' request conforms to.
type SettingsDatasourcesCreateResource =
     "v1" :>
       "settings" :>
         "datasources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DataSource :> Post '[JSON] Operation

-- | Creates a datasource. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ 'settingsDatasourcesCreate' smart constructor.
data SettingsDatasourcesCreate =
  SettingsDatasourcesCreate'
    { _sdcXgafv :: !(Maybe Xgafv)
    , _sdcUploadProtocol :: !(Maybe Text)
    , _sdcAccessToken :: !(Maybe Text)
    , _sdcUploadType :: !(Maybe Text)
    , _sdcPayload :: !DataSource
    , _sdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsDatasourcesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcXgafv'
--
-- * 'sdcUploadProtocol'
--
-- * 'sdcAccessToken'
--
-- * 'sdcUploadType'
--
-- * 'sdcPayload'
--
-- * 'sdcCallback'
settingsDatasourcesCreate
    :: DataSource -- ^ 'sdcPayload'
    -> SettingsDatasourcesCreate
settingsDatasourcesCreate pSdcPayload_ =
  SettingsDatasourcesCreate'
    { _sdcXgafv = Nothing
    , _sdcUploadProtocol = Nothing
    , _sdcAccessToken = Nothing
    , _sdcUploadType = Nothing
    , _sdcPayload = pSdcPayload_
    , _sdcCallback = Nothing
    }


-- | V1 error format.
sdcXgafv :: Lens' SettingsDatasourcesCreate (Maybe Xgafv)
sdcXgafv = lens _sdcXgafv (\ s a -> s{_sdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdcUploadProtocol :: Lens' SettingsDatasourcesCreate (Maybe Text)
sdcUploadProtocol
  = lens _sdcUploadProtocol
      (\ s a -> s{_sdcUploadProtocol = a})

-- | OAuth access token.
sdcAccessToken :: Lens' SettingsDatasourcesCreate (Maybe Text)
sdcAccessToken
  = lens _sdcAccessToken
      (\ s a -> s{_sdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdcUploadType :: Lens' SettingsDatasourcesCreate (Maybe Text)
sdcUploadType
  = lens _sdcUploadType
      (\ s a -> s{_sdcUploadType = a})

-- | Multipart request metadata.
sdcPayload :: Lens' SettingsDatasourcesCreate DataSource
sdcPayload
  = lens _sdcPayload (\ s a -> s{_sdcPayload = a})

-- | JSONP
sdcCallback :: Lens' SettingsDatasourcesCreate (Maybe Text)
sdcCallback
  = lens _sdcCallback (\ s a -> s{_sdcCallback = a})

instance GoogleRequest SettingsDatasourcesCreate
         where
        type Rs SettingsDatasourcesCreate = Operation
        type Scopes SettingsDatasourcesCreate =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsDatasourcesCreate'{..}
          = go _sdcXgafv _sdcUploadProtocol _sdcAccessToken
              _sdcUploadType
              _sdcCallback
              (Just AltJSON)
              _sdcPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsDatasourcesCreateResource)
                      mempty
