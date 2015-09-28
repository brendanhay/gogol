{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Comments.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks a comment as not spam.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.approve@.
module Network.Google.API.Blogger.Comments.Approve
    (
    -- * REST Resource
      CommentsApproveAPI

    -- * Creating a Request
    , commentsApprove'
    , CommentsApprove'

    -- * Request Lenses
    , caQuotaUser
    , caPrettyPrint
    , caUserIp
    , caBlogId
    , caKey
    , caPostId
    , caOauthToken
    , caCommentId
    , caFields
    , caAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.comments.approve which the
-- 'CommentsApprove'' request conforms to.
type CommentsApproveAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "approve" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Comment

-- | Marks a comment as not spam.
--
-- /See:/ 'commentsApprove'' smart constructor.
data CommentsApprove' = CommentsApprove'
    { _caQuotaUser   :: !(Maybe Text)
    , _caPrettyPrint :: !Bool
    , _caUserIp      :: !(Maybe Text)
    , _caBlogId      :: !Text
    , _caKey         :: !(Maybe Text)
    , _caPostId      :: !Text
    , _caOauthToken  :: !(Maybe Text)
    , _caCommentId   :: !Text
    , _caFields      :: !(Maybe Text)
    , _caAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsApprove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caQuotaUser'
--
-- * 'caPrettyPrint'
--
-- * 'caUserIp'
--
-- * 'caBlogId'
--
-- * 'caKey'
--
-- * 'caPostId'
--
-- * 'caOauthToken'
--
-- * 'caCommentId'
--
-- * 'caFields'
--
-- * 'caAlt'
commentsApprove'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsApprove'
commentsApprove' pCaBlogId_ pCaPostId_ pCaCommentId_ =
    CommentsApprove'
    { _caQuotaUser = Nothing
    , _caPrettyPrint = True
    , _caUserIp = Nothing
    , _caBlogId = pCaBlogId_
    , _caKey = Nothing
    , _caPostId = pCaPostId_
    , _caOauthToken = Nothing
    , _caCommentId = pCaCommentId_
    , _caFields = Nothing
    , _caAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
caQuotaUser :: Lens' CommentsApprove' (Maybe Text)
caQuotaUser
  = lens _caQuotaUser (\ s a -> s{_caQuotaUser = a})

-- | Returns response with indentations and line breaks.
caPrettyPrint :: Lens' CommentsApprove' Bool
caPrettyPrint
  = lens _caPrettyPrint
      (\ s a -> s{_caPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
caUserIp :: Lens' CommentsApprove' (Maybe Text)
caUserIp = lens _caUserIp (\ s a -> s{_caUserIp = a})

-- | The ID of the Blog.
caBlogId :: Lens' CommentsApprove' Text
caBlogId = lens _caBlogId (\ s a -> s{_caBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
caKey :: Lens' CommentsApprove' (Maybe Text)
caKey = lens _caKey (\ s a -> s{_caKey = a})

-- | The ID of the Post.
caPostId :: Lens' CommentsApprove' Text
caPostId = lens _caPostId (\ s a -> s{_caPostId = a})

-- | OAuth 2.0 token for the current user.
caOauthToken :: Lens' CommentsApprove' (Maybe Text)
caOauthToken
  = lens _caOauthToken (\ s a -> s{_caOauthToken = a})

-- | The ID of the comment to mark as not spam.
caCommentId :: Lens' CommentsApprove' Text
caCommentId
  = lens _caCommentId (\ s a -> s{_caCommentId = a})

-- | Selector specifying which fields to include in a partial response.
caFields :: Lens' CommentsApprove' (Maybe Text)
caFields = lens _caFields (\ s a -> s{_caFields = a})

-- | Data format for the response.
caAlt :: Lens' CommentsApprove' Alt
caAlt = lens _caAlt (\ s a -> s{_caAlt = a})

instance GoogleRequest CommentsApprove' where
        type Rs CommentsApprove' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsApprove'{..}
          = go _caQuotaUser (Just _caPrettyPrint) _caUserIp
              _caBlogId
              _caKey
              _caPostId
              _caOauthToken
              _caCommentId
              _caFields
              (Just _caAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsApproveAPI)
                      r
                      u
