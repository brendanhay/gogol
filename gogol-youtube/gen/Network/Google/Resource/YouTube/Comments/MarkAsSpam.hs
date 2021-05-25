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
-- Module      : Network.Google.Resource.YouTube.Comments.MarkAsSpam
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.markAsSpam@.
module Network.Google.Resource.YouTube.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam
    , CommentsMarkAsSpam

    -- * Request Lenses
    , cmasXgafv
    , cmasUploadProtocol
    , cmasAccessToken
    , cmasUploadType
    , cmasId
    , cmasCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.markAsSpam@ method which the
-- 'CommentsMarkAsSpam' request conforms to.
type CommentsMarkAsSpamResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           "markAsSpam" :>
             QueryParams "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ 'commentsMarkAsSpam' smart constructor.
data CommentsMarkAsSpam =
  CommentsMarkAsSpam'
    { _cmasXgafv :: !(Maybe Xgafv)
    , _cmasUploadProtocol :: !(Maybe Text)
    , _cmasAccessToken :: !(Maybe Text)
    , _cmasUploadType :: !(Maybe Text)
    , _cmasId :: ![Text]
    , _cmasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsMarkAsSpam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasXgafv'
--
-- * 'cmasUploadProtocol'
--
-- * 'cmasAccessToken'
--
-- * 'cmasUploadType'
--
-- * 'cmasId'
--
-- * 'cmasCallback'
commentsMarkAsSpam
    :: [Text] -- ^ 'cmasId'
    -> CommentsMarkAsSpam
commentsMarkAsSpam pCmasId_ =
  CommentsMarkAsSpam'
    { _cmasXgafv = Nothing
    , _cmasUploadProtocol = Nothing
    , _cmasAccessToken = Nothing
    , _cmasUploadType = Nothing
    , _cmasId = _Coerce # pCmasId_
    , _cmasCallback = Nothing
    }


-- | V1 error format.
cmasXgafv :: Lens' CommentsMarkAsSpam (Maybe Xgafv)
cmasXgafv
  = lens _cmasXgafv (\ s a -> s{_cmasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cmasUploadProtocol :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasUploadProtocol
  = lens _cmasUploadProtocol
      (\ s a -> s{_cmasUploadProtocol = a})

-- | OAuth access token.
cmasAccessToken :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasAccessToken
  = lens _cmasAccessToken
      (\ s a -> s{_cmasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cmasUploadType :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasUploadType
  = lens _cmasUploadType
      (\ s a -> s{_cmasUploadType = a})

-- | Flags the comments with the given IDs as spam in the caller\'s opinion.
cmasId :: Lens' CommentsMarkAsSpam [Text]
cmasId
  = lens _cmasId (\ s a -> s{_cmasId = a}) . _Coerce

-- | JSONP
cmasCallback :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasCallback
  = lens _cmasCallback (\ s a -> s{_cmasCallback = a})

instance GoogleRequest CommentsMarkAsSpam where
        type Rs CommentsMarkAsSpam = ()
        type Scopes CommentsMarkAsSpam =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsMarkAsSpam'{..}
          = go _cmasId _cmasXgafv _cmasUploadProtocol
              _cmasAccessToken
              _cmasUploadType
              _cmasCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      mempty
