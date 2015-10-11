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
-- Module      : Network.Google.Resource.Blogger.Posts.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled post to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsRevert@.
module Network.Google.Resource.Blogger.Posts.Revert
    (
    -- * REST Resource
      PostsRevertResource

    -- * Creating a Request
    , postsRevert'
    , PostsRevert'

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIP
    , prBlogId
    , prKey
    , prPostId
    , prOAuthToken
    , prFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsRevert@ method which the
-- 'PostsRevert'' request conforms to.
type PostsRevertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "revert" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Post'

-- | Revert a published or scheduled post to draft state.
--
-- /See:/ 'postsRevert'' smart constructor.
data PostsRevert' = PostsRevert'
    { _prQuotaUser   :: !(Maybe Text)
    , _prPrettyPrint :: !Bool
    , _prUserIP      :: !(Maybe Text)
    , _prBlogId      :: !Text
    , _prKey         :: !(Maybe AuthKey)
    , _prPostId      :: !Text
    , _prOAuthToken  :: !(Maybe OAuthToken)
    , _prFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIP'
--
-- * 'prBlogId'
--
-- * 'prKey'
--
-- * 'prPostId'
--
-- * 'prOAuthToken'
--
-- * 'prFields'
postsRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsRevert'
postsRevert' pPrBlogId_ pPrPostId_ =
    PostsRevert'
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIP = Nothing
    , _prBlogId = pPrBlogId_
    , _prKey = Nothing
    , _prPostId = pPrPostId_
    , _prOAuthToken = Nothing
    , _prFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PostsRevert' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PostsRevert' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIP :: Lens' PostsRevert' (Maybe Text)
prUserIP = lens _prUserIP (\ s a -> s{_prUserIP = a})

-- | The ID of the Blog.
prBlogId :: Lens' PostsRevert' Text
prBlogId = lens _prBlogId (\ s a -> s{_prBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PostsRevert' (Maybe AuthKey)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | The ID of the Post.
prPostId :: Lens' PostsRevert' Text
prPostId = lens _prPostId (\ s a -> s{_prPostId = a})

-- | OAuth 2.0 token for the current user.
prOAuthToken :: Lens' PostsRevert' (Maybe OAuthToken)
prOAuthToken
  = lens _prOAuthToken (\ s a -> s{_prOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PostsRevert' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

instance GoogleAuth PostsRevert' where
        _AuthKey = prKey . _Just
        _AuthToken = prOAuthToken . _Just

instance GoogleRequest PostsRevert' where
        type Rs PostsRevert' = Post'
        request = requestWith bloggerRequest
        requestWith rq PostsRevert'{..}
          = go _prBlogId _prPostId _prQuotaUser
              (Just _prPrettyPrint)
              _prUserIP
              _prFields
              _prKey
              _prOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PostsRevertResource) rq
