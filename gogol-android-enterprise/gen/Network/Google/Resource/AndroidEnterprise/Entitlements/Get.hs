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
-- | Retrieves details of an entitlement.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsGet@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Get
    (
    -- * REST Resource
      EntitlementsGetResource

    -- * Creating a Request
    , entitlementsGet'
    , EntitlementsGet'

    -- * Request Lenses
    , eEntitlementId
    , eEnterpriseId
    , eUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsGet@ method which the
-- 'EntitlementsGet'' request conforms to.
type EntitlementsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet'' smart constructor.
data EntitlementsGet' = EntitlementsGet'
    { _eEntitlementId :: !Text
    , _eEnterpriseId  :: !Text
    , _eUserId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eEntitlementId'
--
-- * 'eEnterpriseId'
--
-- * 'eUserId'
entitlementsGet'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsGet'
entitlementsGet' pEEntitlementId_ pEEnterpriseId_ pEUserId_ =
    EntitlementsGet'
    { _eEntitlementId = pEEntitlementId_
    , _eEnterpriseId = pEEnterpriseId_
    , _eUserId = pEUserId_
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
eEntitlementId :: Lens' EntitlementsGet' Text
eEntitlementId
  = lens _eEntitlementId
      (\ s a -> s{_eEntitlementId = a})

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EntitlementsGet' Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

-- | The ID of the user.
eUserId :: Lens' EntitlementsGet' Text
eUserId = lens _eUserId (\ s a -> s{_eUserId = a})

instance GoogleRequest EntitlementsGet' where
        type Rs EntitlementsGet' = Entitlement
        requestClient EntitlementsGet'{..}
          = go _eEnterpriseId _eUserId _eEntitlementId
              (Just AltJSON)
              androidEnterprise
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsGetResource)
                      mempty
