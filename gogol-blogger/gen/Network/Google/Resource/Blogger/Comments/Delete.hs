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
-- Module      : Network.Google.Resource.Blogger.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a comment by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsDelete@.
module Network.Google.Resource.Blogger.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete'
    , CommentsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIP
    , cdBlogId
    , cdKey
    , cdPostId
    , cdOAuthToken
    , cdCommentId
    , cdFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsDelete@ method which the
-- 'CommentsDelete'' request conforms to.
type CommentsDeleteResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a comment by ID.
--
-- /See:/ 'commentsDelete'' smart constructor.
data CommentsDelete' = CommentsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIP      :: !(Maybe Text)
    , _cdBlogId      :: !Text
    , _cdKey         :: !(Maybe AuthKey)
    , _cdPostId      :: !Text
    , _cdOAuthToken  :: !(Maybe OAuthToken)
    , _cdCommentId   :: !Text
    , _cdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIP'
--
-- * 'cdBlogId'
--
-- * 'cdKey'
--
-- * 'cdPostId'
--
-- * 'cdOAuthToken'
--
-- * 'cdCommentId'
--
-- * 'cdFields'
commentsDelete'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsDelete'
commentsDelete' pCdBlogId_ pCdPostId_ pCdCommentId_ =
    CommentsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIP = Nothing
    , _cdBlogId = pCdBlogId_
    , _cdKey = Nothing
    , _cdPostId = pCdPostId_
    , _cdOAuthToken = Nothing
    , _cdCommentId = pCdCommentId_
    , _cdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CommentsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CommentsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIP :: Lens' CommentsDelete' (Maybe Text)
cdUserIP = lens _cdUserIP (\ s a -> s{_cdUserIP = a})

-- | The ID of the Blog.
cdBlogId :: Lens' CommentsDelete' Text
cdBlogId = lens _cdBlogId (\ s a -> s{_cdBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CommentsDelete' (Maybe AuthKey)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the Post.
cdPostId :: Lens' CommentsDelete' Text
cdPostId = lens _cdPostId (\ s a -> s{_cdPostId = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CommentsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | The ID of the comment to delete.
cdCommentId :: Lens' CommentsDelete' Text
cdCommentId
  = lens _cdCommentId (\ s a -> s{_cdCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CommentsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

instance GoogleAuth CommentsDelete' where
        _AuthKey = cdKey . _Just
        _AuthToken = cdOAuthToken . _Just

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWith bloggerRequest
        requestWith rq CommentsDelete'{..}
          = go _cdBlogId _cdPostId _cdCommentId _cdQuotaUser
              (Just _cdPrettyPrint)
              _cdUserIP
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CommentsDeleteResource)
                      rq
