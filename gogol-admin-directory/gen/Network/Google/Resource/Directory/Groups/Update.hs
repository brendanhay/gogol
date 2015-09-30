{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsUpdate@.
module Directory.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateAPI

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guQuotaUser
    , guPrettyPrint
    , guUserIp
    , guGroupKey
    , guKey
    , guOauthToken
    , guFields
    , guAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsUpdate@ which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateAPI =
     "groups" :>
       Capture "groupKey" Text :> Put '[JSON] Group

-- | Update Group
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate = GroupsUpdate
    { _guQuotaUser   :: !(Maybe Text)
    , _guPrettyPrint :: !Bool
    , _guUserIp      :: !(Maybe Text)
    , _guGroupKey    :: !Text
    , _guKey         :: !(Maybe Text)
    , _guOauthToken  :: !(Maybe Text)
    , _guFields      :: !(Maybe Text)
    , _guAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guQuotaUser'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIp'
--
-- * 'guGroupKey'
--
-- * 'guKey'
--
-- * 'guOauthToken'
--
-- * 'guFields'
--
-- * 'guAlt'
groupsUpdate
    :: Text -- ^ 'groupKey'
    -> GroupsUpdate
groupsUpdate pGuGroupKey_ =
    GroupsUpdate
    { _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIp = Nothing
    , _guGroupKey = pGuGroupKey_
    , _guKey = Nothing
    , _guOauthToken = Nothing
    , _guFields = Nothing
    , _guAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
guQuotaUser :: Lens' GroupsUpdate' (Maybe Text)
guQuotaUser
  = lens _guQuotaUser (\ s a -> s{_guQuotaUser = a})

-- | Returns response with indentations and line breaks.
guPrettyPrint :: Lens' GroupsUpdate' Bool
guPrettyPrint
  = lens _guPrettyPrint
      (\ s a -> s{_guPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
guUserIp :: Lens' GroupsUpdate' (Maybe Text)
guUserIp = lens _guUserIp (\ s a -> s{_guUserIp = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
guGroupKey :: Lens' GroupsUpdate' Text
guGroupKey
  = lens _guGroupKey (\ s a -> s{_guGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe Text)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOauthToken :: Lens' GroupsUpdate' (Maybe Text)
guOauthToken
  = lens _guOauthToken (\ s a -> s{_guOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

-- | Data format for the response.
guAlt :: Lens' GroupsUpdate' Text
guAlt = lens _guAlt (\ s a -> s{_guAlt = a})

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsUpdate{..}
          = go _guQuotaUser _guPrettyPrint _guUserIp
              _guGroupKey
              _guKey
              _guOauthToken
              _guFields
              _guAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsUpdateAPI) r
                      u
