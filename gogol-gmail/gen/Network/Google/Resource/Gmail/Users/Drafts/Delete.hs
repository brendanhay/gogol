{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , uddUserIp
    , uddUserId
    , uddKey
    , uddId
    , uddOauthToken
    , uddFields
    , uddAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsDelete@ which the
-- 'UsersDraftsDelete'' request conforms to.
type UsersDraftsDeleteResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ 'usersDraftsDelete'' smart constructor.
data UsersDraftsDelete' = UsersDraftsDelete'
    { _uddQuotaUser   :: !(Maybe Text)
    , _uddPrettyPrint :: !Bool
    , _uddUserIp      :: !(Maybe Text)
    , _uddUserId      :: !Text
    , _uddKey         :: !(Maybe Text)
    , _uddId          :: !Text
    , _uddOauthToken  :: !(Maybe Text)
    , _uddFields      :: !(Maybe Text)
    , _uddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddQuotaUser'
--
-- * 'uddPrettyPrint'
--
-- * 'uddUserIp'
--
-- * 'uddUserId'
--
-- * 'uddKey'
--
-- * 'uddId'
--
-- * 'uddOauthToken'
--
-- * 'uddFields'
--
-- * 'uddAlt'
usersDraftsDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersDraftsDelete'
usersDraftsDelete' pUddUserId_ pUddId_ =
    UsersDraftsDelete'
    { _uddQuotaUser = Nothing
    , _uddPrettyPrint = True
    , _uddUserIp = Nothing
    , _uddUserId = pUddUserId_
    , _uddKey = Nothing
    , _uddId = pUddId_
    , _uddOauthToken = Nothing
    , _uddFields = Nothing
    , _uddAlt = JSON
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
uddUserIp :: Lens' UsersDraftsDelete' (Maybe Text)
uddUserIp
  = lens _uddUserIp (\ s a -> s{_uddUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uddUserId :: Lens' UsersDraftsDelete' Text
uddUserId
  = lens _uddUserId (\ s a -> s{_uddUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uddKey :: Lens' UsersDraftsDelete' (Maybe Text)
uddKey = lens _uddKey (\ s a -> s{_uddKey = a})

-- | The ID of the draft to delete.
uddId :: Lens' UsersDraftsDelete' Text
uddId = lens _uddId (\ s a -> s{_uddId = a})

-- | OAuth 2.0 token for the current user.
uddOauthToken :: Lens' UsersDraftsDelete' (Maybe Text)
uddOauthToken
  = lens _uddOauthToken
      (\ s a -> s{_uddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uddFields :: Lens' UsersDraftsDelete' (Maybe Text)
uddFields
  = lens _uddFields (\ s a -> s{_uddFields = a})

-- | Data format for the response.
uddAlt :: Lens' UsersDraftsDelete' Alt
uddAlt = lens _uddAlt (\ s a -> s{_uddAlt = a})

instance GoogleRequest UsersDraftsDelete' where
        type Rs UsersDraftsDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersDraftsDelete'{..}
          = go _uddQuotaUser (Just _uddPrettyPrint) _uddUserIp
              _uddUserId
              _uddKey
              _uddId
              _uddOauthToken
              _uddFields
              (Just _uddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDraftsDeleteResource)
                      r
                      u
