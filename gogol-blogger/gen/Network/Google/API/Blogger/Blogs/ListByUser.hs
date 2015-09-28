{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Blogs.ListByUser
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.listByUser@.
module Network.Google.API.Blogger.Blogs.ListByUser
    (
    -- * REST Resource
      BlogsListByUserAPI

    -- * Creating a Request
    , blogsListByUser'
    , BlogsListByUser'

    -- * Request Lenses
    , blbuStatus
    , blbuQuotaUser
    , blbuPrettyPrint
    , blbuUserIp
    , blbuFetchUserInfo
    , blbuUserId
    , blbuRole
    , blbuKey
    , blbuView
    , blbuOauthToken
    , blbuFields
    , blbuAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.blogs.listByUser which the
-- 'BlogsListByUser'' request conforms to.
type BlogsListByUserAPI =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           QueryParam "status" BlogsListByUser'Status :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fetchUserInfo" Bool :>
                     QueryParam "role" BlogsListByUser'Role :>
                       QueryParam "key" Text :>
                         QueryParam "view" BlogsListByUser'View :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] BlogList

-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ 'blogsListByUser'' smart constructor.
data BlogsListByUser' = BlogsListByUser'
    { _blbuStatus        :: !BlogsListByUser'Status
    , _blbuQuotaUser     :: !(Maybe Text)
    , _blbuPrettyPrint   :: !Bool
    , _blbuUserIp        :: !(Maybe Text)
    , _blbuFetchUserInfo :: !(Maybe Bool)
    , _blbuUserId        :: !Text
    , _blbuRole          :: !(Maybe BlogsListByUser'Role)
    , _blbuKey           :: !(Maybe Text)
    , _blbuView          :: !(Maybe BlogsListByUser'View)
    , _blbuOauthToken    :: !(Maybe Text)
    , _blbuFields        :: !(Maybe Text)
    , _blbuAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'blbuUserIp'
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
-- * 'blbuOauthToken'
--
-- * 'blbuFields'
--
-- * 'blbuAlt'
blogsListByUser'
    :: Text -- ^ 'userId'
    -> BlogsListByUser'
blogsListByUser' pBlbuUserId_ =
    BlogsListByUser'
    { _blbuStatus = BLBUSLive
    , _blbuQuotaUser = Nothing
    , _blbuPrettyPrint = True
    , _blbuUserIp = Nothing
    , _blbuFetchUserInfo = Nothing
    , _blbuUserId = pBlbuUserId_
    , _blbuRole = Nothing
    , _blbuKey = Nothing
    , _blbuView = Nothing
    , _blbuOauthToken = Nothing
    , _blbuFields = Nothing
    , _blbuAlt = JSON
    }

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
blbuStatus :: Lens' BlogsListByUser' BlogsListByUser'Status
blbuStatus
  = lens _blbuStatus (\ s a -> s{_blbuStatus = a})

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
blbuUserIp :: Lens' BlogsListByUser' (Maybe Text)
blbuUserIp
  = lens _blbuUserIp (\ s a -> s{_blbuUserIp = a})

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
blbuRole :: Lens' BlogsListByUser' (Maybe BlogsListByUser'Role)
blbuRole = lens _blbuRole (\ s a -> s{_blbuRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blbuKey :: Lens' BlogsListByUser' (Maybe Text)
blbuKey = lens _blbuKey (\ s a -> s{_blbuKey = a})

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
blbuView :: Lens' BlogsListByUser' (Maybe BlogsListByUser'View)
blbuView = lens _blbuView (\ s a -> s{_blbuView = a})

-- | OAuth 2.0 token for the current user.
blbuOauthToken :: Lens' BlogsListByUser' (Maybe Text)
blbuOauthToken
  = lens _blbuOauthToken
      (\ s a -> s{_blbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
blbuFields :: Lens' BlogsListByUser' (Maybe Text)
blbuFields
  = lens _blbuFields (\ s a -> s{_blbuFields = a})

-- | Data format for the response.
blbuAlt :: Lens' BlogsListByUser' Alt
blbuAlt = lens _blbuAlt (\ s a -> s{_blbuAlt = a})

instance GoogleRequest BlogsListByUser' where
        type Rs BlogsListByUser' = BlogList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogsListByUser'{..}
          = go (Just _blbuStatus) _blbuQuotaUser
              (Just _blbuPrettyPrint)
              _blbuUserIp
              _blbuFetchUserInfo
              _blbuUserId
              _blbuRole
              _blbuKey
              _blbuView
              _blbuOauthToken
              _blbuFields
              (Just _blbuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BlogsListByUserAPI)
                      r
                      u
