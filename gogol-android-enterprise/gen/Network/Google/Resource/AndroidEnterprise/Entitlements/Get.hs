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
    , eQuotaUser
    , ePrettyPrint
    , eEnterpriseId
    , eUserIP
    , eUserId
    , eKey
    , eOAuthToken
    , eFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsGet@ which the
-- 'EntitlementsGet'' request conforms to.
type EntitlementsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet'' smart constructor.
data EntitlementsGet' = EntitlementsGet'
    { _eEntitlementId :: !Text
    , _eQuotaUser     :: !(Maybe Text)
    , _ePrettyPrint   :: !Bool
    , _eEnterpriseId  :: !Text
    , _eUserIP        :: !(Maybe Text)
    , _eUserId        :: !Text
    , _eKey           :: !(Maybe AuthKey)
    , _eOAuthToken    :: !(Maybe OAuthToken)
    , _eFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eEntitlementId'
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'eEnterpriseId'
--
-- * 'eUserIP'
--
-- * 'eUserId'
--
-- * 'eKey'
--
-- * 'eOAuthToken'
--
-- * 'eFields'
entitlementsGet'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsGet'
entitlementsGet' pEEntitlementId_ pEEnterpriseId_ pEUserId_ =
    EntitlementsGet'
    { _eEntitlementId = pEEntitlementId_
    , _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _eEnterpriseId = pEEnterpriseId_
    , _eUserIP = Nothing
    , _eUserId = pEUserId_
    , _eKey = Nothing
    , _eOAuthToken = Nothing
    , _eFields = Nothing
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
eEntitlementId :: Lens' EntitlementsGet' Text
eEntitlementId
  = lens _eEntitlementId
      (\ s a -> s{_eEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EntitlementsGet' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EntitlementsGet' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EntitlementsGet' Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIP :: Lens' EntitlementsGet' (Maybe Text)
eUserIP = lens _eUserIP (\ s a -> s{_eUserIP = a})

-- | The ID of the user.
eUserId :: Lens' EntitlementsGet' Text
eUserId = lens _eUserId (\ s a -> s{_eUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EntitlementsGet' (Maybe AuthKey)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOAuthToken :: Lens' EntitlementsGet' (Maybe OAuthToken)
eOAuthToken
  = lens _eOAuthToken (\ s a -> s{_eOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EntitlementsGet' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

instance GoogleAuth EntitlementsGet' where
        authKey = eKey . _Just
        authToken = eOAuthToken . _Just

instance GoogleRequest EntitlementsGet' where
        type Rs EntitlementsGet' = Entitlement
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EntitlementsGet'{..}
          = go _eEnterpriseId _eUserId _eEntitlementId
              _eQuotaUser
              (Just _ePrettyPrint)
              _eUserIP
              _eFields
              _eKey
              _eOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsGetResource)
                      r
                      u
