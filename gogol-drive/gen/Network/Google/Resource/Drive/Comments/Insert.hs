{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new comment on the given file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsInsert@.
module Drive.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertAPI

    -- * Creating a Request
    , commentsInsert
    , CommentsInsert

    -- * Request Lenses
    , comQuotaUser
    , comPrettyPrint
    , comUserIp
    , comKey
    , comFileId
    , comOauthToken
    , comFields
    , comAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsInsert@ which the
-- 'CommentsInsert' request conforms to.
type CommentsInsertAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :> Post '[JSON] Comment

-- | Creates a new comment on the given file.
--
-- /See:/ 'commentsInsert' smart constructor.
data CommentsInsert = CommentsInsert
    { _comQuotaUser   :: !(Maybe Text)
    , _comPrettyPrint :: !Bool
    , _comUserIp      :: !(Maybe Text)
    , _comKey         :: !(Maybe Text)
    , _comFileId      :: !Text
    , _comOauthToken  :: !(Maybe Text)
    , _comFields      :: !(Maybe Text)
    , _comAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
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
-- * 'comFields'
--
-- * 'comAlt'
commentsInsert
    :: Text -- ^ 'fileId'
    -> CommentsInsert
commentsInsert pComFileId_ =
    CommentsInsert
    { _comQuotaUser = Nothing
    , _comPrettyPrint = True
    , _comUserIp = Nothing
    , _comKey = Nothing
    , _comFileId = pComFileId_
    , _comOauthToken = Nothing
    , _comFields = Nothing
    , _comAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsInsert' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsInsert' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIp :: Lens' CommentsInsert' (Maybe Text)
comUserIp
  = lens _comUserIp (\ s a -> s{_comUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsInsert' (Maybe Text)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | The ID of the file.
comFileId :: Lens' CommentsInsert' Text
comFileId
  = lens _comFileId (\ s a -> s{_comFileId = a})

-- | OAuth 2.0 token for the current user.
comOauthToken :: Lens' CommentsInsert' (Maybe Text)
comOauthToken
  = lens _comOauthToken
      (\ s a -> s{_comOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsInsert' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

-- | Data format for the response.
comAlt :: Lens' CommentsInsert' Text
comAlt = lens _comAlt (\ s a -> s{_comAlt = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsInsert{..}
          = go _comQuotaUser _comPrettyPrint _comUserIp _comKey
              _comFileId
              _comOauthToken
              _comFields
              _comAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsInsertAPI)
                      r
                      u
