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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces a draft\'s content.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsUpdate@.
module Network.Google.Resource.Gmail.Users.Drafts.Update
    (
    -- * REST Resource
      UsersDraftsUpdateResource

    -- * Creating a Request
    , usersDraftsUpdate'
    , UsersDraftsUpdate'

    -- * Request Lenses
    , uduQuotaUser
    , uduPrettyPrint
    , uduUserIP
    , uduPayload
    , uduUserId
    , uduMedia
    , uduKey
    , uduId
    , uduOAuthToken
    , uduFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsUpdate@ which the
-- 'UsersDraftsUpdate'' request conforms to.
type UsersDraftsUpdateResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] Draft Body :>
                           Put '[JSON] Draft

-- | Replaces a draft\'s content.
--
-- /See:/ 'usersDraftsUpdate'' smart constructor.
data UsersDraftsUpdate' = UsersDraftsUpdate'
    { _uduQuotaUser   :: !(Maybe Text)
    , _uduPrettyPrint :: !Bool
    , _uduUserIP      :: !(Maybe Text)
    , _uduPayload     :: !Draft
    , _uduUserId      :: !Text
    , _uduMedia       :: !Body
    , _uduKey         :: !(Maybe Key)
    , _uduId          :: !Text
    , _uduOAuthToken  :: !(Maybe OAuthToken)
    , _uduFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uduQuotaUser'
--
-- * 'uduPrettyPrint'
--
-- * 'uduUserIP'
--
-- * 'uduPayload'
--
-- * 'uduUserId'
--
-- * 'uduMedia'
--
-- * 'uduKey'
--
-- * 'uduId'
--
-- * 'uduOAuthToken'
--
-- * 'uduFields'
usersDraftsUpdate'
    :: Draft -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Body -- ^ 'id'
    -> Text
    -> UsersDraftsUpdate'
usersDraftsUpdate' pUduPayload_ pUduUserId_ pUduMedia_ pUduId_ =
    UsersDraftsUpdate'
    { _uduQuotaUser = Nothing
    , _uduPrettyPrint = True
    , _uduUserIP = Nothing
    , _uduPayload = pUduPayload_
    , _uduUserId = pUduUserId_
    , _uduMedia = pUduMedia_
    , _uduKey = Nothing
    , _uduId = pUduId_
    , _uduOAuthToken = Nothing
    , _uduFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uduQuotaUser :: Lens' UsersDraftsUpdate' (Maybe Text)
uduQuotaUser
  = lens _uduQuotaUser (\ s a -> s{_uduQuotaUser = a})

-- | Returns response with indentations and line breaks.
uduPrettyPrint :: Lens' UsersDraftsUpdate' Bool
uduPrettyPrint
  = lens _uduPrettyPrint
      (\ s a -> s{_uduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uduUserIP :: Lens' UsersDraftsUpdate' (Maybe Text)
uduUserIP
  = lens _uduUserIP (\ s a -> s{_uduUserIP = a})

-- | Multipart request metadata.
uduPayload :: Lens' UsersDraftsUpdate' Draft
uduPayload
  = lens _uduPayload (\ s a -> s{_uduPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uduUserId :: Lens' UsersDraftsUpdate' Text
uduUserId
  = lens _uduUserId (\ s a -> s{_uduUserId = a})

uduMedia :: Lens' UsersDraftsUpdate' Body
uduMedia = lens _uduMedia (\ s a -> s{_uduMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uduKey :: Lens' UsersDraftsUpdate' (Maybe Key)
uduKey = lens _uduKey (\ s a -> s{_uduKey = a})

-- | The ID of the draft to update.
uduId :: Lens' UsersDraftsUpdate' Text
uduId = lens _uduId (\ s a -> s{_uduId = a})

-- | OAuth 2.0 token for the current user.
uduOAuthToken :: Lens' UsersDraftsUpdate' (Maybe OAuthToken)
uduOAuthToken
  = lens _uduOAuthToken
      (\ s a -> s{_uduOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uduFields :: Lens' UsersDraftsUpdate' (Maybe Text)
uduFields
  = lens _uduFields (\ s a -> s{_uduFields = a})

instance GoogleAuth UsersDraftsUpdate' where
        authKey = uduKey . _Just
        authToken = uduOAuthToken . _Just

instance GoogleRequest UsersDraftsUpdate' where
        type Rs UsersDraftsUpdate' = Draft
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsUpdate'{..}
          = go _uduUserId _uduId _uduQuotaUser
              (Just _uduPrettyPrint)
              _uduUserIP
              _uduFields
              _uduKey
              _uduOAuthToken
              (Just AltJSON)
              _uduPayload
              _uduMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDraftsUpdateResource)
                      r
                      u
