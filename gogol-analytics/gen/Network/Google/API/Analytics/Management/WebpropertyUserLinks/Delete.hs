{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.WebpropertyUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.delete@.
module Network.Google.API.Analytics.Management.WebpropertyUserLinks.Delete
    (
    -- * REST Resource
      ManagementWebpropertyUserLinksDeleteAPI

    -- * Creating a Request
    , managementWebpropertyUserLinksDelete'
    , ManagementWebpropertyUserLinksDelete'

    -- * Request Lenses
    , mwuldQuotaUser
    , mwuldPrettyPrint
    , mwuldWebPropertyId
    , mwuldUserIp
    , mwuldAccountId
    , mwuldKey
    , mwuldLinkId
    , mwuldOauthToken
    , mwuldFields
    , mwuldAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.webpropertyUserLinks.delete which the
-- 'ManagementWebpropertyUserLinksDelete'' request conforms to.
type ManagementWebpropertyUserLinksDeleteAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 Capture "linkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a user from the given web property.
--
-- /See:/ 'managementWebpropertyUserLinksDelete'' smart constructor.
data ManagementWebpropertyUserLinksDelete' = ManagementWebpropertyUserLinksDelete'
    { _mwuldQuotaUser     :: !(Maybe Text)
    , _mwuldPrettyPrint   :: !Bool
    , _mwuldWebPropertyId :: !Text
    , _mwuldUserIp        :: !(Maybe Text)
    , _mwuldAccountId     :: !Text
    , _mwuldKey           :: !(Maybe Text)
    , _mwuldLinkId        :: !Text
    , _mwuldOauthToken    :: !(Maybe Text)
    , _mwuldFields        :: !(Maybe Text)
    , _mwuldAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertyUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwuldQuotaUser'
--
-- * 'mwuldPrettyPrint'
--
-- * 'mwuldWebPropertyId'
--
-- * 'mwuldUserIp'
--
-- * 'mwuldAccountId'
--
-- * 'mwuldKey'
--
-- * 'mwuldLinkId'
--
-- * 'mwuldOauthToken'
--
-- * 'mwuldFields'
--
-- * 'mwuldAlt'
managementWebpropertyUserLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementWebpropertyUserLinksDelete'
managementWebpropertyUserLinksDelete' pMwuldWebPropertyId_ pMwuldAccountId_ pMwuldLinkId_ =
    ManagementWebpropertyUserLinksDelete'
    { _mwuldQuotaUser = Nothing
    , _mwuldPrettyPrint = False
    , _mwuldWebPropertyId = pMwuldWebPropertyId_
    , _mwuldUserIp = Nothing
    , _mwuldAccountId = pMwuldAccountId_
    , _mwuldKey = Nothing
    , _mwuldLinkId = pMwuldLinkId_
    , _mwuldOauthToken = Nothing
    , _mwuldFields = Nothing
    , _mwuldAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwuldQuotaUser :: Lens' ManagementWebpropertyUserLinksDelete' (Maybe Text)
mwuldQuotaUser
  = lens _mwuldQuotaUser
      (\ s a -> s{_mwuldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwuldPrettyPrint :: Lens' ManagementWebpropertyUserLinksDelete' Bool
mwuldPrettyPrint
  = lens _mwuldPrettyPrint
      (\ s a -> s{_mwuldPrettyPrint = a})

-- | Web Property ID to delete the user link for.
mwuldWebPropertyId :: Lens' ManagementWebpropertyUserLinksDelete' Text
mwuldWebPropertyId
  = lens _mwuldWebPropertyId
      (\ s a -> s{_mwuldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwuldUserIp :: Lens' ManagementWebpropertyUserLinksDelete' (Maybe Text)
mwuldUserIp
  = lens _mwuldUserIp (\ s a -> s{_mwuldUserIp = a})

-- | Account ID to delete the user link for.
mwuldAccountId :: Lens' ManagementWebpropertyUserLinksDelete' Text
mwuldAccountId
  = lens _mwuldAccountId
      (\ s a -> s{_mwuldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwuldKey :: Lens' ManagementWebpropertyUserLinksDelete' (Maybe Text)
mwuldKey = lens _mwuldKey (\ s a -> s{_mwuldKey = a})

-- | Link ID to delete the user link for.
mwuldLinkId :: Lens' ManagementWebpropertyUserLinksDelete' Text
mwuldLinkId
  = lens _mwuldLinkId (\ s a -> s{_mwuldLinkId = a})

-- | OAuth 2.0 token for the current user.
mwuldOauthToken :: Lens' ManagementWebpropertyUserLinksDelete' (Maybe Text)
mwuldOauthToken
  = lens _mwuldOauthToken
      (\ s a -> s{_mwuldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwuldFields :: Lens' ManagementWebpropertyUserLinksDelete' (Maybe Text)
mwuldFields
  = lens _mwuldFields (\ s a -> s{_mwuldFields = a})

-- | Data format for the response.
mwuldAlt :: Lens' ManagementWebpropertyUserLinksDelete' Alt
mwuldAlt = lens _mwuldAlt (\ s a -> s{_mwuldAlt = a})

instance GoogleRequest
         ManagementWebpropertyUserLinksDelete' where
        type Rs ManagementWebpropertyUserLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertyUserLinksDelete'{..}
          = go _mwuldQuotaUser (Just _mwuldPrettyPrint)
              _mwuldWebPropertyId
              _mwuldUserIp
              _mwuldAccountId
              _mwuldKey
              _mwuldLinkId
              _mwuldOauthToken
              _mwuldFields
              (Just _mwuldAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebpropertyUserLinksDeleteAPI)
                      r
                      u
