{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsDelete@.
module Blogger.Posts.Delete
    (
    -- * REST Resource
      PostsDeleteAPI

    -- * Creating a Request
    , postsDelete
    , PostsDelete

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddUserIp
    , pddBlogId
    , pddKey
    , pddPostId
    , pddOauthToken
    , pddFields
    , pddAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsDelete@ which the
-- 'PostsDelete' request conforms to.
type PostsDeleteAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :> Capture "postId" Text :> Delete '[JSON] ()

-- | Delete a post by ID.
--
-- /See:/ 'postsDelete' smart constructor.
data PostsDelete = PostsDelete
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddUserIp      :: !(Maybe Text)
    , _pddBlogId      :: !Text
    , _pddKey         :: !(Maybe Text)
    , _pddPostId      :: !Text
    , _pddOauthToken  :: !(Maybe Text)
    , _pddFields      :: !(Maybe Text)
    , _pddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIp'
--
-- * 'pddBlogId'
--
-- * 'pddKey'
--
-- * 'pddPostId'
--
-- * 'pddOauthToken'
--
-- * 'pddFields'
--
-- * 'pddAlt'
postsDelete
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsDelete
postsDelete pPddBlogId_ pPddPostId_ =
    PostsDelete
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIp = Nothing
    , _pddBlogId = pPddBlogId_
    , _pddKey = Nothing
    , _pddPostId = pPddPostId_
    , _pddOauthToken = Nothing
    , _pddFields = Nothing
    , _pddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' PostsDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' PostsDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIp :: Lens' PostsDelete' (Maybe Text)
pddUserIp
  = lens _pddUserIp (\ s a -> s{_pddUserIp = a})

-- | The ID of the Blog.
pddBlogId :: Lens' PostsDelete' Text
pddBlogId
  = lens _pddBlogId (\ s a -> s{_pddBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' PostsDelete' (Maybe Text)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | The ID of the Post.
pddPostId :: Lens' PostsDelete' Text
pddPostId
  = lens _pddPostId (\ s a -> s{_pddPostId = a})

-- | OAuth 2.0 token for the current user.
pddOauthToken :: Lens' PostsDelete' (Maybe Text)
pddOauthToken
  = lens _pddOauthToken
      (\ s a -> s{_pddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' PostsDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

-- | Data format for the response.
pddAlt :: Lens' PostsDelete' Text
pddAlt = lens _pddAlt (\ s a -> s{_pddAlt = a})

instance GoogleRequest PostsDelete' where
        type Rs PostsDelete' = ()
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsDelete{..}
          = go _pddQuotaUser _pddPrettyPrint _pddUserIp
              _pddBlogId
              _pddKey
              _pddPostId
              _pddOauthToken
              _pddFields
              _pddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsDeleteAPI) r u
