{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a post. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsPatch@.
module Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchAPI

    -- * Creating a Request
    , postsPatch
    , PostsPatch

    -- * Request Lenses
    , pppFetchBody
    , pppQuotaUser
    , pppPrettyPrint
    , pppUserIp
    , pppFetchImages
    , pppBlogId
    , pppMaxComments
    , pppKey
    , pppRevert
    , pppPostId
    , pppOauthToken
    , pppPublish
    , pppFields
    , pppAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPatch@ which the
-- 'PostsPatch' request conforms to.
type PostsPatchAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "fetchImages" Bool :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "revert" Bool :>
                     QueryParam "publish" Bool :> Patch '[JSON] Post

-- | Update a post. This method supports patch semantics.
--
-- /See:/ 'postsPatch' smart constructor.
data PostsPatch = PostsPatch
    { _pppFetchBody   :: !Bool
    , _pppQuotaUser   :: !(Maybe Text)
    , _pppPrettyPrint :: !Bool
    , _pppUserIp      :: !(Maybe Text)
    , _pppFetchImages :: !(Maybe Bool)
    , _pppBlogId      :: !Text
    , _pppMaxComments :: !(Maybe Word32)
    , _pppKey         :: !(Maybe Text)
    , _pppRevert      :: !(Maybe Bool)
    , _pppPostId      :: !Text
    , _pppOauthToken  :: !(Maybe Text)
    , _pppPublish     :: !(Maybe Bool)
    , _pppFields      :: !(Maybe Text)
    , _pppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppFetchBody'
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppUserIp'
--
-- * 'pppFetchImages'
--
-- * 'pppBlogId'
--
-- * 'pppMaxComments'
--
-- * 'pppKey'
--
-- * 'pppRevert'
--
-- * 'pppPostId'
--
-- * 'pppOauthToken'
--
-- * 'pppPublish'
--
-- * 'pppFields'
--
-- * 'pppAlt'
postsPatch
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPatch
postsPatch pPppBlogId_ pPppPostId_ =
    PostsPatch
    { _pppFetchBody = True
    , _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIp = Nothing
    , _pppFetchImages = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppMaxComments = Nothing
    , _pppKey = Nothing
    , _pppRevert = Nothing
    , _pppPostId = pPppPostId_
    , _pppOauthToken = Nothing
    , _pppPublish = Nothing
    , _pppFields = Nothing
    , _pppAlt = "json"
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
pppFetchBody :: Lens' PostsPatch' Bool
pppFetchBody
  = lens _pppFetchBody (\ s a -> s{_pppFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PostsPatch' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PostsPatch' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIp :: Lens' PostsPatch' (Maybe Text)
pppUserIp
  = lens _pppUserIp (\ s a -> s{_pppUserIp = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
pppFetchImages :: Lens' PostsPatch' (Maybe Bool)
pppFetchImages
  = lens _pppFetchImages
      (\ s a -> s{_pppFetchImages = a})

-- | The ID of the Blog.
pppBlogId :: Lens' PostsPatch' Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

-- | Maximum number of comments to retrieve with the returned post.
pppMaxComments :: Lens' PostsPatch' (Maybe Word32)
pppMaxComments
  = lens _pppMaxComments
      (\ s a -> s{_pppMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PostsPatch' (Maybe Text)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
pppRevert :: Lens' PostsPatch' (Maybe Bool)
pppRevert
  = lens _pppRevert (\ s a -> s{_pppRevert = a})

-- | The ID of the Post.
pppPostId :: Lens' PostsPatch' Text
pppPostId
  = lens _pppPostId (\ s a -> s{_pppPostId = a})

-- | OAuth 2.0 token for the current user.
pppOauthToken :: Lens' PostsPatch' (Maybe Text)
pppOauthToken
  = lens _pppOauthToken
      (\ s a -> s{_pppOauthToken = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
pppPublish :: Lens' PostsPatch' (Maybe Bool)
pppPublish
  = lens _pppPublish (\ s a -> s{_pppPublish = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PostsPatch' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

-- | Data format for the response.
pppAlt :: Lens' PostsPatch' Text
pppAlt = lens _pppAlt (\ s a -> s{_pppAlt = a})

instance GoogleRequest PostsPatch' where
        type Rs PostsPatch' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPatch{..}
          = go (Just _pppFetchBody) _pppQuotaUser
              _pppPrettyPrint
              _pppUserIp
              _pppFetchImages
              _pppBlogId
              _pppMaxComments
              _pppKey
              _pppRevert
              _pppPostId
              _pppOauthToken
              _pppPublish
              _pppFields
              _pppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsPatchAPI) r u
