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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified label. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersLabelsPatch@.
module Network.Google.Resource.Gmail.Users.Labels.Patch
    (
    -- * REST Resource
      UsersLabelsPatchResource

    -- * Creating a Request
    , usersLabelsPatch'
    , UsersLabelsPatch'

    -- * Request Lenses
    , ulpQuotaUser
    , ulpPrettyPrint
    , ulpUserIP
    , ulpPayload
    , ulpUserId
    , ulpKey
    , ulpId
    , ulpOAuthToken
    , ulpFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsPatch@ method which the
-- 'UsersLabelsPatch'' request conforms to.
type UsersLabelsPatchResource =
     Capture "userId" Text :>
       "labels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Label :> Patch '[JSON] Label

-- | Updates the specified label. This method supports patch semantics.
--
-- /See:/ 'usersLabelsPatch'' smart constructor.
data UsersLabelsPatch' = UsersLabelsPatch'
    { _ulpQuotaUser   :: !(Maybe Text)
    , _ulpPrettyPrint :: !Bool
    , _ulpUserIP      :: !(Maybe Text)
    , _ulpPayload     :: !Label
    , _ulpUserId      :: !Text
    , _ulpKey         :: !(Maybe AuthKey)
    , _ulpId          :: !Text
    , _ulpOAuthToken  :: !(Maybe OAuthToken)
    , _ulpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpQuotaUser'
--
-- * 'ulpPrettyPrint'
--
-- * 'ulpUserIP'
--
-- * 'ulpPayload'
--
-- * 'ulpUserId'
--
-- * 'ulpKey'
--
-- * 'ulpId'
--
-- * 'ulpOAuthToken'
--
-- * 'ulpFields'
usersLabelsPatch'
    :: Label -- ^ 'payload'
    -> Text -- ^ 'id'
    -> Text
    -> UsersLabelsPatch'
usersLabelsPatch' pUlpPayload_ pUlpUserId_ pUlpId_ =
    UsersLabelsPatch'
    { _ulpQuotaUser = Nothing
    , _ulpPrettyPrint = True
    , _ulpUserIP = Nothing
    , _ulpPayload = pUlpPayload_
    , _ulpUserId = pUlpUserId_
    , _ulpKey = Nothing
    , _ulpId = pUlpId_
    , _ulpOAuthToken = Nothing
    , _ulpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulpQuotaUser :: Lens' UsersLabelsPatch' (Maybe Text)
ulpQuotaUser
  = lens _ulpQuotaUser (\ s a -> s{_ulpQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulpPrettyPrint :: Lens' UsersLabelsPatch' Bool
ulpPrettyPrint
  = lens _ulpPrettyPrint
      (\ s a -> s{_ulpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulpUserIP :: Lens' UsersLabelsPatch' (Maybe Text)
ulpUserIP
  = lens _ulpUserIP (\ s a -> s{_ulpUserIP = a})

-- | Multipart request metadata.
ulpPayload :: Lens' UsersLabelsPatch' Label
ulpPayload
  = lens _ulpPayload (\ s a -> s{_ulpPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulpUserId :: Lens' UsersLabelsPatch' Text
ulpUserId
  = lens _ulpUserId (\ s a -> s{_ulpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulpKey :: Lens' UsersLabelsPatch' (Maybe AuthKey)
ulpKey = lens _ulpKey (\ s a -> s{_ulpKey = a})

-- | The ID of the label to update.
ulpId :: Lens' UsersLabelsPatch' Text
ulpId = lens _ulpId (\ s a -> s{_ulpId = a})

-- | OAuth 2.0 token for the current user.
ulpOAuthToken :: Lens' UsersLabelsPatch' (Maybe OAuthToken)
ulpOAuthToken
  = lens _ulpOAuthToken
      (\ s a -> s{_ulpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulpFields :: Lens' UsersLabelsPatch' (Maybe Text)
ulpFields
  = lens _ulpFields (\ s a -> s{_ulpFields = a})

instance GoogleAuth UsersLabelsPatch' where
        _AuthKey = ulpKey . _Just
        _AuthToken = ulpOAuthToken . _Just

instance GoogleRequest UsersLabelsPatch' where
        type Rs UsersLabelsPatch' = Label
        request = requestWith gmailRequest
        requestWith rq UsersLabelsPatch'{..}
          = go _ulpUserId _ulpId _ulpQuotaUser
              (Just _ulpPrettyPrint)
              _ulpUserIP
              _ulpFields
              _ulpKey
              _ulpOAuthToken
              (Just AltJSON)
              _ulpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersLabelsPatchResource)
                      rq
