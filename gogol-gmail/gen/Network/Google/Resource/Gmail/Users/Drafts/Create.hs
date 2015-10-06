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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new draft with the DRAFT label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsCreate@.
module Network.Google.Resource.Gmail.Users.Drafts.Create
    (
    -- * REST Resource
      UsersDraftsCreateResource

    -- * Creating a Request
    , usersDraftsCreate'
    , UsersDraftsCreate'

    -- * Request Lenses
    , udcQuotaUser
    , udcPrettyPrint
    , udcUserIP
    , udcPayload
    , udcUserId
    , udcMedia
    , udcKey
    , udcOAuthToken
    , udcFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsCreate@ which the
-- 'UsersDraftsCreate'' request conforms to.
type UsersDraftsCreateResource =
     Capture "userId" Text :>
       "drafts" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       MultipartRelated '[JSON] Draft Stream :>
                         Post '[JSON] Draft

-- | Creates a new draft with the DRAFT label.
--
-- /See:/ 'usersDraftsCreate'' smart constructor.
data UsersDraftsCreate' = UsersDraftsCreate'
    { _udcQuotaUser   :: !(Maybe Text)
    , _udcPrettyPrint :: !Bool
    , _udcUserIP      :: !(Maybe Text)
    , _udcPayload     :: !Draft
    , _udcUserId      :: !Text
    , _udcMedia       :: !Stream
    , _udcKey         :: !(Maybe AuthKey)
    , _udcOAuthToken  :: !(Maybe OAuthToken)
    , _udcFields      :: !(Maybe Text)
    }

-- | Creates a value of 'UsersDraftsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcQuotaUser'
--
-- * 'udcPrettyPrint'
--
-- * 'udcUserIP'
--
-- * 'udcPayload'
--
-- * 'udcUserId'
--
-- * 'udcMedia'
--
-- * 'udcKey'
--
-- * 'udcOAuthToken'
--
-- * 'udcFields'
usersDraftsCreate'
    :: Draft -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Stream
    -> UsersDraftsCreate'
usersDraftsCreate' pUdcPayload_ pUdcUserId_ pUdcMedia_ =
    UsersDraftsCreate'
    { _udcQuotaUser = Nothing
    , _udcPrettyPrint = True
    , _udcUserIP = Nothing
    , _udcPayload = pUdcPayload_
    , _udcUserId = pUdcUserId_
    , _udcMedia = pUdcMedia_
    , _udcKey = Nothing
    , _udcOAuthToken = Nothing
    , _udcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udcQuotaUser :: Lens' UsersDraftsCreate' (Maybe Text)
udcQuotaUser
  = lens _udcQuotaUser (\ s a -> s{_udcQuotaUser = a})

-- | Returns response with indentations and line breaks.
udcPrettyPrint :: Lens' UsersDraftsCreate' Bool
udcPrettyPrint
  = lens _udcPrettyPrint
      (\ s a -> s{_udcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udcUserIP :: Lens' UsersDraftsCreate' (Maybe Text)
udcUserIP
  = lens _udcUserIP (\ s a -> s{_udcUserIP = a})

-- | Multipart request metadata.
udcPayload :: Lens' UsersDraftsCreate' Draft
udcPayload
  = lens _udcPayload (\ s a -> s{_udcPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udcUserId :: Lens' UsersDraftsCreate' Text
udcUserId
  = lens _udcUserId (\ s a -> s{_udcUserId = a})

udcMedia :: Lens' UsersDraftsCreate' Stream
udcMedia = lens _udcMedia (\ s a -> s{_udcMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udcKey :: Lens' UsersDraftsCreate' (Maybe AuthKey)
udcKey = lens _udcKey (\ s a -> s{_udcKey = a})

-- | OAuth 2.0 token for the current user.
udcOAuthToken :: Lens' UsersDraftsCreate' (Maybe OAuthToken)
udcOAuthToken
  = lens _udcOAuthToken
      (\ s a -> s{_udcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udcFields :: Lens' UsersDraftsCreate' (Maybe Text)
udcFields
  = lens _udcFields (\ s a -> s{_udcFields = a})

instance GoogleAuth UsersDraftsCreate' where
        authKey = udcKey . _Just
        authToken = udcOAuthToken . _Just

instance GoogleRequest UsersDraftsCreate' where
        type Rs UsersDraftsCreate' = Draft
        request = requestWith gmailRequest
        requestWith rq UsersDraftsCreate'{..}
          = go _udcUserId _udcQuotaUser (Just _udcPrettyPrint)
              _udcUserIP
              _udcFields
              _udcKey
              _udcOAuthToken
              (Just AltJSON)
              _udcPayload
              _udcMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersDraftsCreateResource)
                      rq
