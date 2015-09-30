{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsGet@.
module Gmail.Users.Threads.Get
    (
    -- * REST Resource
      UsersThreadsGetAPI

    -- * Creating a Request
    , usersThreadsGet
    , UsersThreadsGet

    -- * Request Lenses
    , utgQuotaUser
    , utgPrettyPrint
    , utgUserIp
    , utgFormat
    , utgUserId
    , utgKey
    , utgId
    , utgOauthToken
    , utgMetadataHeaders
    , utgFields
    , utgAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsGet@ which the
-- 'UsersThreadsGet' request conforms to.
type UsersThreadsGetAPI =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           QueryParam "format" Text :>
             QueryParams "metadataHeaders" Text :>
               Get '[JSON] Thread

-- | Gets the specified thread.
--
-- /See:/ 'usersThreadsGet' smart constructor.
data UsersThreadsGet = UsersThreadsGet
    { _utgQuotaUser       :: !(Maybe Text)
    , _utgPrettyPrint     :: !Bool
    , _utgUserIp          :: !(Maybe Text)
    , _utgFormat          :: !Text
    , _utgUserId          :: !Text
    , _utgKey             :: !(Maybe Text)
    , _utgId              :: !Text
    , _utgOauthToken      :: !(Maybe Text)
    , _utgMetadataHeaders :: !(Maybe Text)
    , _utgFields          :: !(Maybe Text)
    , _utgAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utgQuotaUser'
--
-- * 'utgPrettyPrint'
--
-- * 'utgUserIp'
--
-- * 'utgFormat'
--
-- * 'utgUserId'
--
-- * 'utgKey'
--
-- * 'utgId'
--
-- * 'utgOauthToken'
--
-- * 'utgMetadataHeaders'
--
-- * 'utgFields'
--
-- * 'utgAlt'
usersThreadsGet
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsGet
usersThreadsGet pUtgUserId_ pUtgId_ =
    UsersThreadsGet
    { _utgQuotaUser = Nothing
    , _utgPrettyPrint = True
    , _utgUserIp = Nothing
    , _utgFormat = "full"
    , _utgUserId = pUtgUserId_
    , _utgKey = Nothing
    , _utgId = pUtgId_
    , _utgOauthToken = Nothing
    , _utgMetadataHeaders = Nothing
    , _utgFields = Nothing
    , _utgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utgQuotaUser :: Lens' UsersThreadsGet' (Maybe Text)
utgQuotaUser
  = lens _utgQuotaUser (\ s a -> s{_utgQuotaUser = a})

-- | Returns response with indentations and line breaks.
utgPrettyPrint :: Lens' UsersThreadsGet' Bool
utgPrettyPrint
  = lens _utgPrettyPrint
      (\ s a -> s{_utgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utgUserIp :: Lens' UsersThreadsGet' (Maybe Text)
utgUserIp
  = lens _utgUserIp (\ s a -> s{_utgUserIp = a})

-- | The format to return the messages in.
utgFormat :: Lens' UsersThreadsGet' Text
utgFormat
  = lens _utgFormat (\ s a -> s{_utgFormat = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utgUserId :: Lens' UsersThreadsGet' Text
utgUserId
  = lens _utgUserId (\ s a -> s{_utgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utgKey :: Lens' UsersThreadsGet' (Maybe Text)
utgKey = lens _utgKey (\ s a -> s{_utgKey = a})

-- | The ID of the thread to retrieve.
utgId :: Lens' UsersThreadsGet' Text
utgId = lens _utgId (\ s a -> s{_utgId = a})

-- | OAuth 2.0 token for the current user.
utgOauthToken :: Lens' UsersThreadsGet' (Maybe Text)
utgOauthToken
  = lens _utgOauthToken
      (\ s a -> s{_utgOauthToken = a})

-- | When given and format is METADATA, only include headers specified.
utgMetadataHeaders :: Lens' UsersThreadsGet' (Maybe Text)
utgMetadataHeaders
  = lens _utgMetadataHeaders
      (\ s a -> s{_utgMetadataHeaders = a})

-- | Selector specifying which fields to include in a partial response.
utgFields :: Lens' UsersThreadsGet' (Maybe Text)
utgFields
  = lens _utgFields (\ s a -> s{_utgFields = a})

-- | Data format for the response.
utgAlt :: Lens' UsersThreadsGet' Text
utgAlt = lens _utgAlt (\ s a -> s{_utgAlt = a})

instance GoogleRequest UsersThreadsGet' where
        type Rs UsersThreadsGet' = Thread
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsGet{..}
          = go _utgQuotaUser _utgPrettyPrint _utgUserIp
              (Just _utgFormat)
              _utgUserId
              _utgKey
              _utgId
              _utgOauthToken
              _utgMetadataHeaders
              _utgFields
              _utgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersThreadsGetAPI)
                      r
                      u
