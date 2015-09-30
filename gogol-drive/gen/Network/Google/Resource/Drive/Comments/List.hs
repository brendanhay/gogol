{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsList@.
module Drive.Comments.List
    (
    -- * REST Resource
      CommentsListAPI

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , cllQuotaUser
    , cllPrettyPrint
    , cllUserIp
    , cllKey
    , cllUpdatedMin
    , cllPageToken
    , cllFileId
    , cllOauthToken
    , cllMaxResults
    , cllIncludeDeleted
    , cllFields
    , cllAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsList@ which the
-- 'CommentsList' request conforms to.
type CommentsListAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "updatedMin" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "includeDeleted" Bool :>
                   Get '[JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _cllQuotaUser      :: !(Maybe Text)
    , _cllPrettyPrint    :: !Bool
    , _cllUserIp         :: !(Maybe Text)
    , _cllKey            :: !(Maybe Text)
    , _cllUpdatedMin     :: !(Maybe Text)
    , _cllPageToken      :: !(Maybe Text)
    , _cllFileId         :: !Text
    , _cllOauthToken     :: !(Maybe Text)
    , _cllMaxResults     :: !Int32
    , _cllIncludeDeleted :: !Bool
    , _cllFields         :: !(Maybe Text)
    , _cllAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIp'
--
-- * 'cllKey'
--
-- * 'cllUpdatedMin'
--
-- * 'cllPageToken'
--
-- * 'cllFileId'
--
-- * 'cllOauthToken'
--
-- * 'cllMaxResults'
--
-- * 'cllIncludeDeleted'
--
-- * 'cllFields'
--
-- * 'cllAlt'
commentsList
    :: Text -- ^ 'fileId'
    -> CommentsList
commentsList pCllFileId_ =
    CommentsList
    { _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllUserIp = Nothing
    , _cllKey = Nothing
    , _cllUpdatedMin = Nothing
    , _cllPageToken = Nothing
    , _cllFileId = pCllFileId_
    , _cllOauthToken = Nothing
    , _cllMaxResults = 20
    , _cllIncludeDeleted = False
    , _cllFields = Nothing
    , _cllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CommentsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CommentsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' CommentsList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CommentsList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | Only discussions that were updated after this timestamp will be
-- returned. Formatted as an RFC 3339 timestamp.
cllUpdatedMin :: Lens' CommentsList' (Maybe Text)
cllUpdatedMin
  = lens _cllUpdatedMin
      (\ s a -> s{_cllUpdatedMin = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cllPageToken :: Lens' CommentsList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | The ID of the file.
cllFileId :: Lens' CommentsList' Text
cllFileId
  = lens _cllFileId (\ s a -> s{_cllFileId = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' CommentsList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | The maximum number of discussions to include in the response, used for
-- paging.
cllMaxResults :: Lens' CommentsList' Int32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | If set, all comments and replies, including deleted comments and replies
-- (with content stripped) will be returned.
cllIncludeDeleted :: Lens' CommentsList' Bool
cllIncludeDeleted
  = lens _cllIncludeDeleted
      (\ s a -> s{_cllIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CommentsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' CommentsList' Text
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsList{..}
          = go _cllQuotaUser _cllPrettyPrint _cllUserIp _cllKey
              _cllUpdatedMin
              _cllPageToken
              _cllFileId
              _cllOauthToken
              (Just _cllMaxResults)
              (Just _cllIncludeDeleted)
              _cllFields
              _cllAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsListAPI) r
                      u
