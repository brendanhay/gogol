{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.delete@.
module Network.Google.API.Drive.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteAPI

    -- * Creating a Request
    , commentsDelete'
    , CommentsDelete'

    -- * Request Lenses
    , comQuotaUser
    , comPrettyPrint
    , comUserIp
    , comKey
    , comFileId
    , comOauthToken
    , comCommentId
    , comFields
    , comAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.comments.delete which the
-- 'CommentsDelete'' request conforms to.
type CommentsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete'' smart constructor.
data CommentsDelete' = CommentsDelete'
    { _comQuotaUser   :: !(Maybe Text)
    , _comPrettyPrint :: !Bool
    , _comUserIp      :: !(Maybe Text)
    , _comKey         :: !(Maybe Text)
    , _comFileId      :: !Text
    , _comOauthToken  :: !(Maybe Text)
    , _comCommentId   :: !Text
    , _comFields      :: !(Maybe Text)
    , _comAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIp'
--
-- * 'comKey'
--
-- * 'comFileId'
--
-- * 'comOauthToken'
--
-- * 'comCommentId'
--
-- * 'comFields'
--
-- * 'comAlt'
commentsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsDelete'
commentsDelete' pComFileId_ pComCommentId_ =
    CommentsDelete'
    { _comQuotaUser = Nothing
    , _comPrettyPrint = True
    , _comUserIp = Nothing
    , _comKey = Nothing
    , _comFileId = pComFileId_
    , _comOauthToken = Nothing
    , _comCommentId = pComCommentId_
    , _comFields = Nothing
    , _comAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsDelete' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsDelete' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIp :: Lens' CommentsDelete' (Maybe Text)
comUserIp
  = lens _comUserIp (\ s a -> s{_comUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsDelete' (Maybe Text)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | The ID of the file.
comFileId :: Lens' CommentsDelete' Text
comFileId
  = lens _comFileId (\ s a -> s{_comFileId = a})

-- | OAuth 2.0 token for the current user.
comOauthToken :: Lens' CommentsDelete' (Maybe Text)
comOauthToken
  = lens _comOauthToken
      (\ s a -> s{_comOauthToken = a})

-- | The ID of the comment.
comCommentId :: Lens' CommentsDelete' Text
comCommentId
  = lens _comCommentId (\ s a -> s{_comCommentId = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsDelete' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

-- | Data format for the response.
comAlt :: Lens' CommentsDelete' Alt
comAlt = lens _comAlt (\ s a -> s{_comAlt = a})

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsDelete'{..}
          = go _comQuotaUser (Just _comPrettyPrint) _comUserIp
              _comKey
              _comFileId
              _comOauthToken
              _comCommentId
              _comFields
              (Just _comAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsDeleteAPI)
                      r
                      u
