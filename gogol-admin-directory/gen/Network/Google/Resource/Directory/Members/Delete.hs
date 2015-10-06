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
-- Module      : Network.Google.Resource.Directory.Members.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove membership.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersDelete@.
module Network.Google.Resource.Directory.Members.Delete
    (
    -- * REST Resource
      MembersDeleteResource

    -- * Creating a Request
    , membersDelete'
    , MembersDelete'

    -- * Request Lenses
    , mdQuotaUser
    , mdMemberKey
    , mdPrettyPrint
    , mdUserIP
    , mdGroupKey
    , mdKey
    , mdOAuthToken
    , mdFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersDelete@ which the
-- 'MembersDelete'' request conforms to.
type MembersDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove membership.
--
-- /See:/ 'membersDelete'' smart constructor.
data MembersDelete' = MembersDelete'
    { _mdQuotaUser   :: !(Maybe Text)
    , _mdMemberKey   :: !Text
    , _mdPrettyPrint :: !Bool
    , _mdUserIP      :: !(Maybe Text)
    , _mdGroupKey    :: !Text
    , _mdKey         :: !(Maybe AuthKey)
    , _mdOAuthToken  :: !(Maybe OAuthToken)
    , _mdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdQuotaUser'
--
-- * 'mdMemberKey'
--
-- * 'mdPrettyPrint'
--
-- * 'mdUserIP'
--
-- * 'mdGroupKey'
--
-- * 'mdKey'
--
-- * 'mdOAuthToken'
--
-- * 'mdFields'
membersDelete'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersDelete'
membersDelete' pMdMemberKey_ pMdGroupKey_ =
    MembersDelete'
    { _mdQuotaUser = Nothing
    , _mdMemberKey = pMdMemberKey_
    , _mdPrettyPrint = True
    , _mdUserIP = Nothing
    , _mdGroupKey = pMdGroupKey_
    , _mdKey = Nothing
    , _mdOAuthToken = Nothing
    , _mdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdQuotaUser :: Lens' MembersDelete' (Maybe Text)
mdQuotaUser
  = lens _mdQuotaUser (\ s a -> s{_mdQuotaUser = a})

-- | Email or immutable Id of the member
mdMemberKey :: Lens' MembersDelete' Text
mdMemberKey
  = lens _mdMemberKey (\ s a -> s{_mdMemberKey = a})

-- | Returns response with indentations and line breaks.
mdPrettyPrint :: Lens' MembersDelete' Bool
mdPrettyPrint
  = lens _mdPrettyPrint
      (\ s a -> s{_mdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdUserIP :: Lens' MembersDelete' (Maybe Text)
mdUserIP = lens _mdUserIP (\ s a -> s{_mdUserIP = a})

-- | Email or immutable Id of the group
mdGroupKey :: Lens' MembersDelete' Text
mdGroupKey
  = lens _mdGroupKey (\ s a -> s{_mdGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdKey :: Lens' MembersDelete' (Maybe AuthKey)
mdKey = lens _mdKey (\ s a -> s{_mdKey = a})

-- | OAuth 2.0 token for the current user.
mdOAuthToken :: Lens' MembersDelete' (Maybe OAuthToken)
mdOAuthToken
  = lens _mdOAuthToken (\ s a -> s{_mdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdFields :: Lens' MembersDelete' (Maybe Text)
mdFields = lens _mdFields (\ s a -> s{_mdFields = a})

instance GoogleAuth MembersDelete' where
        _AuthKey = mdKey . _Just
        _AuthToken = mdOAuthToken . _Just

instance GoogleRequest MembersDelete' where
        type Rs MembersDelete' = ()
        request = requestWith directoryRequest
        requestWith rq MembersDelete'{..}
          = go _mdGroupKey _mdMemberKey _mdQuotaUser
              (Just _mdPrettyPrint)
              _mdUserIP
              _mdFields
              _mdKey
              _mdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy MembersDeleteResource)
                      rq
