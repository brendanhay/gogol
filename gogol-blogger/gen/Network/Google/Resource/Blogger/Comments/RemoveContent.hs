{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Comments.RemoveContent
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the content of a comment.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsRemoveContent@.
module Network.Google.Resource.Blogger.Comments.RemoveContent
    (
    -- * REST Resource
      CommentsRemoveContentResource

    -- * Creating a Request
    , commentsRemoveContent'
    , CommentsRemoveContent'

    -- * Request Lenses
    , crcQuotaUser
    , crcPrettyPrint
    , crcUserIP
    , crcBlogId
    , crcKey
    , crcPostId
    , crcOAuthToken
    , crcCommentId
    , crcFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsRemoveContent@ which the
-- 'CommentsRemoveContent'' request conforms to.
type CommentsRemoveContentResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "removecontent" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Removes the content of a comment.
--
-- /See:/ 'commentsRemoveContent'' smart constructor.
data CommentsRemoveContent' = CommentsRemoveContent'
    { _crcQuotaUser   :: !(Maybe Text)
    , _crcPrettyPrint :: !Bool
    , _crcUserIP      :: !(Maybe Text)
    , _crcBlogId      :: !Text
    , _crcKey         :: !(Maybe Key)
    , _crcPostId      :: !Text
    , _crcOAuthToken  :: !(Maybe OAuthToken)
    , _crcCommentId   :: !Text
    , _crcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsRemoveContent'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcQuotaUser'
--
-- * 'crcPrettyPrint'
--
-- * 'crcUserIP'
--
-- * 'crcBlogId'
--
-- * 'crcKey'
--
-- * 'crcPostId'
--
-- * 'crcOAuthToken'
--
-- * 'crcCommentId'
--
-- * 'crcFields'
commentsRemoveContent'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsRemoveContent'
commentsRemoveContent' pCrcBlogId_ pCrcPostId_ pCrcCommentId_ =
    CommentsRemoveContent'
    { _crcQuotaUser = Nothing
    , _crcPrettyPrint = True
    , _crcUserIP = Nothing
    , _crcBlogId = pCrcBlogId_
    , _crcKey = Nothing
    , _crcPostId = pCrcPostId_
    , _crcOAuthToken = Nothing
    , _crcCommentId = pCrcCommentId_
    , _crcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
crcQuotaUser :: Lens' CommentsRemoveContent' (Maybe Text)
crcQuotaUser
  = lens _crcQuotaUser (\ s a -> s{_crcQuotaUser = a})

-- | Returns response with indentations and line breaks.
crcPrettyPrint :: Lens' CommentsRemoveContent' Bool
crcPrettyPrint
  = lens _crcPrettyPrint
      (\ s a -> s{_crcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
crcUserIP :: Lens' CommentsRemoveContent' (Maybe Text)
crcUserIP
  = lens _crcUserIP (\ s a -> s{_crcUserIP = a})

-- | The ID of the Blog.
crcBlogId :: Lens' CommentsRemoveContent' Text
crcBlogId
  = lens _crcBlogId (\ s a -> s{_crcBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crcKey :: Lens' CommentsRemoveContent' (Maybe Key)
crcKey = lens _crcKey (\ s a -> s{_crcKey = a})

-- | The ID of the Post.
crcPostId :: Lens' CommentsRemoveContent' Text
crcPostId
  = lens _crcPostId (\ s a -> s{_crcPostId = a})

-- | OAuth 2.0 token for the current user.
crcOAuthToken :: Lens' CommentsRemoveContent' (Maybe OAuthToken)
crcOAuthToken
  = lens _crcOAuthToken
      (\ s a -> s{_crcOAuthToken = a})

-- | The ID of the comment to delete content from.
crcCommentId :: Lens' CommentsRemoveContent' Text
crcCommentId
  = lens _crcCommentId (\ s a -> s{_crcCommentId = a})

-- | Selector specifying which fields to include in a partial response.
crcFields :: Lens' CommentsRemoveContent' (Maybe Text)
crcFields
  = lens _crcFields (\ s a -> s{_crcFields = a})

instance GoogleAuth CommentsRemoveContent' where
        authKey = crcKey . _Just
        authToken = crcOAuthToken . _Just

instance GoogleRequest CommentsRemoveContent' where
        type Rs CommentsRemoveContent' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsRemoveContent'{..}
          = go _crcBlogId _crcPostId _crcCommentId
              _crcQuotaUser
              (Just _crcPrettyPrint)
              _crcUserIP
              _crcFields
              _crcKey
              _crcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsRemoveContentResource)
                      r
                      u
