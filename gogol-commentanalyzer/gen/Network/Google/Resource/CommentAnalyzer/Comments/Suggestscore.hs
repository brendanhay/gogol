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
-- Module      : Network.Google.Resource.CommentAnalyzer.Comments.Suggestscore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Suggest comment scores as training data.
--
-- /See:/ <https://github.com/conversationai/perspectiveapi/blob/master/README.md Perspective Comment Analyzer API Reference> for @commentanalyzer.comments.suggestscore@.
module Network.Google.Resource.CommentAnalyzer.Comments.Suggestscore
    (
    -- * REST Resource
      CommentsSuggestscoreResource

    -- * Creating a Request
    , commentsSuggestscore
    , CommentsSuggestscore

    -- * Request Lenses
    , csXgafv
    , csUploadProtocol
    , csAccessToken
    , csUploadType
    , csPayload
    , csCallback
    ) where

import Network.Google.CommentAnalyzer.Types
import Network.Google.Prelude

-- | A resource alias for @commentanalyzer.comments.suggestscore@ method which the
-- 'CommentsSuggestscore' request conforms to.
type CommentsSuggestscoreResource =
     "v1alpha1" :>
       "comments:suggestscore" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SuggestCommentScoreRequest :>
                       Post '[JSON] SuggestCommentScoreResponse

-- | Suggest comment scores as training data.
--
-- /See:/ 'commentsSuggestscore' smart constructor.
data CommentsSuggestscore =
  CommentsSuggestscore'
    { _csXgafv :: !(Maybe Xgafv)
    , _csUploadProtocol :: !(Maybe Text)
    , _csAccessToken :: !(Maybe Text)
    , _csUploadType :: !(Maybe Text)
    , _csPayload :: !SuggestCommentScoreRequest
    , _csCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsSuggestscore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csXgafv'
--
-- * 'csUploadProtocol'
--
-- * 'csAccessToken'
--
-- * 'csUploadType'
--
-- * 'csPayload'
--
-- * 'csCallback'
commentsSuggestscore
    :: SuggestCommentScoreRequest -- ^ 'csPayload'
    -> CommentsSuggestscore
commentsSuggestscore pCsPayload_ =
  CommentsSuggestscore'
    { _csXgafv = Nothing
    , _csUploadProtocol = Nothing
    , _csAccessToken = Nothing
    , _csUploadType = Nothing
    , _csPayload = pCsPayload_
    , _csCallback = Nothing
    }


-- | V1 error format.
csXgafv :: Lens' CommentsSuggestscore (Maybe Xgafv)
csXgafv = lens _csXgafv (\ s a -> s{_csXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csUploadProtocol :: Lens' CommentsSuggestscore (Maybe Text)
csUploadProtocol
  = lens _csUploadProtocol
      (\ s a -> s{_csUploadProtocol = a})

-- | OAuth access token.
csAccessToken :: Lens' CommentsSuggestscore (Maybe Text)
csAccessToken
  = lens _csAccessToken
      (\ s a -> s{_csAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csUploadType :: Lens' CommentsSuggestscore (Maybe Text)
csUploadType
  = lens _csUploadType (\ s a -> s{_csUploadType = a})

-- | Multipart request metadata.
csPayload :: Lens' CommentsSuggestscore SuggestCommentScoreRequest
csPayload
  = lens _csPayload (\ s a -> s{_csPayload = a})

-- | JSONP
csCallback :: Lens' CommentsSuggestscore (Maybe Text)
csCallback
  = lens _csCallback (\ s a -> s{_csCallback = a})

instance GoogleRequest CommentsSuggestscore where
        type Rs CommentsSuggestscore =
             SuggestCommentScoreResponse
        type Scopes CommentsSuggestscore =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient CommentsSuggestscore'{..}
          = go _csXgafv _csUploadProtocol _csAccessToken
              _csUploadType
              _csCallback
              (Just AltJSON)
              _csPayload
              commentAnalyzerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsSuggestscoreResource)
                      mempty
