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
-- Module      : Network.Google.Resource.CloudSearch.Settings.Datasources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a data source.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.datasources.get@.
module Network.Google.Resource.CloudSearch.Settings.Datasources.Get
    (
    -- * REST Resource
      SettingsDatasourcesGetResource

    -- * Creating a Request
    , settingsDatasourcesGet
    , SettingsDatasourcesGet

    -- * Request Lenses
    , sdgXgafv
    , sdgUploadProtocol
    , sdgAccessToken
    , sdgUploadType
    , sdgName
    , sdgDebugOptionsEnableDebugging
    , sdgCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.datasources.get@ method which the
-- 'SettingsDatasourcesGet' request conforms to.
type SettingsDatasourcesGetResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] DataSource

-- | Gets a data source.
--
-- /See:/ 'settingsDatasourcesGet' smart constructor.
data SettingsDatasourcesGet =
  SettingsDatasourcesGet'
    { _sdgXgafv                       :: !(Maybe Xgafv)
    , _sdgUploadProtocol              :: !(Maybe Text)
    , _sdgAccessToken                 :: !(Maybe Text)
    , _sdgUploadType                  :: !(Maybe Text)
    , _sdgName                        :: !Text
    , _sdgDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _sdgCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsDatasourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdgXgafv'
--
-- * 'sdgUploadProtocol'
--
-- * 'sdgAccessToken'
--
-- * 'sdgUploadType'
--
-- * 'sdgName'
--
-- * 'sdgDebugOptionsEnableDebugging'
--
-- * 'sdgCallback'
settingsDatasourcesGet
    :: Text -- ^ 'sdgName'
    -> SettingsDatasourcesGet
settingsDatasourcesGet pSdgName_ =
  SettingsDatasourcesGet'
    { _sdgXgafv = Nothing
    , _sdgUploadProtocol = Nothing
    , _sdgAccessToken = Nothing
    , _sdgUploadType = Nothing
    , _sdgName = pSdgName_
    , _sdgDebugOptionsEnableDebugging = Nothing
    , _sdgCallback = Nothing
    }


-- | V1 error format.
sdgXgafv :: Lens' SettingsDatasourcesGet (Maybe Xgafv)
sdgXgafv = lens _sdgXgafv (\ s a -> s{_sdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdgUploadProtocol :: Lens' SettingsDatasourcesGet (Maybe Text)
sdgUploadProtocol
  = lens _sdgUploadProtocol
      (\ s a -> s{_sdgUploadProtocol = a})

-- | OAuth access token.
sdgAccessToken :: Lens' SettingsDatasourcesGet (Maybe Text)
sdgAccessToken
  = lens _sdgAccessToken
      (\ s a -> s{_sdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdgUploadType :: Lens' SettingsDatasourcesGet (Maybe Text)
sdgUploadType
  = lens _sdgUploadType
      (\ s a -> s{_sdgUploadType = a})

-- | Name of the data source resource. Format: datasources\/{source_id}.
sdgName :: Lens' SettingsDatasourcesGet Text
sdgName = lens _sdgName (\ s a -> s{_sdgName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
sdgDebugOptionsEnableDebugging :: Lens' SettingsDatasourcesGet (Maybe Bool)
sdgDebugOptionsEnableDebugging
  = lens _sdgDebugOptionsEnableDebugging
      (\ s a -> s{_sdgDebugOptionsEnableDebugging = a})

-- | JSONP
sdgCallback :: Lens' SettingsDatasourcesGet (Maybe Text)
sdgCallback
  = lens _sdgCallback (\ s a -> s{_sdgCallback = a})

instance GoogleRequest SettingsDatasourcesGet where
        type Rs SettingsDatasourcesGet = DataSource
        type Scopes SettingsDatasourcesGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsDatasourcesGet'{..}
          = go _sdgName _sdgXgafv _sdgUploadProtocol
              _sdgAccessToken
              _sdgUploadType
              _sdgDebugOptionsEnableDebugging
              _sdgCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsDatasourcesGetResource)
                      mempty
