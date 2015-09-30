{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Entitlements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an entitlement.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEntitlementsGet@.
module Network.Google.Resource.Androidenterprise.Entitlements.Get
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
    , eUserIp
    , eUserId
    , eKey
    , eOauthToken
    , eFields
    , eAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsGet@ which the
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet'' smart constructor.
data EntitlementsGet' = EntitlementsGet'
    { _eEntitlementId :: !Text
    , _eQuotaUser     :: !(Maybe Text)
    , _ePrettyPrint   :: !Bool
    , _eEnterpriseId  :: !Text
    , _eUserIp        :: !(Maybe Text)
    , _eUserId        :: !Text
    , _eKey           :: !(Maybe Text)
    , _eOauthToken    :: !(Maybe Text)
    , _eFields        :: !(Maybe Text)
    , _eAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'eUserIp'
--
-- * 'eUserId'
--
-- * 'eKey'
--
-- * 'eOauthToken'
--
-- * 'eFields'
--
-- * 'eAlt'
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
    , _eUserIp = Nothing
    , _eUserId = pEUserId_
    , _eKey = Nothing
    , _eOauthToken = Nothing
    , _eFields = Nothing
    , _eAlt = JSON
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
eUserIp :: Lens' EntitlementsGet' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | The ID of the user.
eUserId :: Lens' EntitlementsGet' Text
eUserId = lens _eUserId (\ s a -> s{_eUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EntitlementsGet' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EntitlementsGet' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EntitlementsGet' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EntitlementsGet' Alt
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EntitlementsGet' where
        type Rs EntitlementsGet' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsGet'{..}
          = go _eEntitlementId _eQuotaUser (Just _ePrettyPrint)
              _eEnterpriseId
              _eUserIp
              _eUserId
              _eKey
              _eOauthToken
              _eFields
              (Just _eAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsGetResource)
                      r
                      u
