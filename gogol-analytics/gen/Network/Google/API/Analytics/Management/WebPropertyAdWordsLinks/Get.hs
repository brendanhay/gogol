{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a web property-AdWords link to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.get@.
module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Get
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksGetAPI

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksGet'
    , ManagementWebPropertyAdWordsLinksGet'

    -- * Request Lenses
    , mwpawlgQuotaUser
    , mwpawlgPrettyPrint
    , mwpawlgWebPropertyId
    , mwpawlgUserIp
    , mwpawlgAccountId
    , mwpawlgKey
    , mwpawlgWebPropertyAdWordsLinkId
    , mwpawlgOauthToken
    , mwpawlgFields
    , mwpawlgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.webPropertyAdWordsLinks.get which the
-- 'ManagementWebPropertyAdWordsLinksGet'' request conforms to.
type ManagementWebPropertyAdWordsLinksGetAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] EntityAdWordsLink

-- | Returns a web property-AdWords link to which the user has access.
--
-- /See:/ 'managementWebPropertyAdWordsLinksGet'' smart constructor.
data ManagementWebPropertyAdWordsLinksGet' = ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgQuotaUser                :: !(Maybe Text)
    , _mwpawlgPrettyPrint              :: !Bool
    , _mwpawlgWebPropertyId            :: !Text
    , _mwpawlgUserIp                   :: !(Maybe Text)
    , _mwpawlgAccountId                :: !Text
    , _mwpawlgKey                      :: !(Maybe Text)
    , _mwpawlgWebPropertyAdWordsLinkId :: !Text
    , _mwpawlgOauthToken               :: !(Maybe Text)
    , _mwpawlgFields                   :: !(Maybe Text)
    , _mwpawlgAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlgQuotaUser'
--
-- * 'mwpawlgPrettyPrint'
--
-- * 'mwpawlgWebPropertyId'
--
-- * 'mwpawlgUserIp'
--
-- * 'mwpawlgAccountId'
--
-- * 'mwpawlgKey'
--
-- * 'mwpawlgWebPropertyAdWordsLinkId'
--
-- * 'mwpawlgOauthToken'
--
-- * 'mwpawlgFields'
--
-- * 'mwpawlgAlt'
managementWebPropertyAdWordsLinksGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksGet'
managementWebPropertyAdWordsLinksGet' pMwpawlgWebPropertyId_ pMwpawlgAccountId_ pMwpawlgWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgQuotaUser = Nothing
    , _mwpawlgPrettyPrint = False
    , _mwpawlgWebPropertyId = pMwpawlgWebPropertyId_
    , _mwpawlgUserIp = Nothing
    , _mwpawlgAccountId = pMwpawlgAccountId_
    , _mwpawlgKey = Nothing
    , _mwpawlgWebPropertyAdWordsLinkId = pMwpawlgWebPropertyAdWordsLinkId_
    , _mwpawlgOauthToken = Nothing
    , _mwpawlgFields = Nothing
    , _mwpawlgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawlgQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgQuotaUser
  = lens _mwpawlgQuotaUser
      (\ s a -> s{_mwpawlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawlgPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksGet' Bool
mwpawlgPrettyPrint
  = lens _mwpawlgPrettyPrint
      (\ s a -> s{_mwpawlgPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawlgWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyId
  = lens _mwpawlgWebPropertyId
      (\ s a -> s{_mwpawlgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawlgUserIp :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgUserIp
  = lens _mwpawlgUserIp
      (\ s a -> s{_mwpawlgUserIp = a})

-- | ID of the account which the given web property belongs to.
mwpawlgAccountId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgAccountId
  = lens _mwpawlgAccountId
      (\ s a -> s{_mwpawlgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawlgKey :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgKey
  = lens _mwpawlgKey (\ s a -> s{_mwpawlgKey = a})

-- | Web property-AdWords link ID.
mwpawlgWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyAdWordsLinkId
  = lens _mwpawlgWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlgWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawlgOauthToken :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgOauthToken
  = lens _mwpawlgOauthToken
      (\ s a -> s{_mwpawlgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawlgFields :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgFields
  = lens _mwpawlgFields
      (\ s a -> s{_mwpawlgFields = a})

-- | Data format for the response.
mwpawlgAlt :: Lens' ManagementWebPropertyAdWordsLinksGet' Alt
mwpawlgAlt
  = lens _mwpawlgAlt (\ s a -> s{_mwpawlgAlt = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksGet' where
        type Rs ManagementWebPropertyAdWordsLinksGet' =
             EntityAdWordsLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksGet'{..}
          = go _mwpawlgQuotaUser (Just _mwpawlgPrettyPrint)
              _mwpawlgWebPropertyId
              _mwpawlgUserIp
              _mwpawlgAccountId
              _mwpawlgKey
              _mwpawlgWebPropertyAdWordsLinkId
              _mwpawlgOauthToken
              _mwpawlgFields
              (Just _mwpawlgAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksGetAPI)
                      r
                      u
