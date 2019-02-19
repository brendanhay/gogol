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
-- Module      : Network.Google.Resource.CloudSearch.Settings.Datasources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists data sources.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.datasources.list@.
module Network.Google.Resource.CloudSearch.Settings.Datasources.List
    (
    -- * REST Resource
      SettingsDatasourcesListResource

    -- * Creating a Request
    , settingsDatasourcesList
    , SettingsDatasourcesList

    -- * Request Lenses
    , sdlXgafv
    , sdlUploadProtocol
    , sdlAccessToken
    , sdlUploadType
    , sdlDebugOptionsEnableDebugging
    , sdlPageToken
    , sdlPageSize
    , sdlCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.datasources.list@ method which the
-- 'SettingsDatasourcesList' request conforms to.
type SettingsDatasourcesListResource =
     "v1" :>
       "settings" :>
         "datasources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDataSourceResponse

-- | Lists data sources.
--
-- /See:/ 'settingsDatasourcesList' smart constructor.
data SettingsDatasourcesList =
  SettingsDatasourcesList'
    { _sdlXgafv                       :: !(Maybe Xgafv)
    , _sdlUploadProtocol              :: !(Maybe Text)
    , _sdlAccessToken                 :: !(Maybe Text)
    , _sdlUploadType                  :: !(Maybe Text)
    , _sdlDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _sdlPageToken                   :: !(Maybe Text)
    , _sdlPageSize                    :: !(Maybe (Textual Int32))
    , _sdlCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SettingsDatasourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdlXgafv'
--
-- * 'sdlUploadProtocol'
--
-- * 'sdlAccessToken'
--
-- * 'sdlUploadType'
--
-- * 'sdlDebugOptionsEnableDebugging'
--
-- * 'sdlPageToken'
--
-- * 'sdlPageSize'
--
-- * 'sdlCallback'
settingsDatasourcesList
    :: SettingsDatasourcesList
settingsDatasourcesList =
  SettingsDatasourcesList'
    { _sdlXgafv = Nothing
    , _sdlUploadProtocol = Nothing
    , _sdlAccessToken = Nothing
    , _sdlUploadType = Nothing
    , _sdlDebugOptionsEnableDebugging = Nothing
    , _sdlPageToken = Nothing
    , _sdlPageSize = Nothing
    , _sdlCallback = Nothing
    }

-- | V1 error format.
sdlXgafv :: Lens' SettingsDatasourcesList (Maybe Xgafv)
sdlXgafv = lens _sdlXgafv (\ s a -> s{_sdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdlUploadProtocol :: Lens' SettingsDatasourcesList (Maybe Text)
sdlUploadProtocol
  = lens _sdlUploadProtocol
      (\ s a -> s{_sdlUploadProtocol = a})

-- | OAuth access token.
sdlAccessToken :: Lens' SettingsDatasourcesList (Maybe Text)
sdlAccessToken
  = lens _sdlAccessToken
      (\ s a -> s{_sdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdlUploadType :: Lens' SettingsDatasourcesList (Maybe Text)
sdlUploadType
  = lens _sdlUploadType
      (\ s a -> s{_sdlUploadType = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
sdlDebugOptionsEnableDebugging :: Lens' SettingsDatasourcesList (Maybe Bool)
sdlDebugOptionsEnableDebugging
  = lens _sdlDebugOptionsEnableDebugging
      (\ s a -> s{_sdlDebugOptionsEnableDebugging = a})

-- | Starting index of the results.
sdlPageToken :: Lens' SettingsDatasourcesList (Maybe Text)
sdlPageToken
  = lens _sdlPageToken (\ s a -> s{_sdlPageToken = a})

-- | Maximum number of data sources to fetch in a request. The max value is
-- 100.
-- The default value is 10
sdlPageSize :: Lens' SettingsDatasourcesList (Maybe Int32)
sdlPageSize
  = lens _sdlPageSize (\ s a -> s{_sdlPageSize = a}) .
      mapping _Coerce

-- | JSONP
sdlCallback :: Lens' SettingsDatasourcesList (Maybe Text)
sdlCallback
  = lens _sdlCallback (\ s a -> s{_sdlCallback = a})

instance GoogleRequest SettingsDatasourcesList where
        type Rs SettingsDatasourcesList =
             ListDataSourceResponse
        type Scopes SettingsDatasourcesList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsDatasourcesList'{..}
          = go _sdlXgafv _sdlUploadProtocol _sdlAccessToken
              _sdlUploadType
              _sdlDebugOptionsEnableDebugging
              _sdlPageToken
              _sdlPageSize
              _sdlCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsDatasourcesListResource)
                      mempty
