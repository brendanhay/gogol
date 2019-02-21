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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.Reset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a search application to default settings. This will return an
-- empty response.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.reset@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Reset
    (
    -- * REST Resource
      SettingsSearchApplicationsResetResource

    -- * Creating a Request
    , settingsSearchApplicationsReset
    , SettingsSearchApplicationsReset

    -- * Request Lenses
    , ssarXgafv
    , ssarUploadProtocol
    , ssarAccessToken
    , ssarUploadType
    , ssarPayload
    , ssarName
    , ssarCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.reset@ method which the
-- 'SettingsSearchApplicationsReset' request conforms to.
type SettingsSearchApplicationsResetResource =
     "v1" :>
       "settings" :>
         CaptureMode "name" "reset" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ResetSearchApplicationRequest :>
                         Post '[JSON] Operation

-- | Resets a search application to default settings. This will return an
-- empty response.
--
-- /See:/ 'settingsSearchApplicationsReset' smart constructor.
data SettingsSearchApplicationsReset =
  SettingsSearchApplicationsReset'
    { _ssarXgafv          :: !(Maybe Xgafv)
    , _ssarUploadProtocol :: !(Maybe Text)
    , _ssarAccessToken    :: !(Maybe Text)
    , _ssarUploadType     :: !(Maybe Text)
    , _ssarPayload        :: !ResetSearchApplicationRequest
    , _ssarName           :: !Text
    , _ssarCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsSearchApplicationsReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssarXgafv'
--
-- * 'ssarUploadProtocol'
--
-- * 'ssarAccessToken'
--
-- * 'ssarUploadType'
--
-- * 'ssarPayload'
--
-- * 'ssarName'
--
-- * 'ssarCallback'
settingsSearchApplicationsReset
    :: ResetSearchApplicationRequest -- ^ 'ssarPayload'
    -> Text -- ^ 'ssarName'
    -> SettingsSearchApplicationsReset
settingsSearchApplicationsReset pSsarPayload_ pSsarName_ =
  SettingsSearchApplicationsReset'
    { _ssarXgafv = Nothing
    , _ssarUploadProtocol = Nothing
    , _ssarAccessToken = Nothing
    , _ssarUploadType = Nothing
    , _ssarPayload = pSsarPayload_
    , _ssarName = pSsarName_
    , _ssarCallback = Nothing
    }


-- | V1 error format.
ssarXgafv :: Lens' SettingsSearchApplicationsReset (Maybe Xgafv)
ssarXgafv
  = lens _ssarXgafv (\ s a -> s{_ssarXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssarUploadProtocol :: Lens' SettingsSearchApplicationsReset (Maybe Text)
ssarUploadProtocol
  = lens _ssarUploadProtocol
      (\ s a -> s{_ssarUploadProtocol = a})

-- | OAuth access token.
ssarAccessToken :: Lens' SettingsSearchApplicationsReset (Maybe Text)
ssarAccessToken
  = lens _ssarAccessToken
      (\ s a -> s{_ssarAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssarUploadType :: Lens' SettingsSearchApplicationsReset (Maybe Text)
ssarUploadType
  = lens _ssarUploadType
      (\ s a -> s{_ssarUploadType = a})

-- | Multipart request metadata.
ssarPayload :: Lens' SettingsSearchApplicationsReset ResetSearchApplicationRequest
ssarPayload
  = lens _ssarPayload (\ s a -> s{_ssarPayload = a})

-- | The name of the search application to be reset.
-- Format: applications\/{application_id}.
ssarName :: Lens' SettingsSearchApplicationsReset Text
ssarName = lens _ssarName (\ s a -> s{_ssarName = a})

-- | JSONP
ssarCallback :: Lens' SettingsSearchApplicationsReset (Maybe Text)
ssarCallback
  = lens _ssarCallback (\ s a -> s{_ssarCallback = a})

instance GoogleRequest
           SettingsSearchApplicationsReset
         where
        type Rs SettingsSearchApplicationsReset = Operation
        type Scopes SettingsSearchApplicationsReset =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsReset'{..}
          = go _ssarName _ssarXgafv _ssarUploadProtocol
              _ssarAccessToken
              _ssarUploadType
              _ssarCallback
              (Just AltJSON)
              _ssarPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsResetResource)
                      mempty
