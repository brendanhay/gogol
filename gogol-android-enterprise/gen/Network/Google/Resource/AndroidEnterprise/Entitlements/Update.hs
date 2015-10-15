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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsUpdate@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateResource

    -- * Creating a Request
    , entitlementsUpdate'
    , EntitlementsUpdate'

    -- * Request Lenses
    , entEntitlementId
    , entEnterpriseId
    , entPayload
    , entInstall
    , entUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsUpdate@ method which the
-- 'EntitlementsUpdate'' request conforms to.
type EntitlementsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "install" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Entitlement :>
                       Put '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'entitlementsUpdate'' smart constructor.
data EntitlementsUpdate' = EntitlementsUpdate'
    { _entEntitlementId :: !Text
    , _entEnterpriseId  :: !Text
    , _entPayload       :: !Entitlement
    , _entInstall       :: !(Maybe Bool)
    , _entUserId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entEntitlementId'
--
-- * 'entEnterpriseId'
--
-- * 'entPayload'
--
-- * 'entInstall'
--
-- * 'entUserId'
entitlementsUpdate'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Entitlement -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> EntitlementsUpdate'
entitlementsUpdate' pEntEntitlementId_ pEntEnterpriseId_ pEntPayload_ pEntUserId_ =
    EntitlementsUpdate'
    { _entEntitlementId = pEntEntitlementId_
    , _entEnterpriseId = pEntEnterpriseId_
    , _entPayload = pEntPayload_
    , _entInstall = Nothing
    , _entUserId = pEntUserId_
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
entEntitlementId :: Lens' EntitlementsUpdate' Text
entEntitlementId
  = lens _entEntitlementId
      (\ s a -> s{_entEntitlementId = a})

-- | The ID of the enterprise.
entEnterpriseId :: Lens' EntitlementsUpdate' Text
entEnterpriseId
  = lens _entEnterpriseId
      (\ s a -> s{_entEnterpriseId = a})

-- | Multipart request metadata.
entPayload :: Lens' EntitlementsUpdate' Entitlement
entPayload
  = lens _entPayload (\ s a -> s{_entPayload = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
entInstall :: Lens' EntitlementsUpdate' (Maybe Bool)
entInstall
  = lens _entInstall (\ s a -> s{_entInstall = a})

-- | The ID of the user.
entUserId :: Lens' EntitlementsUpdate' Text
entUserId
  = lens _entUserId (\ s a -> s{_entUserId = a})

instance GoogleRequest EntitlementsUpdate' where
        type Rs EntitlementsUpdate' = Entitlement
        requestClient EntitlementsUpdate'{..}
          = go _entEnterpriseId _entUserId _entEntitlementId
              _entInstall
              (Just AltJSON)
              _entPayload
              androidEnterprise
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsUpdateResource)
                      mempty
