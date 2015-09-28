{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Posts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a post. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.patch@.
module Network.Google.API.Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchAPI

    -- * Creating a Request
    , postsPatch'
    , PostsPatch'

    -- * Request Lenses
    , ppFetchBody
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIp
    , ppFetchImages
    , ppBlogId
    , ppMaxComments
    , ppKey
    , ppRevert
    , ppPostId
    , ppOauthToken
    , ppPublish
    , ppFields
    , ppAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.posts.patch which the
-- 'PostsPatch'' request conforms to.
type PostsPatchAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fetchImages" Bool :>
                       QueryParam "maxComments" Word32 :>
                         QueryParam "key" Text :>
                           QueryParam "revert" Bool :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "publish" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Patch '[JSON] Post

-- | Update a post. This method supports patch semantics.
--
-- /See:/ 'postsPatch'' smart constructor.
data PostsPatch' = PostsPatch'
    { _ppFetchBody   :: !Bool
    , _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppUserIp      :: !(Maybe Text)
    , _ppFetchImages :: !(Maybe Bool)
    , _ppBlogId      :: !Text
    , _ppMaxComments :: !(Maybe Word32)
    , _ppKey         :: !(Maybe Text)
    , _ppRevert      :: !(Maybe Bool)
    , _ppPostId      :: !Text
    , _ppOauthToken  :: !(Maybe Text)
    , _ppPublish     :: !(Maybe Bool)
    , _ppFields      :: !(Maybe Text)
    , _ppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppFetchBody'
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppUserIp'
--
-- * 'ppFetchImages'
--
-- * 'ppBlogId'
--
-- * 'ppMaxComments'
--
-- * 'ppKey'
--
-- * 'ppRevert'
--
-- * 'ppPostId'
--
-- * 'ppOauthToken'
--
-- * 'ppPublish'
--
-- * 'ppFields'
--
-- * 'ppAlt'
postsPatch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPatch'
postsPatch' pPpBlogId_ pPpPostId_ =
    PostsPatch'
    { _ppFetchBody = True
    , _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIp = Nothing
    , _ppFetchImages = Nothing
    , _ppBlogId = pPpBlogId_
    , _ppMaxComments = Nothing
    , _ppKey = Nothing
    , _ppRevert = Nothing
    , _ppPostId = pPpPostId_
    , _ppOauthToken = Nothing
    , _ppPublish = Nothing
    , _ppFields = Nothing
    , _ppAlt = JSON
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
ppFetchBody :: Lens' PostsPatch' Bool
ppFetchBody
  = lens _ppFetchBody (\ s a -> s{_ppFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppQuotaUser :: Lens' PostsPatch' (Maybe Text)
ppQuotaUser
  = lens _ppQuotaUser (\ s a -> s{_ppQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppPrettyPrint :: Lens' PostsPatch' Bool
ppPrettyPrint
  = lens _ppPrettyPrint
      (\ s a -> s{_ppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppUserIp :: Lens' PostsPatch' (Maybe Text)
ppUserIp = lens _ppUserIp (\ s a -> s{_ppUserIp = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
ppFetchImages :: Lens' PostsPatch' (Maybe Bool)
ppFetchImages
  = lens _ppFetchImages
      (\ s a -> s{_ppFetchImages = a})

-- | The ID of the Blog.
ppBlogId :: Lens' PostsPatch' Text
ppBlogId = lens _ppBlogId (\ s a -> s{_ppBlogId = a})

-- | Maximum number of comments to retrieve with the returned post.
ppMaxComments :: Lens' PostsPatch' (Maybe Word32)
ppMaxComments
  = lens _ppMaxComments
      (\ s a -> s{_ppMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PostsPatch' (Maybe Text)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
ppRevert :: Lens' PostsPatch' (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

-- | The ID of the Post.
ppPostId :: Lens' PostsPatch' Text
ppPostId = lens _ppPostId (\ s a -> s{_ppPostId = a})

-- | OAuth 2.0 token for the current user.
ppOauthToken :: Lens' PostsPatch' (Maybe Text)
ppOauthToken
  = lens _ppOauthToken (\ s a -> s{_ppOauthToken = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
ppPublish :: Lens' PostsPatch' (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PostsPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

-- | Data format for the response.
ppAlt :: Lens' PostsPatch' Alt
ppAlt = lens _ppAlt (\ s a -> s{_ppAlt = a})

instance GoogleRequest PostsPatch' where
        type Rs PostsPatch' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPatch'{..}
          = go (Just _ppFetchBody) _ppQuotaUser
              (Just _ppPrettyPrint)
              _ppUserIp
              _ppFetchImages
              _ppBlogId
              _ppMaxComments
              _ppKey
              _ppRevert
              _ppPostId
              _ppOauthToken
              _ppPublish
              _ppFields
              (Just _ppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsPatchAPI) r u
