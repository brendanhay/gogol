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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all search applications.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.list@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.List
    (
    -- * REST Resource
      SettingsSearchApplicationsListResource

    -- * Creating a Request
    , settingsSearchApplicationsList
    , SettingsSearchApplicationsList

    -- * Request Lenses
    , ssalXgafv
    , ssalUploadProtocol
    , ssalAccessToken
    , ssalUploadType
    , ssalDebugOptionsEnableDebugging
    , ssalPageToken
    , ssalPageSize
    , ssalCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.list@ method which the
-- 'SettingsSearchApplicationsList' request conforms to.
type SettingsSearchApplicationsListResource =
     "v1" :>
       "settings" :>
         "searchapplications" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSearchApplicationsResponse

-- | Lists all search applications.
--
-- /See:/ 'settingsSearchApplicationsList' smart constructor.
data SettingsSearchApplicationsList = SettingsSearchApplicationsList'
    { _ssalXgafv                       :: !(Maybe Xgafv)
    , _ssalUploadProtocol              :: !(Maybe Text)
    , _ssalAccessToken                 :: !(Maybe Text)
    , _ssalUploadType                  :: !(Maybe Text)
    , _ssalDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ssalPageToken                   :: !(Maybe Text)
    , _ssalPageSize                    :: !(Maybe (Textual Int32))
    , _ssalCallback                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsSearchApplicationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssalXgafv'
--
-- * 'ssalUploadProtocol'
--
-- * 'ssalAccessToken'
--
-- * 'ssalUploadType'
--
-- * 'ssalDebugOptionsEnableDebugging'
--
-- * 'ssalPageToken'
--
-- * 'ssalPageSize'
--
-- * 'ssalCallback'
settingsSearchApplicationsList
    :: SettingsSearchApplicationsList
settingsSearchApplicationsList =
    SettingsSearchApplicationsList'
    { _ssalXgafv = Nothing
    , _ssalUploadProtocol = Nothing
    , _ssalAccessToken = Nothing
    , _ssalUploadType = Nothing
    , _ssalDebugOptionsEnableDebugging = Nothing
    , _ssalPageToken = Nothing
    , _ssalPageSize = Nothing
    , _ssalCallback = Nothing
    }

-- | V1 error format.
ssalXgafv :: Lens' SettingsSearchApplicationsList (Maybe Xgafv)
ssalXgafv
  = lens _ssalXgafv (\ s a -> s{_ssalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssalUploadProtocol :: Lens' SettingsSearchApplicationsList (Maybe Text)
ssalUploadProtocol
  = lens _ssalUploadProtocol
      (\ s a -> s{_ssalUploadProtocol = a})

-- | OAuth access token.
ssalAccessToken :: Lens' SettingsSearchApplicationsList (Maybe Text)
ssalAccessToken
  = lens _ssalAccessToken
      (\ s a -> s{_ssalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssalUploadType :: Lens' SettingsSearchApplicationsList (Maybe Text)
ssalUploadType
  = lens _ssalUploadType
      (\ s a -> s{_ssalUploadType = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
ssalDebugOptionsEnableDebugging :: Lens' SettingsSearchApplicationsList (Maybe Bool)
ssalDebugOptionsEnableDebugging
  = lens _ssalDebugOptionsEnableDebugging
      (\ s a -> s{_ssalDebugOptionsEnableDebugging = a})

-- | The next_page_token value returned from a previous List request, if any.
-- The default value is 10
ssalPageToken :: Lens' SettingsSearchApplicationsList (Maybe Text)
ssalPageToken
  = lens _ssalPageToken
      (\ s a -> s{_ssalPageToken = a})

-- | The maximum number of items to return.
ssalPageSize :: Lens' SettingsSearchApplicationsList (Maybe Int32)
ssalPageSize
  = lens _ssalPageSize (\ s a -> s{_ssalPageSize = a})
      . mapping _Coerce

-- | JSONP
ssalCallback :: Lens' SettingsSearchApplicationsList (Maybe Text)
ssalCallback
  = lens _ssalCallback (\ s a -> s{_ssalCallback = a})

instance GoogleRequest SettingsSearchApplicationsList
         where
        type Rs SettingsSearchApplicationsList =
             ListSearchApplicationsResponse
        type Scopes SettingsSearchApplicationsList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsList'{..}
          = go _ssalXgafv _ssalUploadProtocol _ssalAccessToken
              _ssalUploadType
              _ssalDebugOptionsEnableDebugging
              _ssalPageToken
              _ssalPageSize
              _ssalCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsListResource)
                      mempty
