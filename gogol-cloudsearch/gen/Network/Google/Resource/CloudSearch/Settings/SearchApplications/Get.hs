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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified search application.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.get@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Get
    (
    -- * REST Resource
      SettingsSearchApplicationsGetResource

    -- * Creating a Request
    , settingsSearchApplicationsGet
    , SettingsSearchApplicationsGet

    -- * Request Lenses
    , ssagXgafv
    , ssagUploadProtocol
    , ssagAccessToken
    , ssagUploadType
    , ssagName
    , ssagDebugOptionsEnableDebugging
    , ssagCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.get@ method which the
-- 'SettingsSearchApplicationsGet' request conforms to.
type SettingsSearchApplicationsGetResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SearchApplication

-- | Gets the specified search application.
--
-- /See:/ 'settingsSearchApplicationsGet' smart constructor.
data SettingsSearchApplicationsGet = SettingsSearchApplicationsGet'
    { _ssagXgafv                       :: !(Maybe Xgafv)
    , _ssagUploadProtocol              :: !(Maybe Text)
    , _ssagAccessToken                 :: !(Maybe Text)
    , _ssagUploadType                  :: !(Maybe Text)
    , _ssagName                        :: !Text
    , _ssagDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ssagCallback                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsSearchApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssagXgafv'
--
-- * 'ssagUploadProtocol'
--
-- * 'ssagAccessToken'
--
-- * 'ssagUploadType'
--
-- * 'ssagName'
--
-- * 'ssagDebugOptionsEnableDebugging'
--
-- * 'ssagCallback'
settingsSearchApplicationsGet
    :: Text -- ^ 'ssagName'
    -> SettingsSearchApplicationsGet
settingsSearchApplicationsGet pSsagName_ =
    SettingsSearchApplicationsGet'
    { _ssagXgafv = Nothing
    , _ssagUploadProtocol = Nothing
    , _ssagAccessToken = Nothing
    , _ssagUploadType = Nothing
    , _ssagName = pSsagName_
    , _ssagDebugOptionsEnableDebugging = Nothing
    , _ssagCallback = Nothing
    }

-- | V1 error format.
ssagXgafv :: Lens' SettingsSearchApplicationsGet (Maybe Xgafv)
ssagXgafv
  = lens _ssagXgafv (\ s a -> s{_ssagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssagUploadProtocol :: Lens' SettingsSearchApplicationsGet (Maybe Text)
ssagUploadProtocol
  = lens _ssagUploadProtocol
      (\ s a -> s{_ssagUploadProtocol = a})

-- | OAuth access token.
ssagAccessToken :: Lens' SettingsSearchApplicationsGet (Maybe Text)
ssagAccessToken
  = lens _ssagAccessToken
      (\ s a -> s{_ssagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssagUploadType :: Lens' SettingsSearchApplicationsGet (Maybe Text)
ssagUploadType
  = lens _ssagUploadType
      (\ s a -> s{_ssagUploadType = a})

-- | Name of the search application.
-- Format: applications\/{application_id}.
ssagName :: Lens' SettingsSearchApplicationsGet Text
ssagName = lens _ssagName (\ s a -> s{_ssagName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
ssagDebugOptionsEnableDebugging :: Lens' SettingsSearchApplicationsGet (Maybe Bool)
ssagDebugOptionsEnableDebugging
  = lens _ssagDebugOptionsEnableDebugging
      (\ s a -> s{_ssagDebugOptionsEnableDebugging = a})

-- | JSONP
ssagCallback :: Lens' SettingsSearchApplicationsGet (Maybe Text)
ssagCallback
  = lens _ssagCallback (\ s a -> s{_ssagCallback = a})

instance GoogleRequest SettingsSearchApplicationsGet
         where
        type Rs SettingsSearchApplicationsGet =
             SearchApplication
        type Scopes SettingsSearchApplicationsGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsGet'{..}
          = go _ssagName _ssagXgafv _ssagUploadProtocol
              _ssagAccessToken
              _ssagUploadType
              _ssagDebugOptionsEnableDebugging
              _ssagCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsGetResource)
                      mempty
