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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksUpdate@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Update
    (
    -- * REST Resource
      ManagementAccountUserLinksUpdateResource

    -- * Creating a Request
    , managementAccountUserLinksUpdate'
    , ManagementAccountUserLinksUpdate'

    -- * Request Lenses
    , mauluQuotaUser
    , mauluPrettyPrint
    , mauluUserIp
    , mauluAccountId
    , mauluKey
    , mauluLinkId
    , mauluOauthToken
    , mauluFields
    , mauluAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksUpdate@ which the
-- 'ManagementAccountUserLinksUpdate'' request conforms to.
type ManagementAccountUserLinksUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "entityUserLinks" :>
             Capture "linkId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given account.
--
-- /See:/ 'managementAccountUserLinksUpdate'' smart constructor.
data ManagementAccountUserLinksUpdate' = ManagementAccountUserLinksUpdate'
    { _mauluQuotaUser   :: !(Maybe Text)
    , _mauluPrettyPrint :: !Bool
    , _mauluUserIp      :: !(Maybe Text)
    , _mauluAccountId   :: !Text
    , _mauluKey         :: !(Maybe Text)
    , _mauluLinkId      :: !Text
    , _mauluOauthToken  :: !(Maybe Text)
    , _mauluFields      :: !(Maybe Text)
    , _mauluAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauluQuotaUser'
--
-- * 'mauluPrettyPrint'
--
-- * 'mauluUserIp'
--
-- * 'mauluAccountId'
--
-- * 'mauluKey'
--
-- * 'mauluLinkId'
--
-- * 'mauluOauthToken'
--
-- * 'mauluFields'
--
-- * 'mauluAlt'
managementAccountUserLinksUpdate'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementAccountUserLinksUpdate'
managementAccountUserLinksUpdate' pMauluAccountId_ pMauluLinkId_ =
    ManagementAccountUserLinksUpdate'
    { _mauluQuotaUser = Nothing
    , _mauluPrettyPrint = False
    , _mauluUserIp = Nothing
    , _mauluAccountId = pMauluAccountId_
    , _mauluKey = Nothing
    , _mauluLinkId = pMauluLinkId_
    , _mauluOauthToken = Nothing
    , _mauluFields = Nothing
    , _mauluAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mauluQuotaUser :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluQuotaUser
  = lens _mauluQuotaUser
      (\ s a -> s{_mauluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mauluPrettyPrint :: Lens' ManagementAccountUserLinksUpdate' Bool
mauluPrettyPrint
  = lens _mauluPrettyPrint
      (\ s a -> s{_mauluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mauluUserIp :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluUserIp
  = lens _mauluUserIp (\ s a -> s{_mauluUserIp = a})

-- | Account ID to update the account-user link for.
mauluAccountId :: Lens' ManagementAccountUserLinksUpdate' Text
mauluAccountId
  = lens _mauluAccountId
      (\ s a -> s{_mauluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauluKey :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluKey = lens _mauluKey (\ s a -> s{_mauluKey = a})

-- | Link ID to update the account-user link for.
mauluLinkId :: Lens' ManagementAccountUserLinksUpdate' Text
mauluLinkId
  = lens _mauluLinkId (\ s a -> s{_mauluLinkId = a})

-- | OAuth 2.0 token for the current user.
mauluOauthToken :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluOauthToken
  = lens _mauluOauthToken
      (\ s a -> s{_mauluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauluFields :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluFields
  = lens _mauluFields (\ s a -> s{_mauluFields = a})

-- | Data format for the response.
mauluAlt :: Lens' ManagementAccountUserLinksUpdate' Alt
mauluAlt = lens _mauluAlt (\ s a -> s{_mauluAlt = a})

instance GoogleRequest
         ManagementAccountUserLinksUpdate' where
        type Rs ManagementAccountUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksUpdate'{..}
          = go _mauluQuotaUser (Just _mauluPrettyPrint)
              _mauluUserIp
              _mauluAccountId
              _mauluKey
              _mauluLinkId
              _mauluOauthToken
              _mauluFields
              (Just _mauluAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementAccountUserLinksUpdateResource)
                      r
                      u
