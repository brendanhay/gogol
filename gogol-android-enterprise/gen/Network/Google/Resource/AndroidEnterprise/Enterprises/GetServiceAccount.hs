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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.GetServiceAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a service account and credentials. The service account can be
-- bound to the enterprise by calling setAccount. The service account is
-- unique to this enterprise and EMM, and will be deleted if the enterprise
-- is unbound. The credentials contain private key data and are not stored
-- server-side. This method can only be called after calling
-- Enterprises.Enroll or Enterprises.CompleteSignup, and before
-- Enterprises.SetAccount; at other times it will return an error.
-- Subsequent calls after the first will generate a new, unique set of
-- credentials, and invalidate the previously generated credentials. Once
-- the service account is bound to the enterprise, it can be managed using
-- the serviceAccountKeys resource.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.getServiceAccount@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.GetServiceAccount
    (
    -- * REST Resource
      EnterprisesGetServiceAccountResource

    -- * Creating a Request
    , enterprisesGetServiceAccount
    , EnterprisesGetServiceAccount

    -- * Request Lenses
    , egsaXgafv
    , egsaKeyType
    , egsaUploadProtocol
    , egsaEnterpriseId
    , egsaAccessToken
    , egsaUploadType
    , egsaCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.getServiceAccount@ method which the
-- 'EnterprisesGetServiceAccount' request conforms to.
type EnterprisesGetServiceAccountResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccount" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "keyType"
                   EnterprisesGetServiceAccountKeyType
                   :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ServiceAccount

-- | Returns a service account and credentials. The service account can be
-- bound to the enterprise by calling setAccount. The service account is
-- unique to this enterprise and EMM, and will be deleted if the enterprise
-- is unbound. The credentials contain private key data and are not stored
-- server-side. This method can only be called after calling
-- Enterprises.Enroll or Enterprises.CompleteSignup, and before
-- Enterprises.SetAccount; at other times it will return an error.
-- Subsequent calls after the first will generate a new, unique set of
-- credentials, and invalidate the previously generated credentials. Once
-- the service account is bound to the enterprise, it can be managed using
-- the serviceAccountKeys resource.
--
-- /See:/ 'enterprisesGetServiceAccount' smart constructor.
data EnterprisesGetServiceAccount =
  EnterprisesGetServiceAccount'
    { _egsaXgafv :: !(Maybe Xgafv)
    , _egsaKeyType :: !(Maybe EnterprisesGetServiceAccountKeyType)
    , _egsaUploadProtocol :: !(Maybe Text)
    , _egsaEnterpriseId :: !Text
    , _egsaAccessToken :: !(Maybe Text)
    , _egsaUploadType :: !(Maybe Text)
    , _egsaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesGetServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egsaXgafv'
--
-- * 'egsaKeyType'
--
-- * 'egsaUploadProtocol'
--
-- * 'egsaEnterpriseId'
--
-- * 'egsaAccessToken'
--
-- * 'egsaUploadType'
--
-- * 'egsaCallback'
enterprisesGetServiceAccount
    :: Text -- ^ 'egsaEnterpriseId'
    -> EnterprisesGetServiceAccount
enterprisesGetServiceAccount pEgsaEnterpriseId_ =
  EnterprisesGetServiceAccount'
    { _egsaXgafv = Nothing
    , _egsaKeyType = Nothing
    , _egsaUploadProtocol = Nothing
    , _egsaEnterpriseId = pEgsaEnterpriseId_
    , _egsaAccessToken = Nothing
    , _egsaUploadType = Nothing
    , _egsaCallback = Nothing
    }


-- | V1 error format.
egsaXgafv :: Lens' EnterprisesGetServiceAccount (Maybe Xgafv)
egsaXgafv
  = lens _egsaXgafv (\ s a -> s{_egsaXgafv = a})

-- | The type of credential to return with the service account. Required.
egsaKeyType :: Lens' EnterprisesGetServiceAccount (Maybe EnterprisesGetServiceAccountKeyType)
egsaKeyType
  = lens _egsaKeyType (\ s a -> s{_egsaKeyType = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
egsaUploadProtocol :: Lens' EnterprisesGetServiceAccount (Maybe Text)
egsaUploadProtocol
  = lens _egsaUploadProtocol
      (\ s a -> s{_egsaUploadProtocol = a})

-- | The ID of the enterprise.
egsaEnterpriseId :: Lens' EnterprisesGetServiceAccount Text
egsaEnterpriseId
  = lens _egsaEnterpriseId
      (\ s a -> s{_egsaEnterpriseId = a})

-- | OAuth access token.
egsaAccessToken :: Lens' EnterprisesGetServiceAccount (Maybe Text)
egsaAccessToken
  = lens _egsaAccessToken
      (\ s a -> s{_egsaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
egsaUploadType :: Lens' EnterprisesGetServiceAccount (Maybe Text)
egsaUploadType
  = lens _egsaUploadType
      (\ s a -> s{_egsaUploadType = a})

-- | JSONP
egsaCallback :: Lens' EnterprisesGetServiceAccount (Maybe Text)
egsaCallback
  = lens _egsaCallback (\ s a -> s{_egsaCallback = a})

instance GoogleRequest EnterprisesGetServiceAccount
         where
        type Rs EnterprisesGetServiceAccount = ServiceAccount
        type Scopes EnterprisesGetServiceAccount =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGetServiceAccount'{..}
          = go _egsaEnterpriseId _egsaXgafv _egsaKeyType
              _egsaUploadProtocol
              _egsaAccessToken
              _egsaUploadType
              _egsaCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesGetServiceAccountResource)
                      mempty
