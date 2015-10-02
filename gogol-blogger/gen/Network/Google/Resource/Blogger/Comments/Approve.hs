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
-- Module      : Network.Google.Resource.Blogger.Comments.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks a comment as not spam.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsApprove@.
module Network.Google.Resource.Blogger.Comments.Approve
    (
    -- * REST Resource
      CommentsApproveResource

    -- * Creating a Request
    , commentsApprove'
    , CommentsApprove'

    -- * Request Lenses
    , caQuotaUser
    , caPrettyPrint
    , caUserIP
    , caBlogId
    , caKey
    , caPostId
    , caOAuthToken
    , caCommentId
    , caFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsApprove@ which the
-- 'CommentsApprove'' request conforms to.
type CommentsApproveResource =
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
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as not spam.
--
-- /See:/ 'commentsApprove'' smart constructor.
data CommentsApprove' = CommentsApprove'
    { _caQuotaUser   :: !(Maybe Text)
    , _caPrettyPrint :: !Bool
    , _caUserIP      :: !(Maybe Text)
    , _caBlogId      :: !Text
    , _caKey         :: !(Maybe Key)
    , _caPostId      :: !Text
    , _caOAuthToken  :: !(Maybe OAuthToken)
    , _caCommentId   :: !Text
    , _caFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsApprove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caQuotaUser'
--
-- * 'caPrettyPrint'
--
-- * 'caUserIP'
--
-- * 'caBlogId'
--
-- * 'caKey'
--
-- * 'caPostId'
--
-- * 'caOAuthToken'
--
-- * 'caCommentId'
--
-- * 'caFields'
commentsApprove'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsApprove'
commentsApprove' pCaBlogId_ pCaPostId_ pCaCommentId_ =
    CommentsApprove'
    { _caQuotaUser = Nothing
    , _caPrettyPrint = True
    , _caUserIP = Nothing
    , _caBlogId = pCaBlogId_
    , _caKey = Nothing
    , _caPostId = pCaPostId_
    , _caOAuthToken = Nothing
    , _caCommentId = pCaCommentId_
    , _caFields = Nothing
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
caUserIP :: Lens' CommentsApprove' (Maybe Text)
caUserIP = lens _caUserIP (\ s a -> s{_caUserIP = a})

-- | The ID of the Blog.
caBlogId :: Lens' CommentsApprove' Text
caBlogId = lens _caBlogId (\ s a -> s{_caBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
caKey :: Lens' CommentsApprove' (Maybe Key)
caKey = lens _caKey (\ s a -> s{_caKey = a})

-- | The ID of the Post.
caPostId :: Lens' CommentsApprove' Text
caPostId = lens _caPostId (\ s a -> s{_caPostId = a})

-- | OAuth 2.0 token for the current user.
caOAuthToken :: Lens' CommentsApprove' (Maybe OAuthToken)
caOAuthToken
  = lens _caOAuthToken (\ s a -> s{_caOAuthToken = a})

-- | The ID of the comment to mark as not spam.
caCommentId :: Lens' CommentsApprove' Text
caCommentId
  = lens _caCommentId (\ s a -> s{_caCommentId = a})

-- | Selector specifying which fields to include in a partial response.
caFields :: Lens' CommentsApprove' (Maybe Text)
caFields = lens _caFields (\ s a -> s{_caFields = a})

instance GoogleAuth CommentsApprove' where
        authKey = caKey . _Just
        authToken = caOAuthToken . _Just

instance GoogleRequest CommentsApprove' where
        type Rs CommentsApprove' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsApprove'{..}
          = go _caBlogId _caPostId _caCommentId _caQuotaUser
              (Just _caPrettyPrint)
              _caUserIP
              _caFields
              _caKey
              _caOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsApproveResource)
                      r
                      u
