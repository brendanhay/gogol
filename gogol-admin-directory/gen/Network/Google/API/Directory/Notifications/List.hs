{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Notifications.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of notifications.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.notifications.list@.
module Network.Google.API.Directory.Notifications.List
    (
    -- * REST Resource
      NotificationsListAPI

    -- * Creating a Request
    , notificationsList'
    , NotificationsList'

    -- * Request Lenses
    , nlQuotaUser
    , nlPrettyPrint
    , nlUserIp
    , nlCustomer
    , nlKey
    , nlLanguage
    , nlPageToken
    , nlOauthToken
    , nlMaxResults
    , nlFields
    , nlAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.notifications.list which the
-- 'NotificationsList'' request conforms to.
type NotificationsListAPI =
     "customer" :>
       Capture "customer" Text :>
         "notifications" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Notifications

-- | Retrieves a list of notifications.
--
-- /See:/ 'notificationsList'' smart constructor.
data NotificationsList' = NotificationsList'
    { _nlQuotaUser   :: !(Maybe Text)
    , _nlPrettyPrint :: !Bool
    , _nlUserIp      :: !(Maybe Text)
    , _nlCustomer    :: !Text
    , _nlKey         :: !(Maybe Text)
    , _nlLanguage    :: !(Maybe Text)
    , _nlPageToken   :: !(Maybe Text)
    , _nlOauthToken  :: !(Maybe Text)
    , _nlMaxResults  :: !(Maybe Word32)
    , _nlFields      :: !(Maybe Text)
    , _nlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotificationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlQuotaUser'
--
-- * 'nlPrettyPrint'
--
-- * 'nlUserIp'
--
-- * 'nlCustomer'
--
-- * 'nlKey'
--
-- * 'nlLanguage'
--
-- * 'nlPageToken'
--
-- * 'nlOauthToken'
--
-- * 'nlMaxResults'
--
-- * 'nlFields'
--
-- * 'nlAlt'
notificationsList'
    :: Text -- ^ 'customer'
    -> NotificationsList'
notificationsList' pNlCustomer_ =
    NotificationsList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlUserIp = Nothing
    , _nlCustomer = pNlCustomer_
    , _nlKey = Nothing
    , _nlLanguage = Nothing
    , _nlPageToken = Nothing
    , _nlOauthToken = Nothing
    , _nlMaxResults = Nothing
    , _nlFields = Nothing
    , _nlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nlQuotaUser :: Lens' NotificationsList' (Maybe Text)
nlQuotaUser
  = lens _nlQuotaUser (\ s a -> s{_nlQuotaUser = a})

-- | Returns response with indentations and line breaks.
nlPrettyPrint :: Lens' NotificationsList' Bool
nlPrettyPrint
  = lens _nlPrettyPrint
      (\ s a -> s{_nlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nlUserIp :: Lens' NotificationsList' (Maybe Text)
nlUserIp = lens _nlUserIp (\ s a -> s{_nlUserIp = a})

-- | The unique ID for the customer\'s Google account.
nlCustomer :: Lens' NotificationsList' Text
nlCustomer
  = lens _nlCustomer (\ s a -> s{_nlCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NotificationsList' (Maybe Text)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

-- | The ISO 639-1 code of the language notifications are returned in. The
-- default is English (en).
nlLanguage :: Lens' NotificationsList' (Maybe Text)
nlLanguage
  = lens _nlLanguage (\ s a -> s{_nlLanguage = a})

-- | The token to specify the page of results to retrieve.
nlPageToken :: Lens' NotificationsList' (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | OAuth 2.0 token for the current user.
nlOauthToken :: Lens' NotificationsList' (Maybe Text)
nlOauthToken
  = lens _nlOauthToken (\ s a -> s{_nlOauthToken = a})

-- | Maximum number of notifications to return per page. The default is 100.
nlMaxResults :: Lens' NotificationsList' (Maybe Word32)
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NotificationsList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

-- | Data format for the response.
nlAlt :: Lens' NotificationsList' Alt
nlAlt = lens _nlAlt (\ s a -> s{_nlAlt = a})

instance GoogleRequest NotificationsList' where
        type Rs NotificationsList' = Notifications
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u NotificationsList'{..}
          = go _nlQuotaUser (Just _nlPrettyPrint) _nlUserIp
              _nlCustomer
              _nlKey
              _nlLanguage
              _nlPageToken
              _nlOauthToken
              _nlMaxResults
              _nlFields
              (Just _nlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NotificationsListAPI)
                      r
                      u
