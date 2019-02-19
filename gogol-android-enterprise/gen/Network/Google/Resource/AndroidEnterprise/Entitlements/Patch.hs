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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.patch@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Patch
    (
    -- * REST Resource
      EntitlementsPatchResource

    -- * Creating a Request
    , entitlementsPatch
    , EntitlementsPatch

    -- * Request Lenses
    , epEntitlementId
    , epEnterpriseId
    , epPayload
    , epInstall
    , epUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.patch@ method which the
-- 'EntitlementsPatch' request conforms to.
type EntitlementsPatchResource =
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
                           Patch '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ 'entitlementsPatch' smart constructor.
data EntitlementsPatch =
  EntitlementsPatch'
    { _epEntitlementId :: !Text
    , _epEnterpriseId  :: !Text
    , _epPayload       :: !Entitlement
    , _epInstall       :: !(Maybe Bool)
    , _epUserId        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EntitlementsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epEntitlementId'
--
-- * 'epEnterpriseId'
--
-- * 'epPayload'
--
-- * 'epInstall'
--
-- * 'epUserId'
entitlementsPatch
    :: Text -- ^ 'epEntitlementId'
    -> Text -- ^ 'epEnterpriseId'
    -> Entitlement -- ^ 'epPayload'
    -> Text -- ^ 'epUserId'
    -> EntitlementsPatch
entitlementsPatch pEpEntitlementId_ pEpEnterpriseId_ pEpPayload_ pEpUserId_ =
  EntitlementsPatch'
    { _epEntitlementId = pEpEntitlementId_
    , _epEnterpriseId = pEpEnterpriseId_
    , _epPayload = pEpPayload_
    , _epInstall = Nothing
    , _epUserId = pEpUserId_
    }

-- | The ID of the entitlement (a product ID), e.g.
-- \"app:com.google.android.gm\".
epEntitlementId :: Lens' EntitlementsPatch Text
epEntitlementId
  = lens _epEntitlementId
      (\ s a -> s{_epEntitlementId = a})

-- | The ID of the enterprise.
epEnterpriseId :: Lens' EntitlementsPatch Text
epEnterpriseId
  = lens _epEnterpriseId
      (\ s a -> s{_epEnterpriseId = a})

-- | Multipart request metadata.
epPayload :: Lens' EntitlementsPatch Entitlement
epPayload
  = lens _epPayload (\ s a -> s{_epPayload = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
epInstall :: Lens' EntitlementsPatch (Maybe Bool)
epInstall
  = lens _epInstall (\ s a -> s{_epInstall = a})

-- | The ID of the user.
epUserId :: Lens' EntitlementsPatch Text
epUserId = lens _epUserId (\ s a -> s{_epUserId = a})

instance GoogleRequest EntitlementsPatch where
        type Rs EntitlementsPatch = Entitlement
        type Scopes EntitlementsPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsPatch'{..}
          = go _epEnterpriseId _epUserId _epEntitlementId
              _epInstall
              (Just AltJSON)
              _epPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsPatchResource)
                      mempty
