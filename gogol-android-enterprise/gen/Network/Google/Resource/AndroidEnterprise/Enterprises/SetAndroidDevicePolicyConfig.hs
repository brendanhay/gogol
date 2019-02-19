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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SetAndroidDevicePolicyConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated and unused.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.setAndroidDevicePolicyConfig@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAndroidDevicePolicyConfig
    (
    -- * REST Resource
      EnterprisesSetAndroidDevicePolicyConfigResource

    -- * Creating a Request
    , enterprisesSetAndroidDevicePolicyConfig
    , EnterprisesSetAndroidDevicePolicyConfig

    -- * Request Lenses
    , esadpcEnterpriseId
    , esadpcPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.setAndroidDevicePolicyConfig@ method which the
-- 'EnterprisesSetAndroidDevicePolicyConfig' request conforms to.
type EnterprisesSetAndroidDevicePolicyConfigResource
     =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "androidDevicePolicyConfig" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] AndroidDevicePolicyConfig :>
                   Put '[JSON] AndroidDevicePolicyConfig

-- | Deprecated and unused.
--
-- /See:/ 'enterprisesSetAndroidDevicePolicyConfig' smart constructor.
data EnterprisesSetAndroidDevicePolicyConfig =
  EnterprisesSetAndroidDevicePolicyConfig'
    { _esadpcEnterpriseId :: !Text
    , _esadpcPayload      :: !AndroidDevicePolicyConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesSetAndroidDevicePolicyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esadpcEnterpriseId'
--
-- * 'esadpcPayload'
enterprisesSetAndroidDevicePolicyConfig
    :: Text -- ^ 'esadpcEnterpriseId'
    -> AndroidDevicePolicyConfig -- ^ 'esadpcPayload'
    -> EnterprisesSetAndroidDevicePolicyConfig
enterprisesSetAndroidDevicePolicyConfig pEsadpcEnterpriseId_ pEsadpcPayload_ =
  EnterprisesSetAndroidDevicePolicyConfig'
    { _esadpcEnterpriseId = pEsadpcEnterpriseId_
    , _esadpcPayload = pEsadpcPayload_
    }

-- | The ID of the enterprise.
esadpcEnterpriseId :: Lens' EnterprisesSetAndroidDevicePolicyConfig Text
esadpcEnterpriseId
  = lens _esadpcEnterpriseId
      (\ s a -> s{_esadpcEnterpriseId = a})

-- | Multipart request metadata.
esadpcPayload :: Lens' EnterprisesSetAndroidDevicePolicyConfig AndroidDevicePolicyConfig
esadpcPayload
  = lens _esadpcPayload
      (\ s a -> s{_esadpcPayload = a})

instance GoogleRequest
           EnterprisesSetAndroidDevicePolicyConfig
         where
        type Rs EnterprisesSetAndroidDevicePolicyConfig =
             AndroidDevicePolicyConfig
        type Scopes EnterprisesSetAndroidDevicePolicyConfig =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          EnterprisesSetAndroidDevicePolicyConfig'{..}
          = go _esadpcEnterpriseId (Just AltJSON)
              _esadpcPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           EnterprisesSetAndroidDevicePolicyConfigResource)
                      mempty
