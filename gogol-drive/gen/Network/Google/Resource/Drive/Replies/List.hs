{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Replies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all of the replies to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesList@.
module Drive.Replies.List
    (
    -- * REST Resource
      RepliesListAPI

    -- * Creating a Request
    , repliesList
    , RepliesList

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIp
    , rlKey
    , rlPageToken
    , rlFileId
    , rlOauthToken
    , rlCommentId
    , rlMaxResults
    , rlIncludeDeleted
    , rlFields
    , rlAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesList@ which the
-- 'RepliesList' request conforms to.
type RepliesListAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "includeDeleted" Bool :>
                     Get '[JSON] CommentReplyList

-- | Lists all of the replies to a comment.
--
-- /See:/ 'repliesList' smart constructor.
data RepliesList = RepliesList
    { _rlQuotaUser      :: !(Maybe Text)
    , _rlPrettyPrint    :: !Bool
    , _rlUserIp         :: !(Maybe Text)
    , _rlKey            :: !(Maybe Text)
    , _rlPageToken      :: !(Maybe Text)
    , _rlFileId         :: !Text
    , _rlOauthToken     :: !(Maybe Text)
    , _rlCommentId      :: !Text
    , _rlMaxResults     :: !Int32
    , _rlIncludeDeleted :: !Bool
    , _rlFields         :: !(Maybe Text)
    , _rlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlKey'
--
-- * 'rlPageToken'
--
-- * 'rlFileId'
--
-- * 'rlOauthToken'
--
-- * 'rlCommentId'
--
-- * 'rlMaxResults'
--
-- * 'rlIncludeDeleted'
--
-- * 'rlFields'
--
-- * 'rlAlt'
repliesList
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesList
repliesList pRlFileId_ pRlCommentId_ =
    RepliesList
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlPageToken = Nothing
    , _rlFileId = pRlFileId_
    , _rlOauthToken = Nothing
    , _rlCommentId = pRlCommentId_
    , _rlMaxResults = 20
    , _rlIncludeDeleted = False
    , _rlFields = Nothing
    , _rlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RepliesList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RepliesList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' RepliesList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RepliesList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
rlPageToken :: Lens' RepliesList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The ID of the file.
rlFileId :: Lens' RepliesList' Text
rlFileId = lens _rlFileId (\ s a -> s{_rlFileId = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RepliesList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | The ID of the comment.
rlCommentId :: Lens' RepliesList' Text
rlCommentId
  = lens _rlCommentId (\ s a -> s{_rlCommentId = a})

-- | The maximum number of replies to include in the response, used for
-- paging.
rlMaxResults :: Lens' RepliesList' Int32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | If set, all replies, including deleted replies (with content stripped)
-- will be returned.
rlIncludeDeleted :: Lens' RepliesList' Bool
rlIncludeDeleted
  = lens _rlIncludeDeleted
      (\ s a -> s{_rlIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RepliesList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' RepliesList' Text
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RepliesList' where
        type Rs RepliesList' = CommentReplyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesList{..}
          = go _rlQuotaUser _rlPrettyPrint _rlUserIp _rlKey
              _rlPageToken
              _rlFileId
              _rlOauthToken
              _rlCommentId
              (Just _rlMaxResults)
              (Just _rlIncludeDeleted)
              _rlFields
              _rlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesListAPI) r u
