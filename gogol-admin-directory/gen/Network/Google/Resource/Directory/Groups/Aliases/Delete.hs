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
    , gadUserIP
    , gadGroupKey
    , gadAlias
    , gadKey
    , gadOAuthToken
    , gadFields
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
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove a alias for the group
--
-- /See:/ 'groupsAliasesDelete'' smart constructor.
data GroupsAliasesDelete' = GroupsAliasesDelete'
    { _gadQuotaUser   :: !(Maybe Text)
    , _gadPrettyPrint :: !Bool
    , _gadUserIP      :: !(Maybe Text)
    , _gadGroupKey    :: !Text
    , _gadAlias       :: !Text
    , _gadKey         :: !(Maybe Key)
    , _gadOAuthToken  :: !(Maybe OAuthToken)
    , _gadFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadQuotaUser'
--
-- * 'gadPrettyPrint'
--
-- * 'gadUserIP'
--
-- * 'gadGroupKey'
--
-- * 'gadAlias'
--
-- * 'gadKey'
--
-- * 'gadOAuthToken'
--
-- * 'gadFields'
groupsAliasesDelete'
    :: Text -- ^ 'groupKey'
    -> Text -- ^ 'alias'
    -> GroupsAliasesDelete'
groupsAliasesDelete' pGadGroupKey_ pGadAlias_ =
    GroupsAliasesDelete'
    { _gadQuotaUser = Nothing
    , _gadPrettyPrint = True
    , _gadUserIP = Nothing
    , _gadGroupKey = pGadGroupKey_
    , _gadAlias = pGadAlias_
    , _gadKey = Nothing
    , _gadOAuthToken = Nothing
    , _gadFields = Nothing
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
gadUserIP :: Lens' GroupsAliasesDelete' (Maybe Text)
gadUserIP
  = lens _gadUserIP (\ s a -> s{_gadUserIP = a})

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
gadKey :: Lens' GroupsAliasesDelete' (Maybe Key)
gadKey = lens _gadKey (\ s a -> s{_gadKey = a})

-- | OAuth 2.0 token for the current user.
gadOAuthToken :: Lens' GroupsAliasesDelete' (Maybe OAuthToken)
gadOAuthToken
  = lens _gadOAuthToken
      (\ s a -> s{_gadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gadFields :: Lens' GroupsAliasesDelete' (Maybe Text)
gadFields
  = lens _gadFields (\ s a -> s{_gadFields = a})

instance GoogleAuth GroupsAliasesDelete' where
        authKey = gadKey . _Just
        authToken = gadOAuthToken . _Just

instance GoogleRequest GroupsAliasesDelete' where
        type Rs GroupsAliasesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsAliasesDelete'{..}
          = go _gadQuotaUser (Just _gadPrettyPrint) _gadUserIP
              _gadGroupKey
              _gadAlias
              _gadKey
              _gadOAuthToken
              _gadFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsAliasesDeleteResource)
                      r
                      u
