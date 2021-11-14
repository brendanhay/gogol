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
-- Module      : Network.Google.Resource.YouTube.Comments.SetModerationStatus
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the moderation status of one or more comments.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.setModerationStatus@.
module Network.Google.Resource.YouTube.Comments.SetModerationStatus
    (
    -- * REST Resource
      CommentsSetModerationStatusResource

    -- * Creating a Request
    , commentsSetModerationStatus
    , CommentsSetModerationStatus

    -- * Request Lenses
    , csmsXgafv
    , csmsUploadProtocol
    , csmsBanAuthor
    , csmsModerationStatus
    , csmsAccessToken
    , csmsUploadType
    , csmsId
    , csmsCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.setModerationStatus@ method which the
-- 'CommentsSetModerationStatus' request conforms to.
type CommentsSetModerationStatusResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           "setModerationStatus" :>
             QueryParams "id" Text :>
               QueryParam "moderationStatus"
                 CommentsSetModerationStatusModerationStatus
                 :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "banAuthor" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets the moderation status of one or more comments.
--
-- /See:/ 'commentsSetModerationStatus' smart constructor.
data CommentsSetModerationStatus =
  CommentsSetModerationStatus'
    { _csmsXgafv :: !(Maybe Xgafv)
    , _csmsUploadProtocol :: !(Maybe Text)
    , _csmsBanAuthor :: !Bool
    , _csmsModerationStatus :: !CommentsSetModerationStatusModerationStatus
    , _csmsAccessToken :: !(Maybe Text)
    , _csmsUploadType :: !(Maybe Text)
    , _csmsId :: ![Text]
    , _csmsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsSetModerationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmsXgafv'
--
-- * 'csmsUploadProtocol'
--
-- * 'csmsBanAuthor'
--
-- * 'csmsModerationStatus'
--
-- * 'csmsAccessToken'
--
-- * 'csmsUploadType'
--
-- * 'csmsId'
--
-- * 'csmsCallback'
commentsSetModerationStatus
    :: CommentsSetModerationStatusModerationStatus -- ^ 'csmsModerationStatus'
    -> [Text] -- ^ 'csmsId'
    -> CommentsSetModerationStatus
commentsSetModerationStatus pCsmsModerationStatus_ pCsmsId_ =
  CommentsSetModerationStatus'
    { _csmsXgafv = Nothing
    , _csmsUploadProtocol = Nothing
    , _csmsBanAuthor = False
    , _csmsModerationStatus = pCsmsModerationStatus_
    , _csmsAccessToken = Nothing
    , _csmsUploadType = Nothing
    , _csmsId = _Coerce # pCsmsId_
    , _csmsCallback = Nothing
    }


-- | V1 error format.
csmsXgafv :: Lens' CommentsSetModerationStatus (Maybe Xgafv)
csmsXgafv
  = lens _csmsXgafv (\ s a -> s{_csmsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csmsUploadProtocol :: Lens' CommentsSetModerationStatus (Maybe Text)
csmsUploadProtocol
  = lens _csmsUploadProtocol
      (\ s a -> s{_csmsUploadProtocol = a})

-- | If set to true the author of the comment gets added to the ban list.
-- This means all future comments of the author will autmomatically be
-- rejected. Only valid in combination with STATUS_REJECTED.
csmsBanAuthor :: Lens' CommentsSetModerationStatus Bool
csmsBanAuthor
  = lens _csmsBanAuthor
      (\ s a -> s{_csmsBanAuthor = a})

-- | Specifies the requested moderation status. Note, comments can be in
-- statuses, which are not available through this call. For example, this
-- call does not allow to mark a comment as \'likely spam\'. Valid values:
-- MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW,
-- MODERATION_STATUS_REJECTED.
csmsModerationStatus :: Lens' CommentsSetModerationStatus CommentsSetModerationStatusModerationStatus
csmsModerationStatus
  = lens _csmsModerationStatus
      (\ s a -> s{_csmsModerationStatus = a})

-- | OAuth access token.
csmsAccessToken :: Lens' CommentsSetModerationStatus (Maybe Text)
csmsAccessToken
  = lens _csmsAccessToken
      (\ s a -> s{_csmsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csmsUploadType :: Lens' CommentsSetModerationStatus (Maybe Text)
csmsUploadType
  = lens _csmsUploadType
      (\ s a -> s{_csmsUploadType = a})

-- | Modifies the moderation status of the comments with the given IDs
csmsId :: Lens' CommentsSetModerationStatus [Text]
csmsId
  = lens _csmsId (\ s a -> s{_csmsId = a}) . _Coerce

-- | JSONP
csmsCallback :: Lens' CommentsSetModerationStatus (Maybe Text)
csmsCallback
  = lens _csmsCallback (\ s a -> s{_csmsCallback = a})

instance GoogleRequest CommentsSetModerationStatus
         where
        type Rs CommentsSetModerationStatus = ()
        type Scopes CommentsSetModerationStatus =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsSetModerationStatus'{..}
          = go _csmsId (Just _csmsModerationStatus) _csmsXgafv
              _csmsUploadProtocol
              (Just _csmsBanAuthor)
              _csmsAccessToken
              _csmsUploadType
              _csmsCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsSetModerationStatusResource)
                      mempty
