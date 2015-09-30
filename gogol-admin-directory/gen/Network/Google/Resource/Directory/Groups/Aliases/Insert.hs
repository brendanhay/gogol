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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a alias for the group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsAliasesInsert@.
module Network.Google.Resource.Directory.Groups.Aliases.Insert
    (
    -- * REST Resource
      GroupsAliasesInsertResource

    -- * Creating a Request
    , groupsAliasesInsert'
    , GroupsAliasesInsert'

    -- * Request Lenses
    , gaiQuotaUser
    , gaiPrettyPrint
    , gaiUserIp
    , gaiGroupKey
    , gaiKey
    , gaiOauthToken
    , gaiFields
    , gaiAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsAliasesInsert@ which the
-- 'GroupsAliasesInsert'' request conforms to.
type GroupsAliasesInsertResource =
     "groups" :>
       Capture "groupKey" Text :>
         "aliases" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Alias

-- | Add a alias for the group
--
-- /See:/ 'groupsAliasesInsert'' smart constructor.
data GroupsAliasesInsert' = GroupsAliasesInsert'
    { _gaiQuotaUser   :: !(Maybe Text)
    , _gaiPrettyPrint :: !Bool
    , _gaiUserIp      :: !(Maybe Text)
    , _gaiGroupKey    :: !Text
    , _gaiKey         :: !(Maybe Text)
    , _gaiOauthToken  :: !(Maybe Text)
    , _gaiFields      :: !(Maybe Text)
    , _gaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiQuotaUser'
--
-- * 'gaiPrettyPrint'
--
-- * 'gaiUserIp'
--
-- * 'gaiGroupKey'
--
-- * 'gaiKey'
--
-- * 'gaiOauthToken'
--
-- * 'gaiFields'
--
-- * 'gaiAlt'
groupsAliasesInsert'
    :: Text -- ^ 'groupKey'
    -> GroupsAliasesInsert'
groupsAliasesInsert' pGaiGroupKey_ =
    GroupsAliasesInsert'
    { _gaiQuotaUser = Nothing
    , _gaiPrettyPrint = True
    , _gaiUserIp = Nothing
    , _gaiGroupKey = pGaiGroupKey_
    , _gaiKey = Nothing
    , _gaiOauthToken = Nothing
    , _gaiFields = Nothing
    , _gaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaiQuotaUser :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiQuotaUser
  = lens _gaiQuotaUser (\ s a -> s{_gaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaiPrettyPrint :: Lens' GroupsAliasesInsert' Bool
gaiPrettyPrint
  = lens _gaiPrettyPrint
      (\ s a -> s{_gaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaiUserIp :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiUserIp
  = lens _gaiUserIp (\ s a -> s{_gaiUserIp = a})

-- | Email or immutable Id of the group
gaiGroupKey :: Lens' GroupsAliasesInsert' Text
gaiGroupKey
  = lens _gaiGroupKey (\ s a -> s{_gaiGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaiKey :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiKey = lens _gaiKey (\ s a -> s{_gaiKey = a})

-- | OAuth 2.0 token for the current user.
gaiOauthToken :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiOauthToken
  = lens _gaiOauthToken
      (\ s a -> s{_gaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaiFields :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiFields
  = lens _gaiFields (\ s a -> s{_gaiFields = a})

-- | Data format for the response.
gaiAlt :: Lens' GroupsAliasesInsert' Alt
gaiAlt = lens _gaiAlt (\ s a -> s{_gaiAlt = a})

instance GoogleRequest GroupsAliasesInsert' where
        type Rs GroupsAliasesInsert' = Alias
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsAliasesInsert'{..}
          = go _gaiQuotaUser (Just _gaiPrettyPrint) _gaiUserIp
              _gaiGroupKey
              _gaiKey
              _gaiOauthToken
              _gaiFields
              (Just _gaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsAliasesInsertResource)
                      r
                      u
