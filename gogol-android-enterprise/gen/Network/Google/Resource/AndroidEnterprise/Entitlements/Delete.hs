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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.delete@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
    (
    -- * REST Resource
      EntitlementsDeleteResource

    -- * Creating a Request
    , entitlementsDelete
    , EntitlementsDelete

    -- * Request Lenses
    , entEntitlementId
    , entEnterpriseId
    , entUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.delete@ method which the
-- 'EntitlementsDelete' request conforms to.
type EntitlementsDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ 'entitlementsDelete' smart constructor.
data EntitlementsDelete = EntitlementsDelete'
    { _entEntitlementId :: !Text
    , _entEnterpriseId  :: !Text
    , _entUserId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entEntitlementId'
--
-- * 'entEnterpriseId'
--
-- * 'entUserId'
entitlementsDelete
    :: Text -- ^ 'entEntitlementId'
    -> Text -- ^ 'entEnterpriseId'
    -> Text -- ^ 'entUserId'
    -> EntitlementsDelete
entitlementsDelete pEntEntitlementId_ pEntEnterpriseId_ pEntUserId_ =
    EntitlementsDelete'
    { _entEntitlementId = pEntEntitlementId_
    , _entEnterpriseId = pEntEnterpriseId_
    , _entUserId = pEntUserId_
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
entEntitlementId :: Lens' EntitlementsDelete Text
entEntitlementId
  = lens _entEntitlementId
      (\ s a -> s{_entEntitlementId = a})

-- | The ID of the enterprise.
entEnterpriseId :: Lens' EntitlementsDelete Text
entEnterpriseId
  = lens _entEnterpriseId
      (\ s a -> s{_entEnterpriseId = a})

-- | The ID of the user.
entUserId :: Lens' EntitlementsDelete Text
entUserId
  = lens _entUserId (\ s a -> s{_entUserId = a})

instance GoogleRequest EntitlementsDelete where
        type Rs EntitlementsDelete = ()
        type Scopes EntitlementsDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsDelete'{..}
          = go _entEnterpriseId _entUserId _entEntitlementId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsDeleteResource)
                      mempty
