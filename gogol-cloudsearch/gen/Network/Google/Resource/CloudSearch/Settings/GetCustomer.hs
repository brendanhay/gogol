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
-- Module      : Network.Google.Resource.CloudSearch.Settings.GetCustomer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get customer settings. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.getCustomer@.
module Network.Google.Resource.CloudSearch.Settings.GetCustomer
    (
    -- * REST Resource
      SettingsGetCustomerResource

    -- * Creating a Request
    , settingsGetCustomer
    , SettingsGetCustomer

    -- * Request Lenses
    , sgcXgafv
    , sgcUploadProtocol
    , sgcAccessToken
    , sgcUploadType
    , sgcCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.getCustomer@ method which the
-- 'SettingsGetCustomer' request conforms to.
type SettingsGetCustomerResource =
     "v1" :>
       "settings" :>
         "customer" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CustomerSettings

-- | Get customer settings. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ 'settingsGetCustomer' smart constructor.
data SettingsGetCustomer =
  SettingsGetCustomer'
    { _sgcXgafv :: !(Maybe Xgafv)
    , _sgcUploadProtocol :: !(Maybe Text)
    , _sgcAccessToken :: !(Maybe Text)
    , _sgcUploadType :: !(Maybe Text)
    , _sgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsGetCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgcXgafv'
--
-- * 'sgcUploadProtocol'
--
-- * 'sgcAccessToken'
--
-- * 'sgcUploadType'
--
-- * 'sgcCallback'
settingsGetCustomer
    :: SettingsGetCustomer
settingsGetCustomer =
  SettingsGetCustomer'
    { _sgcXgafv = Nothing
    , _sgcUploadProtocol = Nothing
    , _sgcAccessToken = Nothing
    , _sgcUploadType = Nothing
    , _sgcCallback = Nothing
    }


-- | V1 error format.
sgcXgafv :: Lens' SettingsGetCustomer (Maybe Xgafv)
sgcXgafv = lens _sgcXgafv (\ s a -> s{_sgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgcUploadProtocol :: Lens' SettingsGetCustomer (Maybe Text)
sgcUploadProtocol
  = lens _sgcUploadProtocol
      (\ s a -> s{_sgcUploadProtocol = a})

-- | OAuth access token.
sgcAccessToken :: Lens' SettingsGetCustomer (Maybe Text)
sgcAccessToken
  = lens _sgcAccessToken
      (\ s a -> s{_sgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgcUploadType :: Lens' SettingsGetCustomer (Maybe Text)
sgcUploadType
  = lens _sgcUploadType
      (\ s a -> s{_sgcUploadType = a})

-- | JSONP
sgcCallback :: Lens' SettingsGetCustomer (Maybe Text)
sgcCallback
  = lens _sgcCallback (\ s a -> s{_sgcCallback = a})

instance GoogleRequest SettingsGetCustomer where
        type Rs SettingsGetCustomer = CustomerSettings
        type Scopes SettingsGetCustomer =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsGetCustomer'{..}
          = go _sgcXgafv _sgcUploadProtocol _sgcAccessToken
              _sgcUploadType
              _sgcCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsGetCustomerResource)
                      mempty
