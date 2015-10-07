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
-- Module      : Network.Google.Resource.Blogger.Blogs.ListByUser
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogsListByUser@.
module Network.Google.Resource.Blogger.Blogs.ListByUser
    (
    -- * REST Resource
      BlogsListByUserResource

    -- * Creating a Request
    , blogsListByUser'
    , BlogsListByUser'

    -- * Request Lenses
    , blbuStatus
    , blbuQuotaUser
    , blbuPrettyPrint
    , blbuUserIP
    , blbuFetchUserInfo
    , blbuUserId
    , blbuRole
    , blbuKey
    , blbuView
    , blbuOAuthToken
    , blbuFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogsListByUser@ method which the
-- 'BlogsListByUser'' request conforms to.
type BlogsListByUserResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           QueryParams "status" BlogsListByUserStatus :>
             QueryParam "fetchUserInfo" Bool :>
               QueryParams "role" BlogsListByUserRole :>
                 QueryParam "view" BlogsListByUserView :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] BlogList

-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ 'blogsListByUser'' smart constructor.
data BlogsListByUser' = BlogsListByUser'
    { _blbuStatus        :: ![BlogsListByUserStatus]
    , _blbuQuotaUser     :: !(Maybe Text)
    , _blbuPrettyPrint   :: !Bool
    , _blbuUserIP        :: !(Maybe Text)
    , _blbuFetchUserInfo :: !(Maybe Bool)
    , _blbuUserId        :: !Text
    , _blbuRole          :: !(Maybe [BlogsListByUserRole])
    , _blbuKey           :: !(Maybe AuthKey)
    , _blbuView          :: !(Maybe BlogsListByUserView)
    , _blbuOAuthToken    :: !(Maybe OAuthToken)
    , _blbuFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsListByUser'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blbuStatus'
--
-- * 'blbuQuotaUser'
--
-- * 'blbuPrettyPrint'
--
-- * 'blbuUserIP'
--
-- * 'blbuFetchUserInfo'
--
-- * 'blbuUserId'
--
-- * 'blbuRole'
--
-- * 'blbuKey'
--
-- * 'blbuView'
--
-- * 'blbuOAuthToken'
--
-- * 'blbuFields'
blogsListByUser'
    :: Text -- ^ 'userId'
    -> BlogsListByUser'
blogsListByUser' pBlbuUserId_ =
    BlogsListByUser'
    { _blbuStatus = [BLBUSLive]
    , _blbuQuotaUser = Nothing
    , _blbuPrettyPrint = True
    , _blbuUserIP = Nothing
    , _blbuFetchUserInfo = Nothing
    , _blbuUserId = pBlbuUserId_
    , _blbuRole = Nothing
    , _blbuKey = Nothing
    , _blbuView = Nothing
    , _blbuOAuthToken = Nothing
    , _blbuFields = Nothing
    }

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
blbuStatus :: Lens' BlogsListByUser' [BlogsListByUserStatus]
blbuStatus
  = lens _blbuStatus (\ s a -> s{_blbuStatus = a}) .
      _Coerce

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blbuQuotaUser :: Lens' BlogsListByUser' (Maybe Text)
blbuQuotaUser
  = lens _blbuQuotaUser
      (\ s a -> s{_blbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
blbuPrettyPrint :: Lens' BlogsListByUser' Bool
blbuPrettyPrint
  = lens _blbuPrettyPrint
      (\ s a -> s{_blbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blbuUserIP :: Lens' BlogsListByUser' (Maybe Text)
blbuUserIP
  = lens _blbuUserIP (\ s a -> s{_blbuUserIP = a})

-- | Whether the response is a list of blogs with per-user information
-- instead of just blogs.
blbuFetchUserInfo :: Lens' BlogsListByUser' (Maybe Bool)
blbuFetchUserInfo
  = lens _blbuFetchUserInfo
      (\ s a -> s{_blbuFetchUserInfo = a})

-- | ID of the user whose blogs are to be fetched. Either the word \'self\'
-- (sans quote marks) or the user\'s profile identifier.
blbuUserId :: Lens' BlogsListByUser' Text
blbuUserId
  = lens _blbuUserId (\ s a -> s{_blbuUserId = a})

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
blbuRole :: Lens' BlogsListByUser' [BlogsListByUserRole]
blbuRole
  = lens _blbuRole (\ s a -> s{_blbuRole = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blbuKey :: Lens' BlogsListByUser' (Maybe AuthKey)
blbuKey = lens _blbuKey (\ s a -> s{_blbuKey = a})

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
blbuView :: Lens' BlogsListByUser' (Maybe BlogsListByUserView)
blbuView = lens _blbuView (\ s a -> s{_blbuView = a})

-- | OAuth 2.0 token for the current user.
blbuOAuthToken :: Lens' BlogsListByUser' (Maybe OAuthToken)
blbuOAuthToken
  = lens _blbuOAuthToken
      (\ s a -> s{_blbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
blbuFields :: Lens' BlogsListByUser' (Maybe Text)
blbuFields
  = lens _blbuFields (\ s a -> s{_blbuFields = a})

instance GoogleAuth BlogsListByUser' where
        _AuthKey = blbuKey . _Just
        _AuthToken = blbuOAuthToken . _Just

instance GoogleRequest BlogsListByUser' where
        type Rs BlogsListByUser' = BlogList
        request = requestWith bloggerRequest
        requestWith rq BlogsListByUser'{..}
          = go _blbuUserId _blbuStatus _blbuFetchUserInfo
              (_blbuRole ^. _Default)
              _blbuView
              _blbuQuotaUser
              (Just _blbuPrettyPrint)
              _blbuUserIP
              _blbuFields
              _blbuKey
              _blbuOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BlogsListByUserResource)
                      rq
