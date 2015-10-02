{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchResource

    -- * Creating a Request
    , postsPatch'
    , PostsPatch'

    -- * Request Lenses
    , ppFetchBody
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIP
    , ppPost
    , ppFetchImages
    , ppBlogId
    , ppMaxComments
    , ppKey
    , ppRevert
    , ppPostId
    , ppOAuthToken
    , ppPublish
    , ppFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPatch@ which the
-- 'PostsPatch'' request conforms to.
type PostsPatchResource =
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
                         QueryParam "key" Key :>
                           QueryParam "revert" Bool :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "publish" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Post :> Patch '[JSON] Post

-- | Update a post. This method supports patch semantics.
--
-- /See:/ 'postsPatch'' smart constructor.
data PostsPatch' = PostsPatch'
    { _ppFetchBody   :: !Bool
    , _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppUserIP      :: !(Maybe Text)
    , _ppPost        :: !Post
    , _ppFetchImages :: !(Maybe Bool)
    , _ppBlogId      :: !Text
    , _ppMaxComments :: !(Maybe Word32)
    , _ppKey         :: !(Maybe Key)
    , _ppRevert      :: !(Maybe Bool)
    , _ppPostId      :: !Text
    , _ppOAuthToken  :: !(Maybe OAuthToken)
    , _ppPublish     :: !(Maybe Bool)
    , _ppFields      :: !(Maybe Text)
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
-- * 'ppUserIP'
--
-- * 'ppPost'
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
-- * 'ppOAuthToken'
--
-- * 'ppPublish'
--
-- * 'ppFields'
postsPatch'
    :: Post -- ^ 'Post'
    -> Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPatch'
postsPatch' pPpPost_ pPpBlogId_ pPpPostId_ =
    PostsPatch'
    { _ppFetchBody = True
    , _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIP = Nothing
    , _ppPost = pPpPost_
    , _ppFetchImages = Nothing
    , _ppBlogId = pPpBlogId_
    , _ppMaxComments = Nothing
    , _ppKey = Nothing
    , _ppRevert = Nothing
    , _ppPostId = pPpPostId_
    , _ppOAuthToken = Nothing
    , _ppPublish = Nothing
    , _ppFields = Nothing
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
ppUserIP :: Lens' PostsPatch' (Maybe Text)
ppUserIP = lens _ppUserIP (\ s a -> s{_ppUserIP = a})

-- | Multipart request metadata.
ppPost :: Lens' PostsPatch' Post
ppPost = lens _ppPost (\ s a -> s{_ppPost = a})

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
ppKey :: Lens' PostsPatch' (Maybe Key)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
ppRevert :: Lens' PostsPatch' (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

-- | The ID of the Post.
ppPostId :: Lens' PostsPatch' Text
ppPostId = lens _ppPostId (\ s a -> s{_ppPostId = a})

-- | OAuth 2.0 token for the current user.
ppOAuthToken :: Lens' PostsPatch' (Maybe OAuthToken)
ppOAuthToken
  = lens _ppOAuthToken (\ s a -> s{_ppOAuthToken = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
ppPublish :: Lens' PostsPatch' (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PostsPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

instance GoogleAuth PostsPatch' where
        authKey = ppKey . _Just
        authToken = ppOAuthToken . _Just

instance GoogleRequest PostsPatch' where
        type Rs PostsPatch' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPatch'{..}
          = go (Just _ppFetchBody) _ppQuotaUser
              (Just _ppPrettyPrint)
              _ppUserIP
              _ppFetchImages
              _ppBlogId
              _ppMaxComments
              _ppKey
              _ppRevert
              _ppPostId
              _ppOAuthToken
              _ppPublish
              _ppFields
              (Just AltJSON)
              _ppPost
          where go
                  = clientWithRoute (Proxy :: Proxy PostsPatchResource)
                      r
                      u
