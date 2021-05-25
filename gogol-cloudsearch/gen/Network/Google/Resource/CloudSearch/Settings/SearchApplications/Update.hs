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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a search application. **Note:** This API requires an admin
-- account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.update@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Update
    (
    -- * REST Resource
      SettingsSearchApplicationsUpdateResource

    -- * Creating a Request
    , settingsSearchApplicationsUpdate
    , SettingsSearchApplicationsUpdate

    -- * Request Lenses
    , ssauXgafv
    , ssauUploadProtocol
    , ssauAccessToken
    , ssauUploadType
    , ssauPayload
    , ssauName
    , ssauCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.update@ method which the
-- 'SettingsSearchApplicationsUpdate' request conforms to.
type SettingsSearchApplicationsUpdateResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchApplication :>
                         Put '[JSON] Operation

-- | Updates a search application. **Note:** This API requires an admin
-- account to execute.
--
-- /See:/ 'settingsSearchApplicationsUpdate' smart constructor.
data SettingsSearchApplicationsUpdate =
  SettingsSearchApplicationsUpdate'
    { _ssauXgafv :: !(Maybe Xgafv)
    , _ssauUploadProtocol :: !(Maybe Text)
    , _ssauAccessToken :: !(Maybe Text)
    , _ssauUploadType :: !(Maybe Text)
    , _ssauPayload :: !SearchApplication
    , _ssauName :: !Text
    , _ssauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsSearchApplicationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssauXgafv'
--
-- * 'ssauUploadProtocol'
--
-- * 'ssauAccessToken'
--
-- * 'ssauUploadType'
--
-- * 'ssauPayload'
--
-- * 'ssauName'
--
-- * 'ssauCallback'
settingsSearchApplicationsUpdate
    :: SearchApplication -- ^ 'ssauPayload'
    -> Text -- ^ 'ssauName'
    -> SettingsSearchApplicationsUpdate
settingsSearchApplicationsUpdate pSsauPayload_ pSsauName_ =
  SettingsSearchApplicationsUpdate'
    { _ssauXgafv = Nothing
    , _ssauUploadProtocol = Nothing
    , _ssauAccessToken = Nothing
    , _ssauUploadType = Nothing
    , _ssauPayload = pSsauPayload_
    , _ssauName = pSsauName_
    , _ssauCallback = Nothing
    }


-- | V1 error format.
ssauXgafv :: Lens' SettingsSearchApplicationsUpdate (Maybe Xgafv)
ssauXgafv
  = lens _ssauXgafv (\ s a -> s{_ssauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssauUploadProtocol :: Lens' SettingsSearchApplicationsUpdate (Maybe Text)
ssauUploadProtocol
  = lens _ssauUploadProtocol
      (\ s a -> s{_ssauUploadProtocol = a})

-- | OAuth access token.
ssauAccessToken :: Lens' SettingsSearchApplicationsUpdate (Maybe Text)
ssauAccessToken
  = lens _ssauAccessToken
      (\ s a -> s{_ssauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssauUploadType :: Lens' SettingsSearchApplicationsUpdate (Maybe Text)
ssauUploadType
  = lens _ssauUploadType
      (\ s a -> s{_ssauUploadType = a})

-- | Multipart request metadata.
ssauPayload :: Lens' SettingsSearchApplicationsUpdate SearchApplication
ssauPayload
  = lens _ssauPayload (\ s a -> s{_ssauPayload = a})

-- | Name of the Search Application. Format:
-- searchapplications\/{application_id}.
ssauName :: Lens' SettingsSearchApplicationsUpdate Text
ssauName = lens _ssauName (\ s a -> s{_ssauName = a})

-- | JSONP
ssauCallback :: Lens' SettingsSearchApplicationsUpdate (Maybe Text)
ssauCallback
  = lens _ssauCallback (\ s a -> s{_ssauCallback = a})

instance GoogleRequest
           SettingsSearchApplicationsUpdate
         where
        type Rs SettingsSearchApplicationsUpdate = Operation
        type Scopes SettingsSearchApplicationsUpdate =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsUpdate'{..}
          = go _ssauName _ssauXgafv _ssauUploadProtocol
              _ssauAccessToken
              _ssauUploadType
              _ssauCallback
              (Just AltJSON)
              _ssauPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsUpdateResource)
                      mempty
