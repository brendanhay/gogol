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
-- Module      : Network.Google.Resource.CloudSearch.Settings.UpdateCustomer
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update customer settings. **Note:** This API requires an admin account
-- to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.updateCustomer@.
module Network.Google.Resource.CloudSearch.Settings.UpdateCustomer
    (
    -- * REST Resource
      SettingsUpdateCustomerResource

    -- * Creating a Request
    , settingsUpdateCustomer
    , SettingsUpdateCustomer

    -- * Request Lenses
    , sucXgafv
    , sucUploadProtocol
    , sucUpdateMask
    , sucAccessToken
    , sucUploadType
    , sucPayload
    , sucCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.updateCustomer@ method which the
-- 'SettingsUpdateCustomer' request conforms to.
type SettingsUpdateCustomerResource =
     "v1" :>
       "settings" :>
         "customer" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CustomerSettings :>
                           Patch '[JSON] Operation

-- | Update customer settings. **Note:** This API requires an admin account
-- to execute.
--
-- /See:/ 'settingsUpdateCustomer' smart constructor.
data SettingsUpdateCustomer =
  SettingsUpdateCustomer'
    { _sucXgafv :: !(Maybe Xgafv)
    , _sucUploadProtocol :: !(Maybe Text)
    , _sucUpdateMask :: !(Maybe GFieldMask)
    , _sucAccessToken :: !(Maybe Text)
    , _sucUploadType :: !(Maybe Text)
    , _sucPayload :: !CustomerSettings
    , _sucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsUpdateCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sucXgafv'
--
-- * 'sucUploadProtocol'
--
-- * 'sucUpdateMask'
--
-- * 'sucAccessToken'
--
-- * 'sucUploadType'
--
-- * 'sucPayload'
--
-- * 'sucCallback'
settingsUpdateCustomer
    :: CustomerSettings -- ^ 'sucPayload'
    -> SettingsUpdateCustomer
settingsUpdateCustomer pSucPayload_ =
  SettingsUpdateCustomer'
    { _sucXgafv = Nothing
    , _sucUploadProtocol = Nothing
    , _sucUpdateMask = Nothing
    , _sucAccessToken = Nothing
    , _sucUploadType = Nothing
    , _sucPayload = pSucPayload_
    , _sucCallback = Nothing
    }


-- | V1 error format.
sucXgafv :: Lens' SettingsUpdateCustomer (Maybe Xgafv)
sucXgafv = lens _sucXgafv (\ s a -> s{_sucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sucUploadProtocol :: Lens' SettingsUpdateCustomer (Maybe Text)
sucUploadProtocol
  = lens _sucUploadProtocol
      (\ s a -> s{_sucUploadProtocol = a})

-- | Update mask to control which fields get updated. If you specify a field
-- in the update_mask but don\'t specify its value here, that field will be
-- cleared. If the mask is not present or empty, all fields will be
-- updated. Currently supported field paths: vpc_settings and
-- audit_logging_settings
sucUpdateMask :: Lens' SettingsUpdateCustomer (Maybe GFieldMask)
sucUpdateMask
  = lens _sucUpdateMask
      (\ s a -> s{_sucUpdateMask = a})

-- | OAuth access token.
sucAccessToken :: Lens' SettingsUpdateCustomer (Maybe Text)
sucAccessToken
  = lens _sucAccessToken
      (\ s a -> s{_sucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sucUploadType :: Lens' SettingsUpdateCustomer (Maybe Text)
sucUploadType
  = lens _sucUploadType
      (\ s a -> s{_sucUploadType = a})

-- | Multipart request metadata.
sucPayload :: Lens' SettingsUpdateCustomer CustomerSettings
sucPayload
  = lens _sucPayload (\ s a -> s{_sucPayload = a})

-- | JSONP
sucCallback :: Lens' SettingsUpdateCustomer (Maybe Text)
sucCallback
  = lens _sucCallback (\ s a -> s{_sucCallback = a})

instance GoogleRequest SettingsUpdateCustomer where
        type Rs SettingsUpdateCustomer = Operation
        type Scopes SettingsUpdateCustomer =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsUpdateCustomer'{..}
          = go _sucXgafv _sucUploadProtocol _sucUpdateMask
              _sucAccessToken
              _sucUploadType
              _sucCallback
              (Just AltJSON)
              _sucPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsUpdateCustomerResource)
                      mempty
