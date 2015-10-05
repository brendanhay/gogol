{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Gmail.Users.Threads.Get
    (
    -- * REST Resource
      UsersThreadsGetResource

    -- * Creating a Request
    , usersThreadsGet'
    , UsersThreadsGet'

    -- * Request Lenses
    , utgQuotaUser
    , utgPrettyPrint
    , utgUserIP
    , utgFormat
    , utgUserId
    , utgKey
    , utgId
    , utgOAuthToken
    , utgMetadataHeaders
    , utgFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsGet@ which the
-- 'UsersThreadsGet'' request conforms to.
type UsersThreadsGetResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           QueryParam "format" UsersThreadsGetFormat :>
             QueryParams "metadataHeaders" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Thread

-- | Gets the specified thread.
--
-- /See:/ 'usersThreadsGet'' smart constructor.
data UsersThreadsGet' = UsersThreadsGet'
    { _utgQuotaUser       :: !(Maybe Text)
    , _utgPrettyPrint     :: !Bool
    , _utgUserIP          :: !(Maybe Text)
    , _utgFormat          :: !UsersThreadsGetFormat
    , _utgUserId          :: !Text
    , _utgKey             :: !(Maybe Key)
    , _utgId              :: !Text
    , _utgOAuthToken      :: !(Maybe OAuthToken)
    , _utgMetadataHeaders :: !(Maybe [Text])
    , _utgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utgQuotaUser'
--
-- * 'utgPrettyPrint'
--
-- * 'utgUserIP'
--
-- * 'utgFormat'
--
-- * 'utgUserId'
--
-- * 'utgKey'
--
-- * 'utgId'
--
-- * 'utgOAuthToken'
--
-- * 'utgMetadataHeaders'
--
-- * 'utgFields'
usersThreadsGet'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsGet'
usersThreadsGet' pUtgUserId_ pUtgId_ =
    UsersThreadsGet'
    { _utgQuotaUser = Nothing
    , _utgPrettyPrint = True
    , _utgUserIP = Nothing
    , _utgFormat = UTGFFull
    , _utgUserId = pUtgUserId_
    , _utgKey = Nothing
    , _utgId = pUtgId_
    , _utgOAuthToken = Nothing
    , _utgMetadataHeaders = Nothing
    , _utgFields = Nothing
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
utgUserIP :: Lens' UsersThreadsGet' (Maybe Text)
utgUserIP
  = lens _utgUserIP (\ s a -> s{_utgUserIP = a})

-- | The format to return the messages in.
utgFormat :: Lens' UsersThreadsGet' UsersThreadsGetFormat
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
utgKey :: Lens' UsersThreadsGet' (Maybe Key)
utgKey = lens _utgKey (\ s a -> s{_utgKey = a})

-- | The ID of the thread to retrieve.
utgId :: Lens' UsersThreadsGet' Text
utgId = lens _utgId (\ s a -> s{_utgId = a})

-- | OAuth 2.0 token for the current user.
utgOAuthToken :: Lens' UsersThreadsGet' (Maybe OAuthToken)
utgOAuthToken
  = lens _utgOAuthToken
      (\ s a -> s{_utgOAuthToken = a})

-- | When given and format is METADATA, only include headers specified.
utgMetadataHeaders :: Lens' UsersThreadsGet' [Text]
utgMetadataHeaders
  = lens _utgMetadataHeaders
      (\ s a -> s{_utgMetadataHeaders = a})
      . _Default
      . _Coerce

-- | Selector specifying which fields to include in a partial response.
utgFields :: Lens' UsersThreadsGet' (Maybe Text)
utgFields
  = lens _utgFields (\ s a -> s{_utgFields = a})

instance GoogleAuth UsersThreadsGet' where
        authKey = utgKey . _Just
        authToken = utgOAuthToken . _Just

instance GoogleRequest UsersThreadsGet' where
        type Rs UsersThreadsGet' = Thread
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsGet'{..}
          = go _utgUserId _utgId (Just _utgFormat)
              (_utgMetadataHeaders ^. _Default)
              _utgQuotaUser
              (Just _utgPrettyPrint)
              _utgUserIP
              _utgFields
              _utgKey
              _utgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsGetResource)
                      r
                      u
