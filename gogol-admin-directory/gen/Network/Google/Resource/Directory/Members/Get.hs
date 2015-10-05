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
-- Module      : Network.Google.Resource.Directory.Members.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Group Member
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersGet@.
module Network.Google.Resource.Directory.Members.Get
    (
    -- * REST Resource
      MembersGetResource

    -- * Creating a Request
    , membersGet'
    , MembersGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgMemberKey
    , mgPrettyPrint
    , mgUserIP
    , mgGroupKey
    , mgKey
    , mgOAuthToken
    , mgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersGet@ which the
-- 'MembersGet'' request conforms to.
type MembersGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Member

-- | Retrieve Group Member
--
-- /See:/ 'membersGet'' smart constructor.
data MembersGet' = MembersGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgMemberKey   :: !Text
    , _mgPrettyPrint :: !Bool
    , _mgUserIP      :: !(Maybe Text)
    , _mgGroupKey    :: !Text
    , _mgKey         :: !(Maybe AuthKey)
    , _mgOAuthToken  :: !(Maybe OAuthToken)
    , _mgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgMemberKey'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIP'
--
-- * 'mgGroupKey'
--
-- * 'mgKey'
--
-- * 'mgOAuthToken'
--
-- * 'mgFields'
membersGet'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> MembersGet'
membersGet' pMgMemberKey_ pMgGroupKey_ =
    MembersGet'
    { _mgQuotaUser = Nothing
    , _mgMemberKey = pMgMemberKey_
    , _mgPrettyPrint = True
    , _mgUserIP = Nothing
    , _mgGroupKey = pMgGroupKey_
    , _mgKey = Nothing
    , _mgOAuthToken = Nothing
    , _mgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MembersGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Email or immutable Id of the member
mgMemberKey :: Lens' MembersGet' Text
mgMemberKey
  = lens _mgMemberKey (\ s a -> s{_mgMemberKey = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MembersGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIP :: Lens' MembersGet' (Maybe Text)
mgUserIP = lens _mgUserIP (\ s a -> s{_mgUserIP = a})

-- | Email or immutable Id of the group
mgGroupKey :: Lens' MembersGet' Text
mgGroupKey
  = lens _mgGroupKey (\ s a -> s{_mgGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MembersGet' (Maybe AuthKey)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | OAuth 2.0 token for the current user.
mgOAuthToken :: Lens' MembersGet' (Maybe OAuthToken)
mgOAuthToken
  = lens _mgOAuthToken (\ s a -> s{_mgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MembersGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

instance GoogleAuth MembersGet' where
        authKey = mgKey . _Just
        authToken = mgOAuthToken . _Just

instance GoogleRequest MembersGet' where
        type Rs MembersGet' = Member
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u MembersGet'{..}
          = go _mgGroupKey _mgMemberKey _mgQuotaUser
              (Just _mgPrettyPrint)
              _mgUserIP
              _mgFields
              _mgKey
              _mgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy MembersGetResource)
                      r
                      u
