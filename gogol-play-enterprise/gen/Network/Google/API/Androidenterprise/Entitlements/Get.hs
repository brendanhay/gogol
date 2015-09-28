{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Entitlements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an entitlement.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.entitlements.get@.
module Network.Google.API.Androidenterprise.Entitlements.Get
    (
    -- * REST Resource
      EntitlementsGetAPI

    -- * Creating a Request
    , entitlementsGet'
    , EntitlementsGet'

    -- * Request Lenses
    , eggEntitlementId
    , eggQuotaUser
    , eggPrettyPrint
    , eggEnterpriseId
    , eggUserIp
    , eggUserId
    , eggKey
    , eggOauthToken
    , eggFields
    , eggAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.entitlements.get which the
-- 'EntitlementsGet'' request conforms to.
type EntitlementsGetAPI =
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
    { _eggEntitlementId :: !Text
    , _eggQuotaUser     :: !(Maybe Text)
    , _eggPrettyPrint   :: !Bool
    , _eggEnterpriseId  :: !Text
    , _eggUserIp        :: !(Maybe Text)
    , _eggUserId        :: !Text
    , _eggKey           :: !(Maybe Text)
    , _eggOauthToken    :: !(Maybe Text)
    , _eggFields        :: !(Maybe Text)
    , _eggAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eggEntitlementId'
--
-- * 'eggQuotaUser'
--
-- * 'eggPrettyPrint'
--
-- * 'eggEnterpriseId'
--
-- * 'eggUserIp'
--
-- * 'eggUserId'
--
-- * 'eggKey'
--
-- * 'eggOauthToken'
--
-- * 'eggFields'
--
-- * 'eggAlt'
entitlementsGet'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsGet'
entitlementsGet' pEggEntitlementId_ pEggEnterpriseId_ pEggUserId_ =
    EntitlementsGet'
    { _eggEntitlementId = pEggEntitlementId_
    , _eggQuotaUser = Nothing
    , _eggPrettyPrint = True
    , _eggEnterpriseId = pEggEnterpriseId_
    , _eggUserIp = Nothing
    , _eggUserId = pEggUserId_
    , _eggKey = Nothing
    , _eggOauthToken = Nothing
    , _eggFields = Nothing
    , _eggAlt = JSON
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
eggEntitlementId :: Lens' EntitlementsGet' Text
eggEntitlementId
  = lens _eggEntitlementId
      (\ s a -> s{_eggEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eggQuotaUser :: Lens' EntitlementsGet' (Maybe Text)
eggQuotaUser
  = lens _eggQuotaUser (\ s a -> s{_eggQuotaUser = a})

-- | Returns response with indentations and line breaks.
eggPrettyPrint :: Lens' EntitlementsGet' Bool
eggPrettyPrint
  = lens _eggPrettyPrint
      (\ s a -> s{_eggPrettyPrint = a})

-- | The ID of the enterprise.
eggEnterpriseId :: Lens' EntitlementsGet' Text
eggEnterpriseId
  = lens _eggEnterpriseId
      (\ s a -> s{_eggEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eggUserIp :: Lens' EntitlementsGet' (Maybe Text)
eggUserIp
  = lens _eggUserIp (\ s a -> s{_eggUserIp = a})

-- | The ID of the user.
eggUserId :: Lens' EntitlementsGet' Text
eggUserId
  = lens _eggUserId (\ s a -> s{_eggUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eggKey :: Lens' EntitlementsGet' (Maybe Text)
eggKey = lens _eggKey (\ s a -> s{_eggKey = a})

-- | OAuth 2.0 token for the current user.
eggOauthToken :: Lens' EntitlementsGet' (Maybe Text)
eggOauthToken
  = lens _eggOauthToken
      (\ s a -> s{_eggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eggFields :: Lens' EntitlementsGet' (Maybe Text)
eggFields
  = lens _eggFields (\ s a -> s{_eggFields = a})

-- | Data format for the response.
eggAlt :: Lens' EntitlementsGet' Alt
eggAlt = lens _eggAlt (\ s a -> s{_eggAlt = a})

instance GoogleRequest EntitlementsGet' where
        type Rs EntitlementsGet' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsGet'{..}
          = go _eggEntitlementId _eggQuotaUser
              (Just _eggPrettyPrint)
              _eggEnterpriseId
              _eggUserIp
              _eggUserId
              _eggKey
              _eggOauthToken
              _eggFields
              (Just _eggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EntitlementsGetAPI)
                      r
                      u
