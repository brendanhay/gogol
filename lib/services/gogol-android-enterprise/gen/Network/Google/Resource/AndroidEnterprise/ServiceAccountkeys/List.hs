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
-- Module      : Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all active credentials for the service account associated with
-- this enterprise. Only the ID and key type are returned. The calling
-- service account must have been retrieved by calling
-- Enterprises.GetServiceAccount and must have been set as the enterprise
-- service account by calling Enterprises.SetAccount.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.serviceaccountkeys.list@.
module Network.Google.Resource.AndroidEnterprise.ServiceAccountkeys.List
    (
    -- * REST Resource
      ServiceAccountkeysListResource

    -- * Creating a Request
    , serviceAccountkeysList
    , ServiceAccountkeysList

    -- * Request Lenses
    , salXgafv
    , salUploadProtocol
    , salEnterpriseId
    , salAccessToken
    , salUploadType
    , salCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.serviceaccountkeys.list@ method which the
-- 'ServiceAccountkeysList' request conforms to.
type ServiceAccountkeysListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccountKeys" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ServiceAccountKeysListResponse

-- | Lists all active credentials for the service account associated with
-- this enterprise. Only the ID and key type are returned. The calling
-- service account must have been retrieved by calling
-- Enterprises.GetServiceAccount and must have been set as the enterprise
-- service account by calling Enterprises.SetAccount.
--
-- /See:/ 'serviceAccountkeysList' smart constructor.
data ServiceAccountkeysList =
  ServiceAccountkeysList'
    { _salXgafv :: !(Maybe Xgafv)
    , _salUploadProtocol :: !(Maybe Text)
    , _salEnterpriseId :: !Text
    , _salAccessToken :: !(Maybe Text)
    , _salUploadType :: !(Maybe Text)
    , _salCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccountkeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salXgafv'
--
-- * 'salUploadProtocol'
--
-- * 'salEnterpriseId'
--
-- * 'salAccessToken'
--
-- * 'salUploadType'
--
-- * 'salCallback'
serviceAccountkeysList
    :: Text -- ^ 'salEnterpriseId'
    -> ServiceAccountkeysList
serviceAccountkeysList pSalEnterpriseId_ =
  ServiceAccountkeysList'
    { _salXgafv = Nothing
    , _salUploadProtocol = Nothing
    , _salEnterpriseId = pSalEnterpriseId_
    , _salAccessToken = Nothing
    , _salUploadType = Nothing
    , _salCallback = Nothing
    }


-- | V1 error format.
salXgafv :: Lens' ServiceAccountkeysList (Maybe Xgafv)
salXgafv = lens _salXgafv (\ s a -> s{_salXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
salUploadProtocol :: Lens' ServiceAccountkeysList (Maybe Text)
salUploadProtocol
  = lens _salUploadProtocol
      (\ s a -> s{_salUploadProtocol = a})

-- | The ID of the enterprise.
salEnterpriseId :: Lens' ServiceAccountkeysList Text
salEnterpriseId
  = lens _salEnterpriseId
      (\ s a -> s{_salEnterpriseId = a})

-- | OAuth access token.
salAccessToken :: Lens' ServiceAccountkeysList (Maybe Text)
salAccessToken
  = lens _salAccessToken
      (\ s a -> s{_salAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
salUploadType :: Lens' ServiceAccountkeysList (Maybe Text)
salUploadType
  = lens _salUploadType
      (\ s a -> s{_salUploadType = a})

-- | JSONP
salCallback :: Lens' ServiceAccountkeysList (Maybe Text)
salCallback
  = lens _salCallback (\ s a -> s{_salCallback = a})

instance GoogleRequest ServiceAccountkeysList where
        type Rs ServiceAccountkeysList =
             ServiceAccountKeysListResponse
        type Scopes ServiceAccountkeysList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ServiceAccountkeysList'{..}
          = go _salEnterpriseId _salXgafv _salUploadProtocol
              _salAccessToken
              _salUploadType
              _salCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ServiceAccountkeysListResource)
                      mempty
