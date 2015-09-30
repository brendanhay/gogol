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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all aliases for a group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsAliasesList@.
module Network.Google.Resource.Directory.Groups.Aliases.List
    (
    -- * REST Resource
      GroupsAliasesListResource

    -- * Creating a Request
    , groupsAliasesList'
    , GroupsAliasesList'

    -- * Request Lenses
    , galQuotaUser
    , galPrettyPrint
    , galUserIp
    , galGroupKey
    , galKey
    , galOauthToken
    , galFields
    , galAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsAliasesList@ which the
-- 'GroupsAliasesList'' request conforms to.
type GroupsAliasesListResource =
     "groups" :>
       Capture "groupKey" Text :>
         "aliases" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Aliases

-- | List all aliases for a group
--
-- /See:/ 'groupsAliasesList'' smart constructor.
data GroupsAliasesList' = GroupsAliasesList'
    { _galQuotaUser   :: !(Maybe Text)
    , _galPrettyPrint :: !Bool
    , _galUserIp      :: !(Maybe Text)
    , _galGroupKey    :: !Text
    , _galKey         :: !(Maybe Text)
    , _galOauthToken  :: !(Maybe Text)
    , _galFields      :: !(Maybe Text)
    , _galAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galQuotaUser'
--
-- * 'galPrettyPrint'
--
-- * 'galUserIp'
--
-- * 'galGroupKey'
--
-- * 'galKey'
--
-- * 'galOauthToken'
--
-- * 'galFields'
--
-- * 'galAlt'
groupsAliasesList'
    :: Text -- ^ 'groupKey'
    -> GroupsAliasesList'
groupsAliasesList' pGalGroupKey_ =
    GroupsAliasesList'
    { _galQuotaUser = Nothing
    , _galPrettyPrint = True
    , _galUserIp = Nothing
    , _galGroupKey = pGalGroupKey_
    , _galKey = Nothing
    , _galOauthToken = Nothing
    , _galFields = Nothing
    , _galAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
galQuotaUser :: Lens' GroupsAliasesList' (Maybe Text)
galQuotaUser
  = lens _galQuotaUser (\ s a -> s{_galQuotaUser = a})

-- | Returns response with indentations and line breaks.
galPrettyPrint :: Lens' GroupsAliasesList' Bool
galPrettyPrint
  = lens _galPrettyPrint
      (\ s a -> s{_galPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
galUserIp :: Lens' GroupsAliasesList' (Maybe Text)
galUserIp
  = lens _galUserIp (\ s a -> s{_galUserIp = a})

-- | Email or immutable Id of the group
galGroupKey :: Lens' GroupsAliasesList' Text
galGroupKey
  = lens _galGroupKey (\ s a -> s{_galGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
galKey :: Lens' GroupsAliasesList' (Maybe Text)
galKey = lens _galKey (\ s a -> s{_galKey = a})

-- | OAuth 2.0 token for the current user.
galOauthToken :: Lens' GroupsAliasesList' (Maybe Text)
galOauthToken
  = lens _galOauthToken
      (\ s a -> s{_galOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
galFields :: Lens' GroupsAliasesList' (Maybe Text)
galFields
  = lens _galFields (\ s a -> s{_galFields = a})

-- | Data format for the response.
galAlt :: Lens' GroupsAliasesList' Alt
galAlt = lens _galAlt (\ s a -> s{_galAlt = a})

instance GoogleRequest GroupsAliasesList' where
        type Rs GroupsAliasesList' = Aliases
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsAliasesList'{..}
          = go _galQuotaUser (Just _galPrettyPrint) _galUserIp
              _galGroupKey
              _galKey
              _galOauthToken
              _galFields
              (Just _galAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsAliasesListResource)
                      r
                      u
