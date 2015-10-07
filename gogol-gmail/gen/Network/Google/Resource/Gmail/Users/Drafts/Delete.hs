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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsDelete@.
module Network.Google.Resource.Gmail.Users.Drafts.Delete
    (
    -- * REST Resource
      UsersDraftsDeleteResource

    -- * Creating a Request
    , usersDraftsDelete'
    , UsersDraftsDelete'

    -- * Request Lenses
    , uddQuotaUser
    , uddPrettyPrint
    , uddUserIP
    , uddUserId
    , uddKey
    , uddId
    , uddOAuthToken
    , uddFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsDelete@ method which the
-- 'UsersDraftsDelete'' request conforms to.
type UsersDraftsDeleteResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ 'usersDraftsDelete'' smart constructor.
data UsersDraftsDelete' = UsersDraftsDelete'
    { _uddQuotaUser   :: !(Maybe Text)
    , _uddPrettyPrint :: !Bool
    , _uddUserIP      :: !(Maybe Text)
    , _uddUserId      :: !Text
    , _uddKey         :: !(Maybe AuthKey)
    , _uddId          :: !Text
    , _uddOAuthToken  :: !(Maybe OAuthToken)
    , _uddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddQuotaUser'
--
-- * 'uddPrettyPrint'
--
-- * 'uddUserIP'
--
-- * 'uddUserId'
--
-- * 'uddKey'
--
-- * 'uddId'
--
-- * 'uddOAuthToken'
--
-- * 'uddFields'
usersDraftsDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersDraftsDelete'
usersDraftsDelete' pUddUserId_ pUddId_ =
    UsersDraftsDelete'
    { _uddQuotaUser = Nothing
    , _uddPrettyPrint = True
    , _uddUserIP = Nothing
    , _uddUserId = pUddUserId_
    , _uddKey = Nothing
    , _uddId = pUddId_
    , _uddOAuthToken = Nothing
    , _uddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uddQuotaUser :: Lens' UsersDraftsDelete' (Maybe Text)
uddQuotaUser
  = lens _uddQuotaUser (\ s a -> s{_uddQuotaUser = a})

-- | Returns response with indentations and line breaks.
uddPrettyPrint :: Lens' UsersDraftsDelete' Bool
uddPrettyPrint
  = lens _uddPrettyPrint
      (\ s a -> s{_uddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uddUserIP :: Lens' UsersDraftsDelete' (Maybe Text)
uddUserIP
  = lens _uddUserIP (\ s a -> s{_uddUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uddUserId :: Lens' UsersDraftsDelete' Text
uddUserId
  = lens _uddUserId (\ s a -> s{_uddUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uddKey :: Lens' UsersDraftsDelete' (Maybe AuthKey)
uddKey = lens _uddKey (\ s a -> s{_uddKey = a})

-- | The ID of the draft to delete.
uddId :: Lens' UsersDraftsDelete' Text
uddId = lens _uddId (\ s a -> s{_uddId = a})

-- | OAuth 2.0 token for the current user.
uddOAuthToken :: Lens' UsersDraftsDelete' (Maybe OAuthToken)
uddOAuthToken
  = lens _uddOAuthToken
      (\ s a -> s{_uddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uddFields :: Lens' UsersDraftsDelete' (Maybe Text)
uddFields
  = lens _uddFields (\ s a -> s{_uddFields = a})

instance GoogleAuth UsersDraftsDelete' where
        _AuthKey = uddKey . _Just
        _AuthToken = uddOAuthToken . _Just

instance GoogleRequest UsersDraftsDelete' where
        type Rs UsersDraftsDelete' = ()
        request = requestWith gmailRequest
        requestWith rq UsersDraftsDelete'{..}
          = go _uddUserId _uddId _uddQuotaUser
              (Just _uddPrettyPrint)
              _uddUserIP
              _uddFields
              _uddKey
              _uddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersDraftsDeleteResource)
                      rq
