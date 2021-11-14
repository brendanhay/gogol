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
-- Module      : Network.Google.Resource.CloudSearch.Settings.SearchApplications.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a search application. **Note:** This API requires an admin
-- account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.searchapplications.create@.
module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Create
    (
    -- * REST Resource
      SettingsSearchApplicationsCreateResource

    -- * Creating a Request
    , settingsSearchApplicationsCreate
    , SettingsSearchApplicationsCreate

    -- * Request Lenses
    , ssacXgafv
    , ssacUploadProtocol
    , ssacAccessToken
    , ssacUploadType
    , ssacPayload
    , ssacCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.searchapplications.create@ method which the
-- 'SettingsSearchApplicationsCreate' request conforms to.
type SettingsSearchApplicationsCreateResource =
     "v1" :>
       "settings" :>
         "searchapplications" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchApplication :>
                         Post '[JSON] Operation

-- | Creates a search application. **Note:** This API requires an admin
-- account to execute.
--
-- /See:/ 'settingsSearchApplicationsCreate' smart constructor.
data SettingsSearchApplicationsCreate =
  SettingsSearchApplicationsCreate'
    { _ssacXgafv :: !(Maybe Xgafv)
    , _ssacUploadProtocol :: !(Maybe Text)
    , _ssacAccessToken :: !(Maybe Text)
    , _ssacUploadType :: !(Maybe Text)
    , _ssacPayload :: !SearchApplication
    , _ssacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsSearchApplicationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssacXgafv'
--
-- * 'ssacUploadProtocol'
--
-- * 'ssacAccessToken'
--
-- * 'ssacUploadType'
--
-- * 'ssacPayload'
--
-- * 'ssacCallback'
settingsSearchApplicationsCreate
    :: SearchApplication -- ^ 'ssacPayload'
    -> SettingsSearchApplicationsCreate
settingsSearchApplicationsCreate pSsacPayload_ =
  SettingsSearchApplicationsCreate'
    { _ssacXgafv = Nothing
    , _ssacUploadProtocol = Nothing
    , _ssacAccessToken = Nothing
    , _ssacUploadType = Nothing
    , _ssacPayload = pSsacPayload_
    , _ssacCallback = Nothing
    }


-- | V1 error format.
ssacXgafv :: Lens' SettingsSearchApplicationsCreate (Maybe Xgafv)
ssacXgafv
  = lens _ssacXgafv (\ s a -> s{_ssacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssacUploadProtocol :: Lens' SettingsSearchApplicationsCreate (Maybe Text)
ssacUploadProtocol
  = lens _ssacUploadProtocol
      (\ s a -> s{_ssacUploadProtocol = a})

-- | OAuth access token.
ssacAccessToken :: Lens' SettingsSearchApplicationsCreate (Maybe Text)
ssacAccessToken
  = lens _ssacAccessToken
      (\ s a -> s{_ssacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssacUploadType :: Lens' SettingsSearchApplicationsCreate (Maybe Text)
ssacUploadType
  = lens _ssacUploadType
      (\ s a -> s{_ssacUploadType = a})

-- | Multipart request metadata.
ssacPayload :: Lens' SettingsSearchApplicationsCreate SearchApplication
ssacPayload
  = lens _ssacPayload (\ s a -> s{_ssacPayload = a})

-- | JSONP
ssacCallback :: Lens' SettingsSearchApplicationsCreate (Maybe Text)
ssacCallback
  = lens _ssacCallback (\ s a -> s{_ssacCallback = a})

instance GoogleRequest
           SettingsSearchApplicationsCreate
         where
        type Rs SettingsSearchApplicationsCreate = Operation
        type Scopes SettingsSearchApplicationsCreate =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.query"]
        requestClient SettingsSearchApplicationsCreate'{..}
          = go _ssacXgafv _ssacUploadProtocol _ssacAccessToken
              _ssacUploadType
              _ssacCallback
              (Just AltJSON)
              _ssacPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SettingsSearchApplicationsCreateResource)
                      mempty
