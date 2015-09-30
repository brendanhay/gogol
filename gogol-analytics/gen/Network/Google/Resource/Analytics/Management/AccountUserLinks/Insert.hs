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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksInsert@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert
    (
    -- * REST Resource
      ManagementAccountUserLinksInsertResource

    -- * Creating a Request
    , managementAccountUserLinksInsert'
    , ManagementAccountUserLinksInsert'

    -- * Request Lenses
    , mauliQuotaUser
    , mauliPrettyPrint
    , mauliUserIp
    , mauliAccountId
    , mauliKey
    , mauliOauthToken
    , mauliFields
    , mauliAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksInsert@ which the
-- 'ManagementAccountUserLinksInsert'' request conforms to.
type ManagementAccountUserLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "entityUserLinks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] EntityUserLink

-- | Adds a new user to the given account.
--
-- /See:/ 'managementAccountUserLinksInsert'' smart constructor.
data ManagementAccountUserLinksInsert' = ManagementAccountUserLinksInsert'
    { _mauliQuotaUser   :: !(Maybe Text)
    , _mauliPrettyPrint :: !Bool
    , _mauliUserIp      :: !(Maybe Text)
    , _mauliAccountId   :: !Text
    , _mauliKey         :: !(Maybe Text)
    , _mauliOauthToken  :: !(Maybe Text)
    , _mauliFields      :: !(Maybe Text)
    , _mauliAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauliQuotaUser'
--
-- * 'mauliPrettyPrint'
--
-- * 'mauliUserIp'
--
-- * 'mauliAccountId'
--
-- * 'mauliKey'
--
-- * 'mauliOauthToken'
--
-- * 'mauliFields'
--
-- * 'mauliAlt'
managementAccountUserLinksInsert'
    :: Text -- ^ 'accountId'
    -> ManagementAccountUserLinksInsert'
managementAccountUserLinksInsert' pMauliAccountId_ =
    ManagementAccountUserLinksInsert'
    { _mauliQuotaUser = Nothing
    , _mauliPrettyPrint = False
    , _mauliUserIp = Nothing
    , _mauliAccountId = pMauliAccountId_
    , _mauliKey = Nothing
    , _mauliOauthToken = Nothing
    , _mauliFields = Nothing
    , _mauliAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mauliQuotaUser :: Lens' ManagementAccountUserLinksInsert' (Maybe Text)
mauliQuotaUser
  = lens _mauliQuotaUser
      (\ s a -> s{_mauliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mauliPrettyPrint :: Lens' ManagementAccountUserLinksInsert' Bool
mauliPrettyPrint
  = lens _mauliPrettyPrint
      (\ s a -> s{_mauliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mauliUserIp :: Lens' ManagementAccountUserLinksInsert' (Maybe Text)
mauliUserIp
  = lens _mauliUserIp (\ s a -> s{_mauliUserIp = a})

-- | Account ID to create the user link for.
mauliAccountId :: Lens' ManagementAccountUserLinksInsert' Text
mauliAccountId
  = lens _mauliAccountId
      (\ s a -> s{_mauliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauliKey :: Lens' ManagementAccountUserLinksInsert' (Maybe Text)
mauliKey = lens _mauliKey (\ s a -> s{_mauliKey = a})

-- | OAuth 2.0 token for the current user.
mauliOauthToken :: Lens' ManagementAccountUserLinksInsert' (Maybe Text)
mauliOauthToken
  = lens _mauliOauthToken
      (\ s a -> s{_mauliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauliFields :: Lens' ManagementAccountUserLinksInsert' (Maybe Text)
mauliFields
  = lens _mauliFields (\ s a -> s{_mauliFields = a})

-- | Data format for the response.
mauliAlt :: Lens' ManagementAccountUserLinksInsert' Alt
mauliAlt = lens _mauliAlt (\ s a -> s{_mauliAlt = a})

instance GoogleRequest
         ManagementAccountUserLinksInsert' where
        type Rs ManagementAccountUserLinksInsert' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksInsert'{..}
          = go _mauliQuotaUser (Just _mauliPrettyPrint)
              _mauliUserIp
              _mauliAccountId
              _mauliKey
              _mauliOauthToken
              _mauliFields
              (Just _mauliAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementAccountUserLinksInsertResource)
                      r
                      u
