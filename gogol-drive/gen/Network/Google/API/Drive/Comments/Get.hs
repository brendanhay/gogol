{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a comment by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.get@.
module Network.Google.API.Drive.Comments.Get
    (
    -- * REST Resource
      CommentsGetAPI

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , ccQuotaUser
    , ccPrettyPrint
    , ccUserIp
    , ccKey
    , ccFileId
    , ccOauthToken
    , ccCommentId
    , ccIncludeDeleted
    , ccFields
    , ccAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.comments.get which the
-- 'CommentsGet'' request conforms to.
type CommentsGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "includeDeleted" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Comment

-- | Gets a comment by ID.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _ccQuotaUser      :: !(Maybe Text)
    , _ccPrettyPrint    :: !Bool
    , _ccUserIp         :: !(Maybe Text)
    , _ccKey            :: !(Maybe Text)
    , _ccFileId         :: !Text
    , _ccOauthToken     :: !(Maybe Text)
    , _ccCommentId      :: !Text
    , _ccIncludeDeleted :: !Bool
    , _ccFields         :: !(Maybe Text)
    , _ccAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUserIp'
--
-- * 'ccKey'
--
-- * 'ccFileId'
--
-- * 'ccOauthToken'
--
-- * 'ccCommentId'
--
-- * 'ccIncludeDeleted'
--
-- * 'ccFields'
--
-- * 'ccAlt'
commentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCcFileId_ pCcCommentId_ =
    CommentsGet'
    { _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccUserIp = Nothing
    , _ccKey = Nothing
    , _ccFileId = pCcFileId_
    , _ccOauthToken = Nothing
    , _ccCommentId = pCcCommentId_
    , _ccIncludeDeleted = False
    , _ccFields = Nothing
    , _ccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccQuotaUser :: Lens' CommentsGet' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' CommentsGet' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccUserIp :: Lens' CommentsGet' (Maybe Text)
ccUserIp = lens _ccUserIp (\ s a -> s{_ccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CommentsGet' (Maybe Text)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | The ID of the file.
ccFileId :: Lens' CommentsGet' Text
ccFileId = lens _ccFileId (\ s a -> s{_ccFileId = a})

-- | OAuth 2.0 token for the current user.
ccOauthToken :: Lens' CommentsGet' (Maybe Text)
ccOauthToken
  = lens _ccOauthToken (\ s a -> s{_ccOauthToken = a})

-- | The ID of the comment.
ccCommentId :: Lens' CommentsGet' Text
ccCommentId
  = lens _ccCommentId (\ s a -> s{_ccCommentId = a})

-- | If set, this will succeed when retrieving a deleted comment, and will
-- include any deleted replies.
ccIncludeDeleted :: Lens' CommentsGet' Bool
ccIncludeDeleted
  = lens _ccIncludeDeleted
      (\ s a -> s{_ccIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CommentsGet' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

-- | Data format for the response.
ccAlt :: Lens' CommentsGet' Alt
ccAlt = lens _ccAlt (\ s a -> s{_ccAlt = a})

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsGet'{..}
          = go _ccQuotaUser (Just _ccPrettyPrint) _ccUserIp
              _ccKey
              _ccFileId
              _ccOauthToken
              _ccCommentId
              (Just _ccIncludeDeleted)
              _ccFields
              (Just _ccAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsGetAPI) r u
