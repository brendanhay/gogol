{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Replies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesGet@.
module Drive.Replies.Get
    (
    -- * REST Resource
      RepliesGetAPI

    -- * Creating a Request
    , repliesGet
    , RepliesGet

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgKey
    , rgReplyId
    , rgFileId
    , rgOauthToken
    , rgCommentId
    , rgIncludeDeleted
    , rgFields
    , rgAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesGet@ which the
-- 'RepliesGet' request conforms to.
type RepliesGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "includeDeleted" Bool :>
                   Get '[JSON] CommentReply

-- | Gets a reply.
--
-- /See:/ 'repliesGet' smart constructor.
data RepliesGet = RepliesGet
    { _rgQuotaUser      :: !(Maybe Text)
    , _rgPrettyPrint    :: !Bool
    , _rgUserIp         :: !(Maybe Text)
    , _rgKey            :: !(Maybe Text)
    , _rgReplyId        :: !Text
    , _rgFileId         :: !Text
    , _rgOauthToken     :: !(Maybe Text)
    , _rgCommentId      :: !Text
    , _rgIncludeDeleted :: !Bool
    , _rgFields         :: !(Maybe Text)
    , _rgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgKey'
--
-- * 'rgReplyId'
--
-- * 'rgFileId'
--
-- * 'rgOauthToken'
--
-- * 'rgCommentId'
--
-- * 'rgIncludeDeleted'
--
-- * 'rgFields'
--
-- * 'rgAlt'
repliesGet
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesGet
repliesGet pRgReplyId_ pRgFileId_ pRgCommentId_ =
    RepliesGet
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgKey = Nothing
    , _rgReplyId = pRgReplyId_
    , _rgFileId = pRgFileId_
    , _rgOauthToken = Nothing
    , _rgCommentId = pRgCommentId_
    , _rgIncludeDeleted = False
    , _rgFields = Nothing
    , _rgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RepliesGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RepliesGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' RepliesGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RepliesGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the reply.
rgReplyId :: Lens' RepliesGet' Text
rgReplyId
  = lens _rgReplyId (\ s a -> s{_rgReplyId = a})

-- | The ID of the file.
rgFileId :: Lens' RepliesGet' Text
rgFileId = lens _rgFileId (\ s a -> s{_rgFileId = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' RepliesGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | The ID of the comment.
rgCommentId :: Lens' RepliesGet' Text
rgCommentId
  = lens _rgCommentId (\ s a -> s{_rgCommentId = a})

-- | If set, this will succeed when retrieving a deleted reply.
rgIncludeDeleted :: Lens' RepliesGet' Bool
rgIncludeDeleted
  = lens _rgIncludeDeleted
      (\ s a -> s{_rgIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RepliesGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' RepliesGet' Text
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest RepliesGet' where
        type Rs RepliesGet' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesGet{..}
          = go _rgQuotaUser _rgPrettyPrint _rgUserIp _rgKey
              _rgReplyId
              _rgFileId
              _rgOauthToken
              _rgCommentId
              (Just _rgIncludeDeleted)
              _rgFields
              _rgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesGetAPI) r u
