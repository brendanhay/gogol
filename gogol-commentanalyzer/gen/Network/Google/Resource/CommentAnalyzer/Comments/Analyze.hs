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
-- Module      : Network.Google.Resource.CommentAnalyzer.Comments.Analyze
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the provided text and returns scores for requested attributes.
--
-- /See:/ <https://github.com/conversationai/perspectiveapi/blob/master/README.md Perspective Comment Analyzer API Reference> for @commentanalyzer.comments.analyze@.
module Network.Google.Resource.CommentAnalyzer.Comments.Analyze
    (
    -- * REST Resource
      CommentsAnalyzeResource

    -- * Creating a Request
    , commentsAnalyze
    , CommentsAnalyze

    -- * Request Lenses
    , caXgafv
    , caUploadProtocol
    , caAccessToken
    , caUploadType
    , caPayload
    , caCallback
    ) where

import Network.Google.CommentAnalyzer.Types
import Network.Google.Prelude

-- | A resource alias for @commentanalyzer.comments.analyze@ method which the
-- 'CommentsAnalyze' request conforms to.
type CommentsAnalyzeResource =
     "v1alpha1" :>
       "comments:analyze" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AnalyzeCommentRequest :>
                       Post '[JSON] AnalyzeCommentResponse

-- | Analyzes the provided text and returns scores for requested attributes.
--
-- /See:/ 'commentsAnalyze' smart constructor.
data CommentsAnalyze =
  CommentsAnalyze'
    { _caXgafv :: !(Maybe Xgafv)
    , _caUploadProtocol :: !(Maybe Text)
    , _caAccessToken :: !(Maybe Text)
    , _caUploadType :: !(Maybe Text)
    , _caPayload :: !AnalyzeCommentRequest
    , _caCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsAnalyze' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caXgafv'
--
-- * 'caUploadProtocol'
--
-- * 'caAccessToken'
--
-- * 'caUploadType'
--
-- * 'caPayload'
--
-- * 'caCallback'
commentsAnalyze
    :: AnalyzeCommentRequest -- ^ 'caPayload'
    -> CommentsAnalyze
commentsAnalyze pCaPayload_ =
  CommentsAnalyze'
    { _caXgafv = Nothing
    , _caUploadProtocol = Nothing
    , _caAccessToken = Nothing
    , _caUploadType = Nothing
    , _caPayload = pCaPayload_
    , _caCallback = Nothing
    }


-- | V1 error format.
caXgafv :: Lens' CommentsAnalyze (Maybe Xgafv)
caXgafv = lens _caXgafv (\ s a -> s{_caXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
caUploadProtocol :: Lens' CommentsAnalyze (Maybe Text)
caUploadProtocol
  = lens _caUploadProtocol
      (\ s a -> s{_caUploadProtocol = a})

-- | OAuth access token.
caAccessToken :: Lens' CommentsAnalyze (Maybe Text)
caAccessToken
  = lens _caAccessToken
      (\ s a -> s{_caAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
caUploadType :: Lens' CommentsAnalyze (Maybe Text)
caUploadType
  = lens _caUploadType (\ s a -> s{_caUploadType = a})

-- | Multipart request metadata.
caPayload :: Lens' CommentsAnalyze AnalyzeCommentRequest
caPayload
  = lens _caPayload (\ s a -> s{_caPayload = a})

-- | JSONP
caCallback :: Lens' CommentsAnalyze (Maybe Text)
caCallback
  = lens _caCallback (\ s a -> s{_caCallback = a})

instance GoogleRequest CommentsAnalyze where
        type Rs CommentsAnalyze = AnalyzeCommentResponse
        type Scopes CommentsAnalyze =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient CommentsAnalyze'{..}
          = go _caXgafv _caUploadProtocol _caAccessToken
              _caUploadType
              _caCallback
              (Just AltJSON)
              _caPayload
              commentAnalyzerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsAnalyzeResource)
                      mempty
