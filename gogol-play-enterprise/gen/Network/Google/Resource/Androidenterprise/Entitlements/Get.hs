{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Androidenterprise.Entitlements.Get
    (
    -- * REST Resource
      EntitlementsGetAPI

    -- * Creating a Request
    , entitlementsGet
    , EntitlementsGet

    -- * Request Lenses
    , entEntitlementId
    , entQuotaUser
    , entPrettyPrint
    , entEnterpriseId
    , entUserIp
    , entUserId
    , entKey
    , entOauthToken
    , entFields
    , entAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsGet@ which the
-- 'EntitlementsGet' request conforms to.
type EntitlementsGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet' smart constructor.
data EntitlementsGet = EntitlementsGet
    { _entEntitlementId :: !Text
    , _entQuotaUser     :: !(Maybe Text)
    , _entPrettyPrint   :: !Bool
    , _entEnterpriseId  :: !Text
    , _entUserIp        :: !(Maybe Text)
    , _entUserId        :: !Text
    , _entKey           :: !(Maybe Text)
    , _entOauthToken    :: !(Maybe Text)
    , _entFields        :: !(Maybe Text)
    , _entAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entEntitlementId'
--
-- * 'entQuotaUser'
--
-- * 'entPrettyPrint'
--
-- * 'entEnterpriseId'
--
-- * 'entUserIp'
--
-- * 'entUserId'
--
-- * 'entKey'
--
-- * 'entOauthToken'
--
-- * 'entFields'
--
-- * 'entAlt'
entitlementsGet
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsGet
entitlementsGet pEntEntitlementId_ pEntEnterpriseId_ pEntUserId_ =
    EntitlementsGet
    { _entEntitlementId = pEntEntitlementId_
    , _entQuotaUser = Nothing
    , _entPrettyPrint = True
    , _entEnterpriseId = pEntEnterpriseId_
    , _entUserIp = Nothing
    , _entUserId = pEntUserId_
    , _entKey = Nothing
    , _entOauthToken = Nothing
    , _entFields = Nothing
    , _entAlt = "json"
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
entEntitlementId :: Lens' EntitlementsGet' Text
entEntitlementId
  = lens _entEntitlementId
      (\ s a -> s{_entEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
entQuotaUser :: Lens' EntitlementsGet' (Maybe Text)
entQuotaUser
  = lens _entQuotaUser (\ s a -> s{_entQuotaUser = a})

-- | Returns response with indentations and line breaks.
entPrettyPrint :: Lens' EntitlementsGet' Bool
entPrettyPrint
  = lens _entPrettyPrint
      (\ s a -> s{_entPrettyPrint = a})

-- | The ID of the enterprise.
entEnterpriseId :: Lens' EntitlementsGet' Text
entEnterpriseId
  = lens _entEnterpriseId
      (\ s a -> s{_entEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
entUserIp :: Lens' EntitlementsGet' (Maybe Text)
entUserIp
  = lens _entUserIp (\ s a -> s{_entUserIp = a})

-- | The ID of the user.
entUserId :: Lens' EntitlementsGet' Text
entUserId
  = lens _entUserId (\ s a -> s{_entUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
entKey :: Lens' EntitlementsGet' (Maybe Text)
entKey = lens _entKey (\ s a -> s{_entKey = a})

-- | OAuth 2.0 token for the current user.
entOauthToken :: Lens' EntitlementsGet' (Maybe Text)
entOauthToken
  = lens _entOauthToken
      (\ s a -> s{_entOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
entFields :: Lens' EntitlementsGet' (Maybe Text)
entFields
  = lens _entFields (\ s a -> s{_entFields = a})

-- | Data format for the response.
entAlt :: Lens' EntitlementsGet' Text
entAlt = lens _entAlt (\ s a -> s{_entAlt = a})

instance GoogleRequest EntitlementsGet' where
        type Rs EntitlementsGet' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsGet{..}
          = go _entEntitlementId _entQuotaUser _entPrettyPrint
              _entEnterpriseId
              _entUserIp
              _entUserId
              _entKey
              _entOauthToken
              _entFields
              _entAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EntitlementsGetAPI)
                      r
                      u
