{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Members.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Group Member
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersGet@.
module Directory.Members.Get
    (
    -- * REST Resource
      MembersGetAPI

    -- * Creating a Request
    , membersGet
    , MembersGet

    -- * Request Lenses
    , mgQuotaUser
    , mgMemberKey
    , mgPrettyPrint
    , mgUserIp
    , mgGroupKey
    , mgKey
    , mgOauthToken
    , mgFields
    , mgAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersGet@ which the
-- 'MembersGet' request conforms to.
type MembersGetAPI =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :> Get '[JSON] Member

-- | Retrieve Group Member
--
-- /See:/ 'membersGet' smart constructor.
data MembersGet = MembersGet
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgMemberKey   :: !Text
    , _mgPrettyPrint :: !Bool
    , _mgUserIp      :: !(Maybe Text)
    , _mgGroupKey    :: !Text
    , _mgKey         :: !(Maybe Text)
    , _mgOauthToken  :: !(Maybe Text)
    , _mgFields      :: !(Maybe Text)
    , _mgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgMemberKey'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIp'
--
-- * 'mgGroupKey'
--
-- * 'mgKey'
--
-- * 'mgOauthToken'
--
-- * 'mgFields'
--
-- * 'mgAlt'
membersGet
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersGet
membersGet pMgMemberKey_ pMgGroupKey_ =
    MembersGet
    { _mgQuotaUser = Nothing
    , _mgMemberKey = pMgMemberKey_
    , _mgPrettyPrint = True
    , _mgUserIp = Nothing
    , _mgGroupKey = pMgGroupKey_
    , _mgKey = Nothing
    , _mgOauthToken = Nothing
    , _mgFields = Nothing
    , _mgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MembersGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Email or immutable Id of the member
mgMemberKey :: Lens' MembersGet' Text
mgMemberKey
  = lens _mgMemberKey (\ s a -> s{_mgMemberKey = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MembersGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIp :: Lens' MembersGet' (Maybe Text)
mgUserIp = lens _mgUserIp (\ s a -> s{_mgUserIp = a})

-- | Email or immutable Id of the group
mgGroupKey :: Lens' MembersGet' Text
mgGroupKey
  = lens _mgGroupKey (\ s a -> s{_mgGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MembersGet' (Maybe Text)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | OAuth 2.0 token for the current user.
mgOauthToken :: Lens' MembersGet' (Maybe Text)
mgOauthToken
  = lens _mgOauthToken (\ s a -> s{_mgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MembersGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | Data format for the response.
mgAlt :: Lens' MembersGet' Text
mgAlt = lens _mgAlt (\ s a -> s{_mgAlt = a})

instance GoogleRequest MembersGet' where
        type Rs MembersGet' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersGet{..}
          = go _mgQuotaUser _mgMemberKey _mgPrettyPrint
              _mgUserIp
              _mgGroupKey
              _mgKey
              _mgOauthToken
              _mgFields
              _mgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MembersGetAPI) r u
