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
-- Module      : Network.Google.Resource.Directory.Members.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all members in a group (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersList@.
module Network.Google.Resource.Directory.Members.List
    (
    -- * REST Resource
      MembersListResource

    -- * Creating a Request
    , membersList'
    , MembersList'

    -- * Request Lenses
    , mlQuotaUser
    , mlRoles
    , mlPrettyPrint
    , mlUserIP
    , mlGroupKey
    , mlKey
    , mlPageToken
    , mlOAuthToken
    , mlMaxResults
    , mlFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersList@ which the
-- 'MembersList'' request conforms to.
type MembersListResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           QueryParam "roles" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Members

-- | Retrieve all members in a group (paginated)
--
-- /See:/ 'membersList'' smart constructor.
data MembersList' = MembersList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlRoles       :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlUserIP      :: !(Maybe Text)
    , _mlGroupKey    :: !Text
    , _mlKey         :: !(Maybe Key)
    , _mlPageToken   :: !(Maybe Text)
    , _mlOAuthToken  :: !(Maybe OAuthToken)
    , _mlMaxResults  :: !(Maybe Int32)
    , _mlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlRoles'
--
-- * 'mlPrettyPrint'
--
-- * 'mlUserIP'
--
-- * 'mlGroupKey'
--
-- * 'mlKey'
--
-- * 'mlPageToken'
--
-- * 'mlOAuthToken'
--
-- * 'mlMaxResults'
--
-- * 'mlFields'
membersList'
    :: Text -- ^ 'groupKey'
    -> MembersList'
membersList' pMlGroupKey_ =
    MembersList'
    { _mlQuotaUser = Nothing
    , _mlRoles = Nothing
    , _mlPrettyPrint = True
    , _mlUserIP = Nothing
    , _mlGroupKey = pMlGroupKey_
    , _mlKey = Nothing
    , _mlPageToken = Nothing
    , _mlOAuthToken = Nothing
    , _mlMaxResults = Nothing
    , _mlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MembersList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Comma separated role values to filter list results on.
mlRoles :: Lens' MembersList' (Maybe Text)
mlRoles = lens _mlRoles (\ s a -> s{_mlRoles = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MembersList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIP :: Lens' MembersList' (Maybe Text)
mlUserIP = lens _mlUserIP (\ s a -> s{_mlUserIP = a})

-- | Email or immutable Id of the group
mlGroupKey :: Lens' MembersList' Text
mlGroupKey
  = lens _mlGroupKey (\ s a -> s{_mlGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MembersList' (Maybe Key)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | Token to specify next page in the list
mlPageToken :: Lens' MembersList' (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | OAuth 2.0 token for the current user.
mlOAuthToken :: Lens' MembersList' (Maybe OAuthToken)
mlOAuthToken
  = lens _mlOAuthToken (\ s a -> s{_mlOAuthToken = a})

-- | Maximum number of results to return. Default is 200
mlMaxResults :: Lens' MembersList' (Maybe Int32)
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MembersList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

instance GoogleAuth MembersList' where
        authKey = mlKey . _Just
        authToken = mlOAuthToken . _Just

instance GoogleRequest MembersList' where
        type Rs MembersList' = Members
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u MembersList'{..}
          = go _mlGroupKey _mlRoles _mlPageToken _mlMaxResults
              _mlQuotaUser
              (Just _mlPrettyPrint)
              _mlUserIP
              _mlFields
              _mlKey
              _mlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MembersListResource)
                      r
                      u
