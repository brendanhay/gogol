{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Members.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Group Member
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.get@.
module Network.Google.API.Directory.Members.Get
    (
    -- * REST Resource
      MembersGetAPI

    -- * Creating a Request
    , membersGet'
    , MembersGet'

    -- * Request Lenses
    , memQuotaUser
    , memMemberKey
    , memPrettyPrint
    , memUserIp
    , memGroupKey
    , memKey
    , memOauthToken
    , memFields
    , memAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.members.get which the
-- 'MembersGet'' request conforms to.
type MembersGetAPI =
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
                         QueryParam "alt" Alt :> Get '[JSON] Member

-- | Retrieve Group Member
--
-- /See:/ 'membersGet'' smart constructor.
data MembersGet' = MembersGet'
    { _memQuotaUser   :: !(Maybe Text)
    , _memMemberKey   :: !Text
    , _memPrettyPrint :: !Bool
    , _memUserIp      :: !(Maybe Text)
    , _memGroupKey    :: !Text
    , _memKey         :: !(Maybe Text)
    , _memOauthToken  :: !(Maybe Text)
    , _memFields      :: !(Maybe Text)
    , _memAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'memQuotaUser'
--
-- * 'memMemberKey'
--
-- * 'memPrettyPrint'
--
-- * 'memUserIp'
--
-- * 'memGroupKey'
--
-- * 'memKey'
--
-- * 'memOauthToken'
--
-- * 'memFields'
--
-- * 'memAlt'
membersGet'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersGet'
membersGet' pMemMemberKey_ pMemGroupKey_ =
    MembersGet'
    { _memQuotaUser = Nothing
    , _memMemberKey = pMemMemberKey_
    , _memPrettyPrint = True
    , _memUserIp = Nothing
    , _memGroupKey = pMemGroupKey_
    , _memKey = Nothing
    , _memOauthToken = Nothing
    , _memFields = Nothing
    , _memAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
memQuotaUser :: Lens' MembersGet' (Maybe Text)
memQuotaUser
  = lens _memQuotaUser (\ s a -> s{_memQuotaUser = a})

-- | Email or immutable Id of the member
memMemberKey :: Lens' MembersGet' Text
memMemberKey
  = lens _memMemberKey (\ s a -> s{_memMemberKey = a})

-- | Returns response with indentations and line breaks.
memPrettyPrint :: Lens' MembersGet' Bool
memPrettyPrint
  = lens _memPrettyPrint
      (\ s a -> s{_memPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
memUserIp :: Lens' MembersGet' (Maybe Text)
memUserIp
  = lens _memUserIp (\ s a -> s{_memUserIp = a})

-- | Email or immutable Id of the group
memGroupKey :: Lens' MembersGet' Text
memGroupKey
  = lens _memGroupKey (\ s a -> s{_memGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
memKey :: Lens' MembersGet' (Maybe Text)
memKey = lens _memKey (\ s a -> s{_memKey = a})

-- | OAuth 2.0 token for the current user.
memOauthToken :: Lens' MembersGet' (Maybe Text)
memOauthToken
  = lens _memOauthToken
      (\ s a -> s{_memOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
memFields :: Lens' MembersGet' (Maybe Text)
memFields
  = lens _memFields (\ s a -> s{_memFields = a})

-- | Data format for the response.
memAlt :: Lens' MembersGet' Alt
memAlt = lens _memAlt (\ s a -> s{_memAlt = a})

instance GoogleRequest MembersGet' where
        type Rs MembersGet' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersGet'{..}
          = go _memQuotaUser _memMemberKey
              (Just _memPrettyPrint)
              _memUserIp
              _memGroupKey
              _memKey
              _memOauthToken
              _memFields
              (Just _memAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MembersGetAPI) r u
