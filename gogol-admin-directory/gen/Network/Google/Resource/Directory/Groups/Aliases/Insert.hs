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
    , gaiUserIP
    , gaiGroupKey
    , gaiPayload
    , gaiKey
    , gaiOAuthToken
    , gaiFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsAliasesInsert@ method which the
-- 'GroupsAliasesInsert'' request conforms to.
type GroupsAliasesInsertResource =
     "groups" :>
       Capture "groupKey" Text :>
         "aliases" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Add a alias for the group
--
-- /See:/ 'groupsAliasesInsert'' smart constructor.
data GroupsAliasesInsert' = GroupsAliasesInsert'
    { _gaiQuotaUser   :: !(Maybe Text)
    , _gaiPrettyPrint :: !Bool
    , _gaiUserIP      :: !(Maybe Text)
    , _gaiGroupKey    :: !Text
    , _gaiPayload     :: !Alias
    , _gaiKey         :: !(Maybe AuthKey)
    , _gaiOAuthToken  :: !(Maybe OAuthToken)
    , _gaiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiQuotaUser'
--
-- * 'gaiPrettyPrint'
--
-- * 'gaiUserIP'
--
-- * 'gaiGroupKey'
--
-- * 'gaiPayload'
--
-- * 'gaiKey'
--
-- * 'gaiOAuthToken'
--
-- * 'gaiFields'
groupsAliasesInsert'
    :: Text -- ^ 'groupKey'
    -> Alias -- ^ 'payload'
    -> GroupsAliasesInsert'
groupsAliasesInsert' pGaiGroupKey_ pGaiPayload_ =
    GroupsAliasesInsert'
    { _gaiQuotaUser = Nothing
    , _gaiPrettyPrint = True
    , _gaiUserIP = Nothing
    , _gaiGroupKey = pGaiGroupKey_
    , _gaiPayload = pGaiPayload_
    , _gaiKey = Nothing
    , _gaiOAuthToken = Nothing
    , _gaiFields = Nothing
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
gaiUserIP :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiUserIP
  = lens _gaiUserIP (\ s a -> s{_gaiUserIP = a})

-- | Email or immutable Id of the group
gaiGroupKey :: Lens' GroupsAliasesInsert' Text
gaiGroupKey
  = lens _gaiGroupKey (\ s a -> s{_gaiGroupKey = a})

-- | Multipart request metadata.
gaiPayload :: Lens' GroupsAliasesInsert' Alias
gaiPayload
  = lens _gaiPayload (\ s a -> s{_gaiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaiKey :: Lens' GroupsAliasesInsert' (Maybe AuthKey)
gaiKey = lens _gaiKey (\ s a -> s{_gaiKey = a})

-- | OAuth 2.0 token for the current user.
gaiOAuthToken :: Lens' GroupsAliasesInsert' (Maybe OAuthToken)
gaiOAuthToken
  = lens _gaiOAuthToken
      (\ s a -> s{_gaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaiFields :: Lens' GroupsAliasesInsert' (Maybe Text)
gaiFields
  = lens _gaiFields (\ s a -> s{_gaiFields = a})

instance GoogleAuth GroupsAliasesInsert' where
        _AuthKey = gaiKey . _Just
        _AuthToken = gaiOAuthToken . _Just

instance GoogleRequest GroupsAliasesInsert' where
        type Rs GroupsAliasesInsert' = Alias
        request = requestWith directoryRequest
        requestWith rq GroupsAliasesInsert'{..}
          = go _gaiGroupKey _gaiQuotaUser
              (Just _gaiPrettyPrint)
              _gaiUserIP
              _gaiFields
              _gaiKey
              _gaiOAuthToken
              (Just AltJSON)
              _gaiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy GroupsAliasesInsertResource)
                      rq
