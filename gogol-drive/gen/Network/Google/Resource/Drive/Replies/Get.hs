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
module Network.Google.Resource.Drive.Replies.Get
    (
    -- * REST Resource
      RepliesGetResource

    -- * Creating a Request
    , repliesGet'
    , RepliesGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIP
    , rgKey
    , rgReplyId
    , rgFileId
    , rgOAuthToken
    , rgCommentId
    , rgIncludeDeleted
    , rgFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesGet@ which the
-- 'RepliesGet'' request conforms to.
type RepliesGetResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "includeDeleted" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CommentReply

-- | Gets a reply.
--
-- /See:/ 'repliesGet'' smart constructor.
data RepliesGet' = RepliesGet'
    { _rgQuotaUser      :: !(Maybe Text)
    , _rgPrettyPrint    :: !Bool
    , _rgUserIP         :: !(Maybe Text)
    , _rgKey            :: !(Maybe AuthKey)
    , _rgReplyId        :: !Text
    , _rgFileId         :: !Text
    , _rgOAuthToken     :: !(Maybe OAuthToken)
    , _rgCommentId      :: !Text
    , _rgIncludeDeleted :: !Bool
    , _rgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgReplyId'
--
-- * 'rgFileId'
--
-- * 'rgOAuthToken'
--
-- * 'rgCommentId'
--
-- * 'rgIncludeDeleted'
--
-- * 'rgFields'
repliesGet'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesGet'
repliesGet' pRgReplyId_ pRgFileId_ pRgCommentId_ =
    RepliesGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgReplyId = pRgReplyId_
    , _rgFileId = pRgFileId_
    , _rgOAuthToken = Nothing
    , _rgCommentId = pRgCommentId_
    , _rgIncludeDeleted = False
    , _rgFields = Nothing
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
rgUserIP :: Lens' RepliesGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RepliesGet' (Maybe AuthKey)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the reply.
rgReplyId :: Lens' RepliesGet' Text
rgReplyId
  = lens _rgReplyId (\ s a -> s{_rgReplyId = a})

-- | The ID of the file.
rgFileId :: Lens' RepliesGet' Text
rgFileId = lens _rgFileId (\ s a -> s{_rgFileId = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' RepliesGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

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

instance GoogleAuth RepliesGet' where
        _AuthKey = rgKey . _Just
        _AuthToken = rgOAuthToken . _Just

instance GoogleRequest RepliesGet' where
        type Rs RepliesGet' = CommentReply
        request = requestWith driveRequest
        requestWith rq RepliesGet'{..}
          = go _rgFileId _rgCommentId _rgReplyId
              (Just _rgIncludeDeleted)
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy RepliesGetResource) rq
