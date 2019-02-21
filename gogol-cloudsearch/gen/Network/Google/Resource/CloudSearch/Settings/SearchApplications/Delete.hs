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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a search application.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.delete@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Delete
    (
    -- * REST Resource
      SettingsSearchApplicationsDeleteResource

    -- * Creating a Request
    , settingsSearchApplicationsDelete
    , SettingsSearchApplicationsDelete

    -- * Request Lenses
    , ssadXgafv
    , ssadUploadProtocol
    , ssadAccessToken
    , ssadUploadType
    , ssadName
    , ssadDebugOptionsEnableDebugging
    , ssadCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.delete@ method which the
-- 'SettingsSearchApplicationsDelete' request conforms to.
type SettingsSearchApplicationsDeleteResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a search application.
--
-- /See:/ 'settingsSearchApplicationsDelete' smart constructor.
data SettingsSearchApplicationsDelete =
  SettingsSearchApplicationsDelete'
    { _ssadXgafv                       :: !(Maybe Xgafv)
    , _ssadUploadProtocol              :: !(Maybe Text)
    , _ssadAccessToken                 :: !(Maybe Text)
    , _ssadUploadType                  :: !(Maybe Text)
    , _ssadName                        :: !Text
    , _ssadDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ssadCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsSearchApplicationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssadXgafv'
--
-- * 'ssadUploadProtocol'
--
-- * 'ssadAccessToken'
--
-- * 'ssadUploadType'
--
-- * 'ssadName'
--
-- * 'ssadDebugOptionsEnableDebugging'
--
-- * 'ssadCallback'
settingsSearchApplicationsDelete
    :: Text -- ^ 'ssadName'
    -> SettingsSearchApplicationsDelete
settingsSearchApplicationsDelete pSsadName_ =
  SettingsSearchApplicationsDelete'
    { _ssadXgafv = Nothing
    , _ssadUploadProtocol = Nothing
    , _ssadAccessToken = Nothing
    , _ssadUploadType = Nothing
    , _ssadName = pSsadName_
    , _ssadDebugOptionsEnableDebugging = Nothing
    , _ssadCallback = Nothing
    }


-- | V1 error format.
ssadXgafv :: Lens' SettingsSearchApplicationsDelete (Maybe Xgafv)
ssadXgafv
  = lens _ssadXgafv (\ s a -> s{_ssadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssadUploadProtocol :: Lens' SettingsSearchApplicationsDelete (Maybe Text)
ssadUploadProtocol
  = lens _ssadUploadProtocol
      (\ s a -> s{_ssadUploadProtocol = a})

-- | OAuth access token.
ssadAccessToken :: Lens' SettingsSearchApplicationsDelete (Maybe Text)
ssadAccessToken
  = lens _ssadAccessToken
      (\ s a -> s{_ssadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssadUploadType :: Lens' SettingsSearchApplicationsDelete (Maybe Text)
ssadUploadType
  = lens _ssadUploadType
      (\ s a -> s{_ssadUploadType = a})

-- | The name of the search application to be deleted.
-- Format: applications\/{application_id}.
ssadName :: Lens' SettingsSearchApplicationsDelete Text
ssadName = lens _ssadName (\ s a -> s{_ssadName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
ssadDebugOptionsEnableDebugging :: Lens' SettingsSearchApplicationsDelete (Maybe Bool)
ssadDebugOptionsEnableDebugging
  = lens _ssadDebugOptionsEnableDebugging
      (\ s a -> s{_ssadDebugOptionsEnableDebugging = a})

-- | JSONP
ssadCallback :: Lens' SettingsSearchApplicationsDelete (Maybe Text)
ssadCallback
  = lens _ssadCallback (\ s a -> s{_ssadCallback = a})

instance GoogleRequest
           SettingsSearchApplicationsDelete
         where
        type Rs SettingsSearchApplicationsDelete = Operation
        type Scopes SettingsSearchApplicationsDelete =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsDelete'{..}
          = go _ssadName _ssadXgafv _ssadUploadProtocol
              _ssadAccessToken
              _ssadUploadType
              _ssadDebugOptionsEnableDebugging
              _ssadCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsDeleteResource)
                      mempty
