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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an entitlement.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.entitlements.get@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Get
    (
    -- * REST Resource
      EntitlementsGetResource

    -- * Creating a Request
    , entitlementsGet
    , EntitlementsGet

    -- * Request Lenses
    , egEntitlementId
    , egEnterpriseId
    , egUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.get@ method which the
-- 'EntitlementsGet' request conforms to.
type EntitlementsGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet' smart constructor.
data EntitlementsGet = EntitlementsGet
    { _egEntitlementId :: !Text
    , _egEnterpriseId  :: !Text
    , _egUserId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egEntitlementId'
--
-- * 'egEnterpriseId'
--
-- * 'egUserId'
entitlementsGet
    :: Text -- ^ 'egEntitlementId'
    -> Text -- ^ 'egEnterpriseId'
    -> Text -- ^ 'egUserId'
    -> EntitlementsGet
entitlementsGet pEgEntitlementId_ pEgEnterpriseId_ pEgUserId_ =
    EntitlementsGet
    { _egEntitlementId = pEgEntitlementId_
    , _egEnterpriseId = pEgEnterpriseId_
    , _egUserId = pEgUserId_
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
egEntitlementId :: Lens' EntitlementsGet Text
egEntitlementId
  = lens _egEntitlementId
      (\ s a -> s{_egEntitlementId = a})

-- | The ID of the enterprise.
egEnterpriseId :: Lens' EntitlementsGet Text
egEnterpriseId
  = lens _egEnterpriseId
      (\ s a -> s{_egEnterpriseId = a})

-- | The ID of the user.
egUserId :: Lens' EntitlementsGet Text
egUserId = lens _egUserId (\ s a -> s{_egUserId = a})

instance GoogleRequest EntitlementsGet where
        type Rs EntitlementsGet = Entitlement
        requestClient EntitlementsGet{..}
          = go _egEnterpriseId _egUserId _egEntitlementId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsGetResource)
                      mempty
