{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Entitlements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEntitlementsList@.
module Androidenterprise.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListAPI

    -- * Creating a Request
    , entitlementsList
    , EntitlementsList

    -- * Request Lenses
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

-- | A resource alias for @AndroidenterpriseEntitlementsList@ which the
-- 'EntitlementsList' request conforms to.
type EntitlementsListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Get '[JSON] EntitlementsListResponse

-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ 'entitlementsList' smart constructor.
data EntitlementsList = EntitlementsList
    { _eQuotaUser    :: !(Maybe Text)
    , _ePrettyPrint  :: !Bool
    , _eEnterpriseId :: !Text
    , _eUserIp       :: !(Maybe Text)
    , _eUserId       :: !Text
    , _eKey          :: !(Maybe Text)
    , _eOauthToken   :: !(Maybe Text)
    , _eFields       :: !(Maybe Text)
    , _eAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
entitlementsList
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsList
entitlementsList pEEnterpriseId_ pEUserId_ =
    EntitlementsList
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _eEnterpriseId = pEEnterpriseId_
    , _eUserIp = Nothing
    , _eUserId = pEUserId_
    , _eKey = Nothing
    , _eOauthToken = Nothing
    , _eFields = Nothing
    , _eAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EntitlementsList' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EntitlementsList' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EntitlementsList' Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EntitlementsList' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | The ID of the user.
eUserId :: Lens' EntitlementsList' Text
eUserId = lens _eUserId (\ s a -> s{_eUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EntitlementsList' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EntitlementsList' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EntitlementsList' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EntitlementsList' Text
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EntitlementsList' where
        type Rs EntitlementsList' = EntitlementsListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsList{..}
          = go _eQuotaUser _ePrettyPrint _eEnterpriseId
              _eUserIp
              _eUserId
              _eKey
              _eOauthToken
              _eFields
              _eAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsListAPI)
                      r
                      u
