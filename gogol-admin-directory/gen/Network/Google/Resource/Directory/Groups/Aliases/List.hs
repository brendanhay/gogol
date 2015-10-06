{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , galUserIP
    , galGroupKey
    , galKey
    , galOAuthToken
    , galFields
    ) where

import           Network.Google.Directory.Types
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | List all aliases for a group
--
-- /See:/ 'groupsAliasesList'' smart constructor.
data GroupsAliasesList' = GroupsAliasesList'
    { _galQuotaUser   :: !(Maybe Text)
    , _galPrettyPrint :: !Bool
    , _galUserIP      :: !(Maybe Text)
    , _galGroupKey    :: !Text
    , _galKey         :: !(Maybe AuthKey)
    , _galOAuthToken  :: !(Maybe OAuthToken)
    , _galFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galQuotaUser'
--
-- * 'galPrettyPrint'
--
-- * 'galUserIP'
--
-- * 'galGroupKey'
--
-- * 'galKey'
--
-- * 'galOAuthToken'
--
-- * 'galFields'
groupsAliasesList'
    :: Text -- ^ 'groupKey'
    -> GroupsAliasesList'
groupsAliasesList' pGalGroupKey_ =
    GroupsAliasesList'
    { _galQuotaUser = Nothing
    , _galPrettyPrint = True
    , _galUserIP = Nothing
    , _galGroupKey = pGalGroupKey_
    , _galKey = Nothing
    , _galOAuthToken = Nothing
    , _galFields = Nothing
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
galUserIP :: Lens' GroupsAliasesList' (Maybe Text)
galUserIP
  = lens _galUserIP (\ s a -> s{_galUserIP = a})

-- | Email or immutable Id of the group
galGroupKey :: Lens' GroupsAliasesList' Text
galGroupKey
  = lens _galGroupKey (\ s a -> s{_galGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
galKey :: Lens' GroupsAliasesList' (Maybe AuthKey)
galKey = lens _galKey (\ s a -> s{_galKey = a})

-- | OAuth 2.0 token for the current user.
galOAuthToken :: Lens' GroupsAliasesList' (Maybe OAuthToken)
galOAuthToken
  = lens _galOAuthToken
      (\ s a -> s{_galOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
galFields :: Lens' GroupsAliasesList' (Maybe Text)
galFields
  = lens _galFields (\ s a -> s{_galFields = a})

instance GoogleAuth GroupsAliasesList' where
        authKey = galKey . _Just
        authToken = galOAuthToken . _Just

instance GoogleRequest GroupsAliasesList' where
        type Rs GroupsAliasesList' = Aliases
        request = requestWith directoryRequest
        requestWith rq GroupsAliasesList'{..}
          = go _galGroupKey _galQuotaUser
              (Just _galPrettyPrint)
              _galUserIP
              _galFields
              _galKey
              _galOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GroupsAliasesListResource)
                      rq
