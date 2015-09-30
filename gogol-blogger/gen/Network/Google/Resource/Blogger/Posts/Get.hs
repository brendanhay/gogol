{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsGet@.
module Blogger.Posts.Get
    (
    -- * REST Resource
      PostsGetAPI

    -- * Creating a Request
    , postsGet
    , PostsGet

    -- * Request Lenses
    , pggFetchBody
    , pggQuotaUser
    , pggPrettyPrint
    , pggUserIp
    , pggFetchImages
    , pggBlogId
    , pggMaxComments
    , pggKey
    , pggView
    , pggPostId
    , pggOauthToken
    , pggFields
    , pggAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsGet@ which the
-- 'PostsGet' request conforms to.
type PostsGetAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "fetchImages" Bool :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "view" Text :> Get '[JSON] Post

-- | Get a post by ID.
--
-- /See:/ 'postsGet' smart constructor.
data PostsGet = PostsGet
    { _pggFetchBody   :: !Bool
    , _pggQuotaUser   :: !(Maybe Text)
    , _pggPrettyPrint :: !Bool
    , _pggUserIp      :: !(Maybe Text)
    , _pggFetchImages :: !(Maybe Bool)
    , _pggBlogId      :: !Text
    , _pggMaxComments :: !(Maybe Word32)
    , _pggKey         :: !(Maybe Text)
    , _pggView        :: !(Maybe Text)
    , _pggPostId      :: !Text
    , _pggOauthToken  :: !(Maybe Text)
    , _pggFields      :: !(Maybe Text)
    , _pggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggFetchBody'
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIp'
--
-- * 'pggFetchImages'
--
-- * 'pggBlogId'
--
-- * 'pggMaxComments'
--
-- * 'pggKey'
--
-- * 'pggView'
--
-- * 'pggPostId'
--
-- * 'pggOauthToken'
--
-- * 'pggFields'
--
-- * 'pggAlt'
postsGet
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsGet
postsGet pPggBlogId_ pPggPostId_ =
    PostsGet
    { _pggFetchBody = True
    , _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIp = Nothing
    , _pggFetchImages = Nothing
    , _pggBlogId = pPggBlogId_
    , _pggMaxComments = Nothing
    , _pggKey = Nothing
    , _pggView = Nothing
    , _pggPostId = pPggPostId_
    , _pggOauthToken = Nothing
    , _pggFields = Nothing
    , _pggAlt = "json"
    }

-- | Whether the body content of the post is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pggFetchBody :: Lens' PostsGet' Bool
pggFetchBody
  = lens _pggFetchBody (\ s a -> s{_pggFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' PostsGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' PostsGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIp :: Lens' PostsGet' (Maybe Text)
pggUserIp
  = lens _pggUserIp (\ s a -> s{_pggUserIp = a})

-- | Whether image URL metadata for each post is included (default: false).
pggFetchImages :: Lens' PostsGet' (Maybe Bool)
pggFetchImages
  = lens _pggFetchImages
      (\ s a -> s{_pggFetchImages = a})

-- | ID of the blog to fetch the post from.
pggBlogId :: Lens' PostsGet' Text
pggBlogId
  = lens _pggBlogId (\ s a -> s{_pggBlogId = a})

-- | Maximum number of comments to pull back on a post.
pggMaxComments :: Lens' PostsGet' (Maybe Word32)
pggMaxComments
  = lens _pggMaxComments
      (\ s a -> s{_pggMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' PostsGet' (Maybe Text)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pggView :: Lens' PostsGet' (Maybe Text)
pggView = lens _pggView (\ s a -> s{_pggView = a})

-- | The ID of the post
pggPostId :: Lens' PostsGet' Text
pggPostId
  = lens _pggPostId (\ s a -> s{_pggPostId = a})

-- | OAuth 2.0 token for the current user.
pggOauthToken :: Lens' PostsGet' (Maybe Text)
pggOauthToken
  = lens _pggOauthToken
      (\ s a -> s{_pggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PostsGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

-- | Data format for the response.
pggAlt :: Lens' PostsGet' Text
pggAlt = lens _pggAlt (\ s a -> s{_pggAlt = a})

instance GoogleRequest PostsGet' where
        type Rs PostsGet' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsGet{..}
          = go (Just _pggFetchBody) _pggQuotaUser
              _pggPrettyPrint
              _pggUserIp
              _pggFetchImages
              _pggBlogId
              _pggMaxComments
              _pggKey
              _pggView
              _pggPostId
              _pggOauthToken
              _pggFields
              _pggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsGetAPI) r u
