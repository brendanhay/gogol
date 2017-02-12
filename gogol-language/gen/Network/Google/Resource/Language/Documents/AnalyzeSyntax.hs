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
-- Module      : Network.Google.Resource.Language.Documents.AnalyzeSyntax
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the syntax of the text and provides sentence boundaries and
-- tokenization along with part of speech tags, dependency trees, and other
-- properties.
--
-- /See:/ <https://cloud.google.com/natural-language/ Google Cloud Natural Language API Reference> for @language.documents.analyzeSyntax@.
module Network.Google.Resource.Language.Documents.AnalyzeSyntax
    (
    -- * REST Resource
      DocumentsAnalyzeSyntaxResource

    -- * Creating a Request
    , documentsAnalyzeSyntax
    , DocumentsAnalyzeSyntax

    -- * Request Lenses
    , dXgafv
    , dUploadProtocol
    , dPp
    , dAccessToken
    , dUploadType
    , dPayload
    , dBearerToken
    , dCallback
    ) where

import           Network.Google.Language.Types
import           Network.Google.Prelude

-- | A resource alias for @language.documents.analyzeSyntax@ method which the
-- 'DocumentsAnalyzeSyntax' request conforms to.
type DocumentsAnalyzeSyntaxResource =
     "v1" :>
       "documents:analyzeSyntax" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AnalyzeSyntaxRequest :>
                           Post '[JSON] AnalyzeSyntaxResponse

-- | Analyzes the syntax of the text and provides sentence boundaries and
-- tokenization along with part of speech tags, dependency trees, and other
-- properties.
--
-- /See:/ 'documentsAnalyzeSyntax' smart constructor.
data DocumentsAnalyzeSyntax = DocumentsAnalyzeSyntax'
    { _dXgafv          :: !(Maybe Xgafv)
    , _dUploadProtocol :: !(Maybe Text)
    , _dPp             :: !Bool
    , _dAccessToken    :: !(Maybe Text)
    , _dUploadType     :: !(Maybe Text)
    , _dPayload        :: !AnalyzeSyntaxRequest
    , _dBearerToken    :: !(Maybe Text)
    , _dCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DocumentsAnalyzeSyntax' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dXgafv'
--
-- * 'dUploadProtocol'
--
-- * 'dPp'
--
-- * 'dAccessToken'
--
-- * 'dUploadType'
--
-- * 'dPayload'
--
-- * 'dBearerToken'
--
-- * 'dCallback'
documentsAnalyzeSyntax
    :: AnalyzeSyntaxRequest -- ^ 'dPayload'
    -> DocumentsAnalyzeSyntax
documentsAnalyzeSyntax pDPayload_ =
    DocumentsAnalyzeSyntax'
    { _dXgafv = Nothing
    , _dUploadProtocol = Nothing
    , _dPp = True
    , _dAccessToken = Nothing
    , _dUploadType = Nothing
    , _dPayload = pDPayload_
    , _dBearerToken = Nothing
    , _dCallback = Nothing
    }

-- | V1 error format.
dXgafv :: Lens' DocumentsAnalyzeSyntax (Maybe Xgafv)
dXgafv = lens _dXgafv (\ s a -> s{_dXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dUploadProtocol :: Lens' DocumentsAnalyzeSyntax (Maybe Text)
dUploadProtocol
  = lens _dUploadProtocol
      (\ s a -> s{_dUploadProtocol = a})

-- | Pretty-print response.
dPp :: Lens' DocumentsAnalyzeSyntax Bool
dPp = lens _dPp (\ s a -> s{_dPp = a})

-- | OAuth access token.
dAccessToken :: Lens' DocumentsAnalyzeSyntax (Maybe Text)
dAccessToken
  = lens _dAccessToken (\ s a -> s{_dAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dUploadType :: Lens' DocumentsAnalyzeSyntax (Maybe Text)
dUploadType
  = lens _dUploadType (\ s a -> s{_dUploadType = a})

-- | Multipart request metadata.
dPayload :: Lens' DocumentsAnalyzeSyntax AnalyzeSyntaxRequest
dPayload = lens _dPayload (\ s a -> s{_dPayload = a})

-- | OAuth bearer token.
dBearerToken :: Lens' DocumentsAnalyzeSyntax (Maybe Text)
dBearerToken
  = lens _dBearerToken (\ s a -> s{_dBearerToken = a})

-- | JSONP
dCallback :: Lens' DocumentsAnalyzeSyntax (Maybe Text)
dCallback
  = lens _dCallback (\ s a -> s{_dCallback = a})

instance GoogleRequest DocumentsAnalyzeSyntax where
        type Rs DocumentsAnalyzeSyntax =
             AnalyzeSyntaxResponse
        type Scopes DocumentsAnalyzeSyntax =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsAnalyzeSyntax'{..}
          = go _dXgafv _dUploadProtocol (Just _dPp)
              _dAccessToken
              _dUploadType
              _dBearerToken
              _dCallback
              (Just AltJSON)
              _dPayload
              languageService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsAnalyzeSyntaxResource)
                      mempty
