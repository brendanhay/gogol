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
-- Module      : Network.Google.Resource.Drive.Comments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsUpdate@.
module Network.Google.Resource.Drive.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate'
    , CommentsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuKey
    , cuFileId
    , cuOAuthToken
    , cuComment
    , cuCommentId
    , cuFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsUpdate@ which the
-- 'CommentsUpdate'' request conforms to.
type CommentsUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Comment :> Put '[JSON] Comment

-- | Updates an existing comment.
--
-- /See:/ 'commentsUpdate'' smart constructor.
data CommentsUpdate' = CommentsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Key)
    , _cuFileId      :: !Text
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuComment     :: !Comment
    , _cuCommentId   :: !Text
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuKey'
--
-- * 'cuFileId'
--
-- * 'cuOAuthToken'
--
-- * 'cuComment'
--
-- * 'cuCommentId'
--
-- * 'cuFields'
commentsUpdate'
    :: Text -- ^ 'fileId'
    -> Comment -- ^ 'Comment'
    -> Text -- ^ 'commentId'
    -> CommentsUpdate'
commentsUpdate' pCuFileId_ pCuComment_ pCuCommentId_ =
    CommentsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuKey = Nothing
    , _cuFileId = pCuFileId_
    , _cuOAuthToken = Nothing
    , _cuComment = pCuComment_
    , _cuCommentId = pCuCommentId_
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CommentsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CommentsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CommentsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CommentsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | The ID of the file.
cuFileId :: Lens' CommentsUpdate' Text
cuFileId = lens _cuFileId (\ s a -> s{_cuFileId = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CommentsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Multipart request metadata.
cuComment :: Lens' CommentsUpdate' Comment
cuComment
  = lens _cuComment (\ s a -> s{_cuComment = a})

-- | The ID of the comment.
cuCommentId :: Lens' CommentsUpdate' Text
cuCommentId
  = lens _cuCommentId (\ s a -> s{_cuCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CommentsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CommentsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CommentsUpdate' where
        type Rs CommentsUpdate' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsUpdate'{..}
          = go _cuFileId _cuCommentId _cuQuotaUser
              (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuComment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsUpdateResource)
                      r
                      u
