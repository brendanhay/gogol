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
-- Module      : Network.Google.Resource.Drive.Replies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesDelete@.
module Network.Google.Resource.Drive.Replies.Delete
    (
    -- * REST Resource
      RepliesDeleteResource

    -- * Creating a Request
    , repliesDelete'
    , RepliesDelete'

    -- * Request Lenses
    , rddQuotaUser
    , rddPrettyPrint
    , rddUserIP
    , rddKey
    , rddReplyId
    , rddFileId
    , rddOAuthToken
    , rddCommentId
    , rddFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesDelete@ method which the
-- 'RepliesDelete'' request conforms to.
type RepliesDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a reply.
--
-- /See:/ 'repliesDelete'' smart constructor.
data RepliesDelete' = RepliesDelete'
    { _rddQuotaUser   :: !(Maybe Text)
    , _rddPrettyPrint :: !Bool
    , _rddUserIP      :: !(Maybe Text)
    , _rddKey         :: !(Maybe AuthKey)
    , _rddReplyId     :: !Text
    , _rddFileId      :: !Text
    , _rddOAuthToken  :: !(Maybe OAuthToken)
    , _rddCommentId   :: !Text
    , _rddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddQuotaUser'
--
-- * 'rddPrettyPrint'
--
-- * 'rddUserIP'
--
-- * 'rddKey'
--
-- * 'rddReplyId'
--
-- * 'rddFileId'
--
-- * 'rddOAuthToken'
--
-- * 'rddCommentId'
--
-- * 'rddFields'
repliesDelete'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesDelete'
repliesDelete' pRddReplyId_ pRddFileId_ pRddCommentId_ =
    RepliesDelete'
    { _rddQuotaUser = Nothing
    , _rddPrettyPrint = True
    , _rddUserIP = Nothing
    , _rddKey = Nothing
    , _rddReplyId = pRddReplyId_
    , _rddFileId = pRddFileId_
    , _rddOAuthToken = Nothing
    , _rddCommentId = pRddCommentId_
    , _rddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rddQuotaUser :: Lens' RepliesDelete' (Maybe Text)
rddQuotaUser
  = lens _rddQuotaUser (\ s a -> s{_rddQuotaUser = a})

-- | Returns response with indentations and line breaks.
rddPrettyPrint :: Lens' RepliesDelete' Bool
rddPrettyPrint
  = lens _rddPrettyPrint
      (\ s a -> s{_rddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rddUserIP :: Lens' RepliesDelete' (Maybe Text)
rddUserIP
  = lens _rddUserIP (\ s a -> s{_rddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rddKey :: Lens' RepliesDelete' (Maybe AuthKey)
rddKey = lens _rddKey (\ s a -> s{_rddKey = a})

-- | The ID of the reply.
rddReplyId :: Lens' RepliesDelete' Text
rddReplyId
  = lens _rddReplyId (\ s a -> s{_rddReplyId = a})

-- | The ID of the file.
rddFileId :: Lens' RepliesDelete' Text
rddFileId
  = lens _rddFileId (\ s a -> s{_rddFileId = a})

-- | OAuth 2.0 token for the current user.
rddOAuthToken :: Lens' RepliesDelete' (Maybe OAuthToken)
rddOAuthToken
  = lens _rddOAuthToken
      (\ s a -> s{_rddOAuthToken = a})

-- | The ID of the comment.
rddCommentId :: Lens' RepliesDelete' Text
rddCommentId
  = lens _rddCommentId (\ s a -> s{_rddCommentId = a})

-- | Selector specifying which fields to include in a partial response.
rddFields :: Lens' RepliesDelete' (Maybe Text)
rddFields
  = lens _rddFields (\ s a -> s{_rddFields = a})

instance GoogleAuth RepliesDelete' where
        _AuthKey = rddKey . _Just
        _AuthToken = rddOAuthToken . _Just

instance GoogleRequest RepliesDelete' where
        type Rs RepliesDelete' = ()
        request = requestWith driveRequest
        requestWith rq RepliesDelete'{..}
          = go _rddFileId _rddCommentId _rddReplyId
              _rddQuotaUser
              (Just _rddPrettyPrint)
              _rddUserIP
              _rddFields
              _rddKey
              _rddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy RepliesDeleteResource)
                      rq
