{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Gmail.Users.Labels.Patch
    (
    -- * REST Resource
      UsersLabelsPatchAPI

    -- * Creating a Request
    , usersLabelsPatch
    , UsersLabelsPatch

    -- * Request Lenses
    , ulpQuotaUser
    , ulpPrettyPrint
    , ulpUserIp
    , ulpUserId
    , ulpKey
    , ulpId
    , ulpOauthToken
    , ulpFields
    , ulpAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersLabelsPatch@ which the
-- 'UsersLabelsPatch' request conforms to.
type UsersLabelsPatchAPI =
     Capture "userId" Text :>
       "labels" :> Capture "id" Text :> Patch '[JSON] Label

-- | Updates the specified label. This method supports patch semantics.
--
-- /See:/ 'usersLabelsPatch' smart constructor.
data UsersLabelsPatch = UsersLabelsPatch
    { _ulpQuotaUser   :: !(Maybe Text)
    , _ulpPrettyPrint :: !Bool
    , _ulpUserIp      :: !(Maybe Text)
    , _ulpUserId      :: !Text
    , _ulpKey         :: !(Maybe Text)
    , _ulpId          :: !Text
    , _ulpOauthToken  :: !(Maybe Text)
    , _ulpFields      :: !(Maybe Text)
    , _ulpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpQuotaUser'
--
-- * 'ulpPrettyPrint'
--
-- * 'ulpUserIp'
--
-- * 'ulpUserId'
--
-- * 'ulpKey'
--
-- * 'ulpId'
--
-- * 'ulpOauthToken'
--
-- * 'ulpFields'
--
-- * 'ulpAlt'
usersLabelsPatch
    :: Text -- ^ 'id'
    -> Text
    -> UsersLabelsPatch
usersLabelsPatch pUlpUserId_ pUlpId_ =
    UsersLabelsPatch
    { _ulpQuotaUser = Nothing
    , _ulpPrettyPrint = True
    , _ulpUserIp = Nothing
    , _ulpUserId = pUlpUserId_
    , _ulpKey = Nothing
    , _ulpId = pUlpId_
    , _ulpOauthToken = Nothing
    , _ulpFields = Nothing
    , _ulpAlt = "json"
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
ulpUserIp :: Lens' UsersLabelsPatch' (Maybe Text)
ulpUserIp
  = lens _ulpUserIp (\ s a -> s{_ulpUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulpUserId :: Lens' UsersLabelsPatch' Text
ulpUserId
  = lens _ulpUserId (\ s a -> s{_ulpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulpKey :: Lens' UsersLabelsPatch' (Maybe Text)
ulpKey = lens _ulpKey (\ s a -> s{_ulpKey = a})

-- | The ID of the label to update.
ulpId :: Lens' UsersLabelsPatch' Text
ulpId = lens _ulpId (\ s a -> s{_ulpId = a})

-- | OAuth 2.0 token for the current user.
ulpOauthToken :: Lens' UsersLabelsPatch' (Maybe Text)
ulpOauthToken
  = lens _ulpOauthToken
      (\ s a -> s{_ulpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulpFields :: Lens' UsersLabelsPatch' (Maybe Text)
ulpFields
  = lens _ulpFields (\ s a -> s{_ulpFields = a})

-- | Data format for the response.
ulpAlt :: Lens' UsersLabelsPatch' Text
ulpAlt = lens _ulpAlt (\ s a -> s{_ulpAlt = a})

instance GoogleRequest UsersLabelsPatch' where
        type Rs UsersLabelsPatch' = Label
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersLabelsPatch{..}
          = go _ulpQuotaUser _ulpPrettyPrint _ulpUserIp
              _ulpUserId
              _ulpKey
              _ulpId
              _ulpOauthToken
              _ulpFields
              _ulpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersLabelsPatchAPI)
                      r
                      u
