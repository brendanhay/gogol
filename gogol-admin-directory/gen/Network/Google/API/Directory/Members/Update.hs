{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Members.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update membership of a user in the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.update@.
module Network.Google.API.Directory.Members.Update
    (
    -- * REST Resource
      MembersUpdateAPI

    -- * Creating a Request
    , membersUpdate'
    , MembersUpdate'

    -- * Request Lenses
    , muQuotaUser
    , muMemberKey
    , muPrettyPrint
    , muUserIp
    , muGroupKey
    , muKey
    , muOauthToken
    , muFields
    , muAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.members.update which the
-- 'MembersUpdate'' request conforms to.
type MembersUpdateAPI =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Member

-- | Update membership of a user in the specified group.
--
-- /See:/ 'membersUpdate'' smart constructor.
data MembersUpdate' = MembersUpdate'
    { _muQuotaUser   :: !(Maybe Text)
    , _muMemberKey   :: !Text
    , _muPrettyPrint :: !Bool
    , _muUserIp      :: !(Maybe Text)
    , _muGroupKey    :: !Text
    , _muKey         :: !(Maybe Text)
    , _muOauthToken  :: !(Maybe Text)
    , _muFields      :: !(Maybe Text)
    , _muAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muQuotaUser'
--
-- * 'muMemberKey'
--
-- * 'muPrettyPrint'
--
-- * 'muUserIp'
--
-- * 'muGroupKey'
--
-- * 'muKey'
--
-- * 'muOauthToken'
--
-- * 'muFields'
--
-- * 'muAlt'
membersUpdate'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersUpdate'
membersUpdate' pMuMemberKey_ pMuGroupKey_ =
    MembersUpdate'
    { _muQuotaUser = Nothing
    , _muMemberKey = pMuMemberKey_
    , _muPrettyPrint = True
    , _muUserIp = Nothing
    , _muGroupKey = pMuGroupKey_
    , _muKey = Nothing
    , _muOauthToken = Nothing
    , _muFields = Nothing
    , _muAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muQuotaUser :: Lens' MembersUpdate' (Maybe Text)
muQuotaUser
  = lens _muQuotaUser (\ s a -> s{_muQuotaUser = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- member object
muMemberKey :: Lens' MembersUpdate' Text
muMemberKey
  = lens _muMemberKey (\ s a -> s{_muMemberKey = a})

-- | Returns response with indentations and line breaks.
muPrettyPrint :: Lens' MembersUpdate' Bool
muPrettyPrint
  = lens _muPrettyPrint
      (\ s a -> s{_muPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muUserIp :: Lens' MembersUpdate' (Maybe Text)
muUserIp = lens _muUserIp (\ s a -> s{_muUserIp = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
muGroupKey :: Lens' MembersUpdate' Text
muGroupKey
  = lens _muGroupKey (\ s a -> s{_muGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muKey :: Lens' MembersUpdate' (Maybe Text)
muKey = lens _muKey (\ s a -> s{_muKey = a})

-- | OAuth 2.0 token for the current user.
muOauthToken :: Lens' MembersUpdate' (Maybe Text)
muOauthToken
  = lens _muOauthToken (\ s a -> s{_muOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
muFields :: Lens' MembersUpdate' (Maybe Text)
muFields = lens _muFields (\ s a -> s{_muFields = a})

-- | Data format for the response.
muAlt :: Lens' MembersUpdate' Alt
muAlt = lens _muAlt (\ s a -> s{_muAlt = a})

instance GoogleRequest MembersUpdate' where
        type Rs MembersUpdate' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersUpdate'{..}
          = go _muQuotaUser _muMemberKey (Just _muPrettyPrint)
              _muUserIp
              _muGroupKey
              _muKey
              _muOauthToken
              _muFields
              (Just _muAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MembersUpdateAPI) r
                      u
