{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Send
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsSend@.
module Network.Google.Resource.Gmail.Users.Drafts.Send
    (
    -- * REST Resource
      UsersDraftsSendResource

    -- * Creating a Request
    , usersDraftsSend'
    , UsersDraftsSend'

    -- * Request Lenses
    , udsQuotaUser
    , udsPrettyPrint
    , udsUserIP
    , udsPayload
    , udsUserId
    , udsMedia
    , udsKey
    , udsOAuthToken
    , udsFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsSend@ method which the
-- 'UsersDraftsSend'' request conforms to.
type UsersDraftsSendResource =
     Capture "userId" Text :>
       "drafts" :>
         "send" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] Draft Stream :>
                           Post '[JSON] Message

-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ 'usersDraftsSend'' smart constructor.
data UsersDraftsSend' = UsersDraftsSend'
    { _udsQuotaUser   :: !(Maybe Text)
    , _udsPrettyPrint :: !Bool
    , _udsUserIP      :: !(Maybe Text)
    , _udsPayload     :: !Draft
    , _udsUserId      :: !Text
    , _udsMedia       :: !Stream
    , _udsKey         :: !(Maybe AuthKey)
    , _udsOAuthToken  :: !(Maybe OAuthToken)
    , _udsFields      :: !(Maybe Text)
    }

-- | Creates a value of 'UsersDraftsSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsQuotaUser'
--
-- * 'udsPrettyPrint'
--
-- * 'udsUserIP'
--
-- * 'udsPayload'
--
-- * 'udsUserId'
--
-- * 'udsMedia'
--
-- * 'udsKey'
--
-- * 'udsOAuthToken'
--
-- * 'udsFields'
usersDraftsSend'
    :: Draft -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Stream
    -> UsersDraftsSend'
usersDraftsSend' pUdsPayload_ pUdsUserId_ pUdsMedia_ =
    UsersDraftsSend'
    { _udsQuotaUser = Nothing
    , _udsPrettyPrint = True
    , _udsUserIP = Nothing
    , _udsPayload = pUdsPayload_
    , _udsUserId = pUdsUserId_
    , _udsMedia = pUdsMedia_
    , _udsKey = Nothing
    , _udsOAuthToken = Nothing
    , _udsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsQuotaUser :: Lens' UsersDraftsSend' (Maybe Text)
udsQuotaUser
  = lens _udsQuotaUser (\ s a -> s{_udsQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsPrettyPrint :: Lens' UsersDraftsSend' Bool
udsPrettyPrint
  = lens _udsPrettyPrint
      (\ s a -> s{_udsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsUserIP :: Lens' UsersDraftsSend' (Maybe Text)
udsUserIP
  = lens _udsUserIP (\ s a -> s{_udsUserIP = a})

-- | Multipart request metadata.
udsPayload :: Lens' UsersDraftsSend' Draft
udsPayload
  = lens _udsPayload (\ s a -> s{_udsPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udsUserId :: Lens' UsersDraftsSend' Text
udsUserId
  = lens _udsUserId (\ s a -> s{_udsUserId = a})

udsMedia :: Lens' UsersDraftsSend' Stream
udsMedia = lens _udsMedia (\ s a -> s{_udsMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsKey :: Lens' UsersDraftsSend' (Maybe AuthKey)
udsKey = lens _udsKey (\ s a -> s{_udsKey = a})

-- | OAuth 2.0 token for the current user.
udsOAuthToken :: Lens' UsersDraftsSend' (Maybe OAuthToken)
udsOAuthToken
  = lens _udsOAuthToken
      (\ s a -> s{_udsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsFields :: Lens' UsersDraftsSend' (Maybe Text)
udsFields
  = lens _udsFields (\ s a -> s{_udsFields = a})

instance GoogleAuth UsersDraftsSend' where
        _AuthKey = udsKey . _Just
        _AuthToken = udsOAuthToken . _Just

instance GoogleRequest UsersDraftsSend' where
        type Rs UsersDraftsSend' = Message
        request = requestWith gmailRequest
        requestWith rq UsersDraftsSend'{..}
          = go _udsUserId _udsQuotaUser (Just _udsPrettyPrint)
              _udsUserIP
              _udsFields
              _udsKey
              _udsOAuthToken
              (Just AltJSON)
              _udsPayload
              _udsMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersDraftsSendResource)
                      rq
