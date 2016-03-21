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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.update@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateResource

    -- * Creating a Request
    , entitlementsUpdate
    , EntitlementsUpdate

    -- * Request Lenses
    , euEntitlementId
    , euEnterpriseId
    , euPayload
    , euInstall
    , euUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.update@ method which the
-- 'EntitlementsUpdate' request conforms to.
type EntitlementsUpdateResource =
     "androidenterprise" :>
       "v1" :>
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
-- /See:/ 'entitlementsUpdate' smart constructor.
data EntitlementsUpdate = EntitlementsUpdate'
    { _euEntitlementId :: !Text
    , _euEnterpriseId  :: !Text
    , _euPayload       :: !Entitlement
    , _euInstall       :: !(Maybe Bool)
    , _euUserId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euEntitlementId'
--
-- * 'euEnterpriseId'
--
-- * 'euPayload'
--
-- * 'euInstall'
--
-- * 'euUserId'
entitlementsUpdate
    :: Text -- ^ 'euEntitlementId'
    -> Text -- ^ 'euEnterpriseId'
    -> Entitlement -- ^ 'euPayload'
    -> Text -- ^ 'euUserId'
    -> EntitlementsUpdate
entitlementsUpdate pEuEntitlementId_ pEuEnterpriseId_ pEuPayload_ pEuUserId_ =
    EntitlementsUpdate'
    { _euEntitlementId = pEuEntitlementId_
    , _euEnterpriseId = pEuEnterpriseId_
    , _euPayload = pEuPayload_
    , _euInstall = Nothing
    , _euUserId = pEuUserId_
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
euEntitlementId :: Lens' EntitlementsUpdate Text
euEntitlementId
  = lens _euEntitlementId
      (\ s a -> s{_euEntitlementId = a})

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EntitlementsUpdate Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

-- | Multipart request metadata.
euPayload :: Lens' EntitlementsUpdate Entitlement
euPayload
  = lens _euPayload (\ s a -> s{_euPayload = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
euInstall :: Lens' EntitlementsUpdate (Maybe Bool)
euInstall
  = lens _euInstall (\ s a -> s{_euInstall = a})

-- | The ID of the user.
euUserId :: Lens' EntitlementsUpdate Text
euUserId = lens _euUserId (\ s a -> s{_euUserId = a})

instance GoogleRequest EntitlementsUpdate where
        type Rs EntitlementsUpdate = Entitlement
        type Scopes EntitlementsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsUpdate'{..}
          = go _euEnterpriseId _euUserId _euEntitlementId
              _euInstall
              (Just AltJSON)
              _euPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsUpdateResource)
                      mempty
