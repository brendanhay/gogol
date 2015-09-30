{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsDelete@.
module Drive.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteAPI

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddUserIp
    , cddKey
    , cddFileId
    , cddOauthToken
    , cddCommentId
    , cddFields
    , cddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsDelete@ which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete' smart constructor.
data CommentsDelete = CommentsDelete
    { _cddQuotaUser   :: !(Maybe Text)
    , _cddPrettyPrint :: !Bool
    , _cddUserIp      :: !(Maybe Text)
    , _cddKey         :: !(Maybe Text)
    , _cddFileId      :: !Text
    , _cddOauthToken  :: !(Maybe Text)
    , _cddCommentId   :: !Text
    , _cddFields      :: !(Maybe Text)
    , _cddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddUserIp'
--
-- * 'cddKey'
--
-- * 'cddFileId'
--
-- * 'cddOauthToken'
--
-- * 'cddCommentId'
--
-- * 'cddFields'
--
-- * 'cddAlt'
commentsDelete
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsDelete
commentsDelete pCddFileId_ pCddCommentId_ =
    CommentsDelete
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIp = Nothing
    , _cddKey = Nothing
    , _cddFileId = pCddFileId_
    , _cddOauthToken = Nothing
    , _cddCommentId = pCddCommentId_
    , _cddFields = Nothing
    , _cddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CommentsDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CommentsDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' CommentsDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CommentsDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The ID of the file.
cddFileId :: Lens' CommentsDelete' Text
cddFileId
  = lens _cddFileId (\ s a -> s{_cddFileId = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' CommentsDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | The ID of the comment.
cddCommentId :: Lens' CommentsDelete' Text
cddCommentId
  = lens _cddCommentId (\ s a -> s{_cddCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CommentsDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' CommentsDelete' Text
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsDelete{..}
          = go _cddQuotaUser _cddPrettyPrint _cddUserIp _cddKey
              _cddFileId
              _cddOauthToken
              _cddCommentId
              _cddFields
              _cddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsDeleteAPI)
                      r
                      u
