{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Entitlements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.entitlements.list@.
module Network.Google.API.Androidenterprise.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListAPI

    -- * Creating a Request
    , entitlementsList'
    , EntitlementsList'

    -- * Request Lenses
    , elQuotaUser
    , elPrettyPrint
    , elEnterpriseId
    , elUserIp
    , elUserId
    , elKey
    , elOauthToken
    , elFields
    , elAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.entitlements.list which the
-- 'EntitlementsList'' request conforms to.
type EntitlementsListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] EntitlementsListResponse

-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ 'entitlementsList'' smart constructor.
data EntitlementsList' = EntitlementsList'
    { _elQuotaUser    :: !(Maybe Text)
    , _elPrettyPrint  :: !Bool
    , _elEnterpriseId :: !Text
    , _elUserIp       :: !(Maybe Text)
    , _elUserId       :: !Text
    , _elKey          :: !(Maybe Text)
    , _elOauthToken   :: !(Maybe Text)
    , _elFields       :: !(Maybe Text)
    , _elAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elQuotaUser'
--
-- * 'elPrettyPrint'
--
-- * 'elEnterpriseId'
--
-- * 'elUserIp'
--
-- * 'elUserId'
--
-- * 'elKey'
--
-- * 'elOauthToken'
--
-- * 'elFields'
--
-- * 'elAlt'
entitlementsList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsList'
entitlementsList' pElEnterpriseId_ pElUserId_ =
    EntitlementsList'
    { _elQuotaUser = Nothing
    , _elPrettyPrint = True
    , _elEnterpriseId = pElEnterpriseId_
    , _elUserIp = Nothing
    , _elUserId = pElUserId_
    , _elKey = Nothing
    , _elOauthToken = Nothing
    , _elFields = Nothing
    , _elAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EntitlementsList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EntitlementsList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | The ID of the enterprise.
elEnterpriseId :: Lens' EntitlementsList' Text
elEnterpriseId
  = lens _elEnterpriseId
      (\ s a -> s{_elEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIp :: Lens' EntitlementsList' (Maybe Text)
elUserIp = lens _elUserIp (\ s a -> s{_elUserIp = a})

-- | The ID of the user.
elUserId :: Lens' EntitlementsList' Text
elUserId = lens _elUserId (\ s a -> s{_elUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EntitlementsList' (Maybe Text)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | OAuth 2.0 token for the current user.
elOauthToken :: Lens' EntitlementsList' (Maybe Text)
elOauthToken
  = lens _elOauthToken (\ s a -> s{_elOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EntitlementsList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

-- | Data format for the response.
elAlt :: Lens' EntitlementsList' Alt
elAlt = lens _elAlt (\ s a -> s{_elAlt = a})

instance GoogleRequest EntitlementsList' where
        type Rs EntitlementsList' = EntitlementsListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsList'{..}
          = go _elQuotaUser (Just _elPrettyPrint)
              _elEnterpriseId
              _elUserIp
              _elUserId
              _elKey
              _elOauthToken
              _elFields
              (Just _elAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsListAPI)
                      r
                      u
