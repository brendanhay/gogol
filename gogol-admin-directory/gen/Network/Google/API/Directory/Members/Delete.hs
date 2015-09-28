{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Members.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove membership.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.delete@.
module Network.Google.API.Directory.Members.Delete
    (
    -- * REST Resource
      MembersDeleteAPI

    -- * Creating a Request
    , membersDelete'
    , MembersDelete'

    -- * Request Lenses
    , mdQuotaUser
    , mdMemberKey
    , mdPrettyPrint
    , mdUserIp
    , mdGroupKey
    , mdKey
    , mdOauthToken
    , mdFields
    , mdAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.members.delete which the
-- 'MembersDelete'' request conforms to.
type MembersDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Remove membership.
--
-- /See:/ 'membersDelete'' smart constructor.
data MembersDelete' = MembersDelete'
    { _mdQuotaUser   :: !(Maybe Text)
    , _mdMemberKey   :: !Text
    , _mdPrettyPrint :: !Bool
    , _mdUserIp      :: !(Maybe Text)
    , _mdGroupKey    :: !Text
    , _mdKey         :: !(Maybe Text)
    , _mdOauthToken  :: !(Maybe Text)
    , _mdFields      :: !(Maybe Text)
    , _mdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdQuotaUser'
--
-- * 'mdMemberKey'
--
-- * 'mdPrettyPrint'
--
-- * 'mdUserIp'
--
-- * 'mdGroupKey'
--
-- * 'mdKey'
--
-- * 'mdOauthToken'
--
-- * 'mdFields'
--
-- * 'mdAlt'
membersDelete'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersDelete'
membersDelete' pMdMemberKey_ pMdGroupKey_ =
    MembersDelete'
    { _mdQuotaUser = Nothing
    , _mdMemberKey = pMdMemberKey_
    , _mdPrettyPrint = True
    , _mdUserIp = Nothing
    , _mdGroupKey = pMdGroupKey_
    , _mdKey = Nothing
    , _mdOauthToken = Nothing
    , _mdFields = Nothing
    , _mdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdQuotaUser :: Lens' MembersDelete' (Maybe Text)
mdQuotaUser
  = lens _mdQuotaUser (\ s a -> s{_mdQuotaUser = a})

-- | Email or immutable Id of the member
mdMemberKey :: Lens' MembersDelete' Text
mdMemberKey
  = lens _mdMemberKey (\ s a -> s{_mdMemberKey = a})

-- | Returns response with indentations and line breaks.
mdPrettyPrint :: Lens' MembersDelete' Bool
mdPrettyPrint
  = lens _mdPrettyPrint
      (\ s a -> s{_mdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdUserIp :: Lens' MembersDelete' (Maybe Text)
mdUserIp = lens _mdUserIp (\ s a -> s{_mdUserIp = a})

-- | Email or immutable Id of the group
mdGroupKey :: Lens' MembersDelete' Text
mdGroupKey
  = lens _mdGroupKey (\ s a -> s{_mdGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdKey :: Lens' MembersDelete' (Maybe Text)
mdKey = lens _mdKey (\ s a -> s{_mdKey = a})

-- | OAuth 2.0 token for the current user.
mdOauthToken :: Lens' MembersDelete' (Maybe Text)
mdOauthToken
  = lens _mdOauthToken (\ s a -> s{_mdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdFields :: Lens' MembersDelete' (Maybe Text)
mdFields = lens _mdFields (\ s a -> s{_mdFields = a})

-- | Data format for the response.
mdAlt :: Lens' MembersDelete' Alt
mdAlt = lens _mdAlt (\ s a -> s{_mdAlt = a})

instance GoogleRequest MembersDelete' where
        type Rs MembersDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersDelete'{..}
          = go _mdQuotaUser _mdMemberKey (Just _mdPrettyPrint)
              _mdUserIp
              _mdGroupKey
              _mdKey
              _mdOauthToken
              _mdFields
              (Just _mdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MembersDeleteAPI) r
                      u
