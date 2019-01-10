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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.GetAndroidDevicePolicyConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated and unused.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.getAndroidDevicePolicyConfig@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.GetAndroidDevicePolicyConfig
    (
    -- * REST Resource
      EnterprisesGetAndroidDevicePolicyConfigResource

    -- * Creating a Request
    , enterprisesGetAndroidDevicePolicyConfig
    , EnterprisesGetAndroidDevicePolicyConfig

    -- * Request Lenses
    , egadpcEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.getAndroidDevicePolicyConfig@ method which the
-- 'EnterprisesGetAndroidDevicePolicyConfig' request conforms to.
type EnterprisesGetAndroidDevicePolicyConfigResource
     =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "androidDevicePolicyConfig" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] AndroidDevicePolicyConfig

-- | Deprecated and unused.
--
-- /See:/ 'enterprisesGetAndroidDevicePolicyConfig' smart constructor.
newtype EnterprisesGetAndroidDevicePolicyConfig = EnterprisesGetAndroidDevicePolicyConfig'
    { _egadpcEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGetAndroidDevicePolicyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egadpcEnterpriseId'
enterprisesGetAndroidDevicePolicyConfig
    :: Text -- ^ 'egadpcEnterpriseId'
    -> EnterprisesGetAndroidDevicePolicyConfig
enterprisesGetAndroidDevicePolicyConfig pEgadpcEnterpriseId_ =
    EnterprisesGetAndroidDevicePolicyConfig'
    { _egadpcEnterpriseId = pEgadpcEnterpriseId_
    }

-- | The ID of the enterprise.
egadpcEnterpriseId :: Lens' EnterprisesGetAndroidDevicePolicyConfig Text
egadpcEnterpriseId
  = lens _egadpcEnterpriseId
      (\ s a -> s{_egadpcEnterpriseId = a})

instance GoogleRequest
         EnterprisesGetAndroidDevicePolicyConfig where
        type Rs EnterprisesGetAndroidDevicePolicyConfig =
             AndroidDevicePolicyConfig
        type Scopes EnterprisesGetAndroidDevicePolicyConfig =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          EnterprisesGetAndroidDevicePolicyConfig'{..}
          = go _egadpcEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           EnterprisesGetAndroidDevicePolicyConfigResource)
                      mempty
