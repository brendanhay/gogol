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
-- Module      : Network.Google.Resource.Blogger.Comments.MarkAsSpam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks a comment as spam.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsMarkAsSpam@.
module Network.Google.Resource.Blogger.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam'
    , CommentsMarkAsSpam'

    -- * Request Lenses
    , cmasQuotaUser
    , cmasPrettyPrint
    , cmasUserIP
    , cmasBlogId
    , cmasKey
    , cmasPostId
    , cmasOAuthToken
    , cmasCommentId
    , cmasFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsMarkAsSpam@ which the
-- 'CommentsMarkAsSpam'' request conforms to.
type CommentsMarkAsSpamResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "spam" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as spam.
--
-- /See:/ 'commentsMarkAsSpam'' smart constructor.
data CommentsMarkAsSpam' = CommentsMarkAsSpam'
    { _cmasQuotaUser   :: !(Maybe Text)
    , _cmasPrettyPrint :: !Bool
    , _cmasUserIP      :: !(Maybe Text)
    , _cmasBlogId      :: !Text
    , _cmasKey         :: !(Maybe Key)
    , _cmasPostId      :: !Text
    , _cmasOAuthToken  :: !(Maybe OAuthToken)
    , _cmasCommentId   :: !Text
    , _cmasFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsMarkAsSpam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasQuotaUser'
--
-- * 'cmasPrettyPrint'
--
-- * 'cmasUserIP'
--
-- * 'cmasBlogId'
--
-- * 'cmasKey'
--
-- * 'cmasPostId'
--
-- * 'cmasOAuthToken'
--
-- * 'cmasCommentId'
--
-- * 'cmasFields'
commentsMarkAsSpam'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsMarkAsSpam'
commentsMarkAsSpam' pCmasBlogId_ pCmasPostId_ pCmasCommentId_ =
    CommentsMarkAsSpam'
    { _cmasQuotaUser = Nothing
    , _cmasPrettyPrint = True
    , _cmasUserIP = Nothing
    , _cmasBlogId = pCmasBlogId_
    , _cmasKey = Nothing
    , _cmasPostId = pCmasPostId_
    , _cmasOAuthToken = Nothing
    , _cmasCommentId = pCmasCommentId_
    , _cmasFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cmasQuotaUser :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasQuotaUser
  = lens _cmasQuotaUser
      (\ s a -> s{_cmasQuotaUser = a})

-- | Returns response with indentations and line breaks.
cmasPrettyPrint :: Lens' CommentsMarkAsSpam' Bool
cmasPrettyPrint
  = lens _cmasPrettyPrint
      (\ s a -> s{_cmasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cmasUserIP :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasUserIP
  = lens _cmasUserIP (\ s a -> s{_cmasUserIP = a})

-- | The ID of the Blog.
cmasBlogId :: Lens' CommentsMarkAsSpam' Text
cmasBlogId
  = lens _cmasBlogId (\ s a -> s{_cmasBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cmasKey :: Lens' CommentsMarkAsSpam' (Maybe Key)
cmasKey = lens _cmasKey (\ s a -> s{_cmasKey = a})

-- | The ID of the Post.
cmasPostId :: Lens' CommentsMarkAsSpam' Text
cmasPostId
  = lens _cmasPostId (\ s a -> s{_cmasPostId = a})

-- | OAuth 2.0 token for the current user.
cmasOAuthToken :: Lens' CommentsMarkAsSpam' (Maybe OAuthToken)
cmasOAuthToken
  = lens _cmasOAuthToken
      (\ s a -> s{_cmasOAuthToken = a})

-- | The ID of the comment to mark as spam.
cmasCommentId :: Lens' CommentsMarkAsSpam' Text
cmasCommentId
  = lens _cmasCommentId
      (\ s a -> s{_cmasCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cmasFields :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasFields
  = lens _cmasFields (\ s a -> s{_cmasFields = a})

instance GoogleAuth CommentsMarkAsSpam' where
        authKey = cmasKey . _Just
        authToken = cmasOAuthToken . _Just

instance GoogleRequest CommentsMarkAsSpam' where
        type Rs CommentsMarkAsSpam' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsMarkAsSpam'{..}
          = go _cmasQuotaUser (Just _cmasPrettyPrint)
              _cmasUserIP
              _cmasBlogId
              _cmasKey
              _cmasPostId
              _cmasOAuthToken
              _cmasCommentId
              _cmasFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      r
                      u
