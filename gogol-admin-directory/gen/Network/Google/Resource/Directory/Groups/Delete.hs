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
-- Module      : Network.Google.Resource.Directory.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsDelete@.
module Network.Google.Resource.Directory.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete'
    , GroupsDelete'

    -- * Request Lenses
    , gdQuotaUser
    , gdPrettyPrint
    , gdUserIP
    , gdGroupKey
    , gdKey
    , gdOAuthToken
    , gdFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsDelete@ method which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete Group
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdQuotaUser   :: !(Maybe Text)
    , _gdPrettyPrint :: !Bool
    , _gdUserIP      :: !(Maybe Text)
    , _gdGroupKey    :: !Text
    , _gdKey         :: !(Maybe AuthKey)
    , _gdOAuthToken  :: !(Maybe OAuthToken)
    , _gdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdQuotaUser'
--
-- * 'gdPrettyPrint'
--
-- * 'gdUserIP'
--
-- * 'gdGroupKey'
--
-- * 'gdKey'
--
-- * 'gdOAuthToken'
--
-- * 'gdFields'
groupsDelete'
    :: Text -- ^ 'groupKey'
    -> GroupsDelete'
groupsDelete' pGdGroupKey_ =
    GroupsDelete'
    { _gdQuotaUser = Nothing
    , _gdPrettyPrint = True
    , _gdUserIP = Nothing
    , _gdGroupKey = pGdGroupKey_
    , _gdKey = Nothing
    , _gdOAuthToken = Nothing
    , _gdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gdQuotaUser :: Lens' GroupsDelete' (Maybe Text)
gdQuotaUser
  = lens _gdQuotaUser (\ s a -> s{_gdQuotaUser = a})

-- | Returns response with indentations and line breaks.
gdPrettyPrint :: Lens' GroupsDelete' Bool
gdPrettyPrint
  = lens _gdPrettyPrint
      (\ s a -> s{_gdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gdUserIP :: Lens' GroupsDelete' (Maybe Text)
gdUserIP = lens _gdUserIP (\ s a -> s{_gdUserIP = a})

-- | Email or immutable Id of the group
gdGroupKey :: Lens' GroupsDelete' Text
gdGroupKey
  = lens _gdGroupKey (\ s a -> s{_gdGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gdKey :: Lens' GroupsDelete' (Maybe AuthKey)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | OAuth 2.0 token for the current user.
gdOAuthToken :: Lens' GroupsDelete' (Maybe OAuthToken)
gdOAuthToken
  = lens _gdOAuthToken (\ s a -> s{_gdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gdFields :: Lens' GroupsDelete' (Maybe Text)
gdFields = lens _gdFields (\ s a -> s{_gdFields = a})

instance GoogleAuth GroupsDelete' where
        _AuthKey = gdKey . _Just
        _AuthToken = gdOAuthToken . _Just

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = ()
        request = requestWith directoryRequest
        requestWith rq GroupsDelete'{..}
          = go _gdGroupKey _gdQuotaUser (Just _gdPrettyPrint)
              _gdUserIP
              _gdFields
              _gdKey
              _gdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy GroupsDeleteResource)
                      rq
