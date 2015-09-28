{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing webProperty-AdWords link. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.patch@.
module Network.Google.API.Analytics.Management.WebPropertyAdWordsLinks.Patch
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksPatchAPI

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksPatch'
    , ManagementWebPropertyAdWordsLinksPatch'

    -- * Request Lenses
    , mwpawlpQuotaUser
    , mwpawlpPrettyPrint
    , mwpawlpWebPropertyId
    , mwpawlpUserIp
    , mwpawlpAccountId
    , mwpawlpKey
    , mwpawlpWebPropertyAdWordsLinkId
    , mwpawlpOauthToken
    , mwpawlpFields
    , mwpawlpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.webPropertyAdWordsLinks.patch which the
-- 'ManagementWebPropertyAdWordsLinksPatch'' request conforms to.
type ManagementWebPropertyAdWordsLinksPatchAPI =
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
                                 Patch '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-AdWords link. This method supports patch
-- semantics.
--
-- /See:/ 'managementWebPropertyAdWordsLinksPatch'' smart constructor.
data ManagementWebPropertyAdWordsLinksPatch' = ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpQuotaUser                :: !(Maybe Text)
    , _mwpawlpPrettyPrint              :: !Bool
    , _mwpawlpWebPropertyId            :: !Text
    , _mwpawlpUserIp                   :: !(Maybe Text)
    , _mwpawlpAccountId                :: !Text
    , _mwpawlpKey                      :: !(Maybe Text)
    , _mwpawlpWebPropertyAdWordsLinkId :: !Text
    , _mwpawlpOauthToken               :: !(Maybe Text)
    , _mwpawlpFields                   :: !(Maybe Text)
    , _mwpawlpAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlpQuotaUser'
--
-- * 'mwpawlpPrettyPrint'
--
-- * 'mwpawlpWebPropertyId'
--
-- * 'mwpawlpUserIp'
--
-- * 'mwpawlpAccountId'
--
-- * 'mwpawlpKey'
--
-- * 'mwpawlpWebPropertyAdWordsLinkId'
--
-- * 'mwpawlpOauthToken'
--
-- * 'mwpawlpFields'
--
-- * 'mwpawlpAlt'
managementWebPropertyAdWordsLinksPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksPatch'
managementWebPropertyAdWordsLinksPatch' pMwpawlpWebPropertyId_ pMwpawlpAccountId_ pMwpawlpWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpQuotaUser = Nothing
    , _mwpawlpPrettyPrint = False
    , _mwpawlpWebPropertyId = pMwpawlpWebPropertyId_
    , _mwpawlpUserIp = Nothing
    , _mwpawlpAccountId = pMwpawlpAccountId_
    , _mwpawlpKey = Nothing
    , _mwpawlpWebPropertyAdWordsLinkId = pMwpawlpWebPropertyAdWordsLinkId_
    , _mwpawlpOauthToken = Nothing
    , _mwpawlpFields = Nothing
    , _mwpawlpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawlpQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpQuotaUser
  = lens _mwpawlpQuotaUser
      (\ s a -> s{_mwpawlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawlpPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksPatch' Bool
mwpawlpPrettyPrint
  = lens _mwpawlpPrettyPrint
      (\ s a -> s{_mwpawlpPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawlpWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpWebPropertyId
  = lens _mwpawlpWebPropertyId
      (\ s a -> s{_mwpawlpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawlpUserIp :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpUserIp
  = lens _mwpawlpUserIp
      (\ s a -> s{_mwpawlpUserIp = a})

-- | ID of the account which the given web property belongs to.
mwpawlpAccountId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpAccountId
  = lens _mwpawlpAccountId
      (\ s a -> s{_mwpawlpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawlpKey :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpKey
  = lens _mwpawlpKey (\ s a -> s{_mwpawlpKey = a})

-- | Web property-AdWords link ID.
mwpawlpWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpWebPropertyAdWordsLinkId
  = lens _mwpawlpWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlpWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawlpOauthToken :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpOauthToken
  = lens _mwpawlpOauthToken
      (\ s a -> s{_mwpawlpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawlpFields :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpFields
  = lens _mwpawlpFields
      (\ s a -> s{_mwpawlpFields = a})

-- | Data format for the response.
mwpawlpAlt :: Lens' ManagementWebPropertyAdWordsLinksPatch' Alt
mwpawlpAlt
  = lens _mwpawlpAlt (\ s a -> s{_mwpawlpAlt = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksPatch' where
        type Rs ManagementWebPropertyAdWordsLinksPatch' =
             EntityAdWordsLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksPatch'{..}
          = go _mwpawlpQuotaUser (Just _mwpawlpPrettyPrint)
              _mwpawlpWebPropertyId
              _mwpawlpUserIp
              _mwpawlpAccountId
              _mwpawlpKey
              _mwpawlpWebPropertyAdWordsLinkId
              _mwpawlpOauthToken
              _mwpawlpFields
              (Just _mwpawlpAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksPatchAPI)
                      r
                      u
