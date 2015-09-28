{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Members.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add user to the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.insert@.
module Network.Google.API.Directory.Members.Insert
    (
    -- * REST Resource
      MembersInsertAPI

    -- * Creating a Request
    , membersInsert'
    , MembersInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miGroupKey
    , miKey
    , miOauthToken
    , miFields
    , miAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.members.insert which the
-- 'MembersInsert'' request conforms to.
type MembersInsertAPI =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Member

-- | Add user to the specified group.
--
-- /See:/ 'membersInsert'' smart constructor.
data MembersInsert' = MembersInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miGroupKey    :: !Text
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIp'
--
-- * 'miGroupKey'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miFields'
--
-- * 'miAlt'
membersInsert'
    :: Text -- ^ 'groupKey'
    -> MembersInsert'
membersInsert' pMiGroupKey_ =
    MembersInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miGroupKey = pMiGroupKey_
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miFields = Nothing
    , _miAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MembersInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MembersInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIp :: Lens' MembersInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

-- | Email or immutable Id of the group
miGroupKey :: Lens' MembersInsert' Text
miGroupKey
  = lens _miGroupKey (\ s a -> s{_miGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MembersInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MembersInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MembersInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MembersInsert' Alt
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MembersInsert' where
        type Rs MembersInsert' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIp
              _miGroupKey
              _miKey
              _miOauthToken
              _miFields
              (Just _miAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MembersInsertAPI) r
                      u
