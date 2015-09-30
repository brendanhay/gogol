{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsInsert@.
module Directory.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertAPI

    -- * Creating a Request
    , groupsInsert
    , GroupsInsert

    -- * Request Lenses
    , giQuotaUser
    , giPrettyPrint
    , giUserIp
    , giKey
    , giOauthToken
    , giFields
    , giAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsInsert@ which the
-- 'GroupsInsert' request conforms to.
type GroupsInsertAPI = "groups" :> Post '[JSON] Group

-- | Create Group
--
-- /See:/ 'groupsInsert' smart constructor.
data GroupsInsert = GroupsInsert
    { _giQuotaUser   :: !(Maybe Text)
    , _giPrettyPrint :: !Bool
    , _giUserIp      :: !(Maybe Text)
    , _giKey         :: !(Maybe Text)
    , _giOauthToken  :: !(Maybe Text)
    , _giFields      :: !(Maybe Text)
    , _giAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giQuotaUser'
--
-- * 'giPrettyPrint'
--
-- * 'giUserIp'
--
-- * 'giKey'
--
-- * 'giOauthToken'
--
-- * 'giFields'
--
-- * 'giAlt'
groupsInsert
    :: GroupsInsert
groupsInsert =
    GroupsInsert
    { _giQuotaUser = Nothing
    , _giPrettyPrint = True
    , _giUserIp = Nothing
    , _giKey = Nothing
    , _giOauthToken = Nothing
    , _giFields = Nothing
    , _giAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
giQuotaUser :: Lens' GroupsInsert' (Maybe Text)
giQuotaUser
  = lens _giQuotaUser (\ s a -> s{_giQuotaUser = a})

-- | Returns response with indentations and line breaks.
giPrettyPrint :: Lens' GroupsInsert' Bool
giPrettyPrint
  = lens _giPrettyPrint
      (\ s a -> s{_giPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
giUserIp :: Lens' GroupsInsert' (Maybe Text)
giUserIp = lens _giUserIp (\ s a -> s{_giUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
giKey :: Lens' GroupsInsert' (Maybe Text)
giKey = lens _giKey (\ s a -> s{_giKey = a})

-- | OAuth 2.0 token for the current user.
giOauthToken :: Lens' GroupsInsert' (Maybe Text)
giOauthToken
  = lens _giOauthToken (\ s a -> s{_giOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
giFields :: Lens' GroupsInsert' (Maybe Text)
giFields = lens _giFields (\ s a -> s{_giFields = a})

-- | Data format for the response.
giAlt :: Lens' GroupsInsert' Text
giAlt = lens _giAlt (\ s a -> s{_giAlt = a})

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsInsert{..}
          = go _giQuotaUser _giPrettyPrint _giUserIp _giKey
              _giOauthToken
              _giFields
              _giAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsInsertAPI) r
                      u
