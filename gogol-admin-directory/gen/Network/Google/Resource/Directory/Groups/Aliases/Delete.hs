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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove a alias for the group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsAliasesDelete@.
module Network.Google.Resource.Directory.Groups.Aliases.Delete
    (
    -- * REST Resource
      GroupsAliasesDeleteResource

    -- * Creating a Request
    , groupsAliasesDelete'
    , GroupsAliasesDelete'

    -- * Request Lenses
    , gadQuotaUser
    , gadPrettyPrint
    , gadUserIp
    , gadGroupKey
    , gadAlias
    , gadKey
    , gadOauthToken
    , gadFields
    , gadAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsAliasesDelete@ which the
-- 'GroupsAliasesDelete'' request conforms to.
type GroupsAliasesDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         "aliases" :>
           Capture "alias" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Remove a alias for the group
--
-- /See:/ 'groupsAliasesDelete'' smart constructor.
data GroupsAliasesDelete' = GroupsAliasesDelete'
    { _gadQuotaUser   :: !(Maybe Text)
    , _gadPrettyPrint :: !Bool
    , _gadUserIp      :: !(Maybe Text)
    , _gadGroupKey    :: !Text
    , _gadAlias       :: !Text
    , _gadKey         :: !(Maybe Text)
    , _gadOauthToken  :: !(Maybe Text)
    , _gadFields      :: !(Maybe Text)
    , _gadAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadQuotaUser'
--
-- * 'gadPrettyPrint'
--
-- * 'gadUserIp'
--
-- * 'gadGroupKey'
--
-- * 'gadAlias'
--
-- * 'gadKey'
--
-- * 'gadOauthToken'
--
-- * 'gadFields'
--
-- * 'gadAlt'
groupsAliasesDelete'
    :: Text -- ^ 'groupKey'
    -> Text -- ^ 'alias'
    -> GroupsAliasesDelete'
groupsAliasesDelete' pGadGroupKey_ pGadAlias_ =
    GroupsAliasesDelete'
    { _gadQuotaUser = Nothing
    , _gadPrettyPrint = True
    , _gadUserIp = Nothing
    , _gadGroupKey = pGadGroupKey_
    , _gadAlias = pGadAlias_
    , _gadKey = Nothing
    , _gadOauthToken = Nothing
    , _gadFields = Nothing
    , _gadAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gadQuotaUser :: Lens' GroupsAliasesDelete' (Maybe Text)
gadQuotaUser
  = lens _gadQuotaUser (\ s a -> s{_gadQuotaUser = a})

-- | Returns response with indentations and line breaks.
gadPrettyPrint :: Lens' GroupsAliasesDelete' Bool
gadPrettyPrint
  = lens _gadPrettyPrint
      (\ s a -> s{_gadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gadUserIp :: Lens' GroupsAliasesDelete' (Maybe Text)
gadUserIp
  = lens _gadUserIp (\ s a -> s{_gadUserIp = a})

-- | Email or immutable Id of the group
gadGroupKey :: Lens' GroupsAliasesDelete' Text
gadGroupKey
  = lens _gadGroupKey (\ s a -> s{_gadGroupKey = a})

-- | The alias to be removed
gadAlias :: Lens' GroupsAliasesDelete' Text
gadAlias = lens _gadAlias (\ s a -> s{_gadAlias = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gadKey :: Lens' GroupsAliasesDelete' (Maybe Text)
gadKey = lens _gadKey (\ s a -> s{_gadKey = a})

-- | OAuth 2.0 token for the current user.
gadOauthToken :: Lens' GroupsAliasesDelete' (Maybe Text)
gadOauthToken
  = lens _gadOauthToken
      (\ s a -> s{_gadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gadFields :: Lens' GroupsAliasesDelete' (Maybe Text)
gadFields
  = lens _gadFields (\ s a -> s{_gadFields = a})

-- | Data format for the response.
gadAlt :: Lens' GroupsAliasesDelete' Alt
gadAlt = lens _gadAlt (\ s a -> s{_gadAlt = a})

instance GoogleRequest GroupsAliasesDelete' where
        type Rs GroupsAliasesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsAliasesDelete'{..}
          = go _gadQuotaUser (Just _gadPrettyPrint) _gadUserIp
              _gadGroupKey
              _gadAlias
              _gadKey
              _gadOauthToken
              _gadFields
              (Just _gadAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsAliasesDeleteResource)
                      r
                      u
