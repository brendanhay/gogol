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
    , egsaKeyType
    , egsaEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.getServiceAccount@ method which the
-- 'EnterprisesGetServiceAccount' request conforms to.
type EnterprisesGetServiceAccountResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "serviceAccount" :>
               QueryParam "keyType"
                 EnterprisesGetServiceAccountKeyType
                 :>
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
data EnterprisesGetServiceAccount = EnterprisesGetServiceAccount'
    { _egsaKeyType      :: !(Maybe EnterprisesGetServiceAccountKeyType)
    , _egsaEnterpriseId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGetServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egsaKeyType'
--
-- * 'egsaEnterpriseId'
enterprisesGetServiceAccount
    :: Text -- ^ 'egsaEnterpriseId'
    -> EnterprisesGetServiceAccount
enterprisesGetServiceAccount pEgsaEnterpriseId_ =
    EnterprisesGetServiceAccount'
    { _egsaKeyType = Nothing
    , _egsaEnterpriseId = pEgsaEnterpriseId_
    }

-- | The type of credential to return with the service account. Required.
egsaKeyType :: Lens' EnterprisesGetServiceAccount (Maybe EnterprisesGetServiceAccountKeyType)
egsaKeyType
  = lens _egsaKeyType (\ s a -> s{_egsaKeyType = a})

-- | The ID of the enterprise.
egsaEnterpriseId :: Lens' EnterprisesGetServiceAccount Text
egsaEnterpriseId
  = lens _egsaEnterpriseId
      (\ s a -> s{_egsaEnterpriseId = a})

instance GoogleRequest EnterprisesGetServiceAccount
         where
        type Rs EnterprisesGetServiceAccount = ServiceAccount
        type Scopes EnterprisesGetServiceAccount =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGetServiceAccount'{..}
          = go _egsaEnterpriseId _egsaKeyType (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesGetServiceAccountResource)
                      mempty
