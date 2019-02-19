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
-- Module      : Network.Google.Resource.Language.Documents.AnalyzeEntities
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds named entities (currently proper names and common nouns) in the
-- text along with entity types, salience, mentions for each entity, and
-- other properties.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeEntities@.
module Network.Google.Resource.Language.Documents.AnalyzeEntities
    (
    -- * REST Resource
      DocumentsAnalyzeEntitiesResource

    -- * Creating a Request
    , documentsAnalyzeEntities
    , DocumentsAnalyzeEntities

    -- * Request Lenses
    , daeXgafv
    , daeUploadProtocol
    , daeAccessToken
    , daeUploadType
    , daePayload
    , daeCallback
    ) where

import           Network.Google.Language.Types
import           Network.Google.Prelude

-- | A resource alias for @language.documents.analyzeEntities@ method which the
-- 'DocumentsAnalyzeEntities' request conforms to.
type DocumentsAnalyzeEntitiesResource =
     "v1" :>
       "documents:analyzeEntities" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AnalyzeEntitiesRequest :>
                       Post '[JSON] AnalyzeEntitiesResponse

-- | Finds named entities (currently proper names and common nouns) in the
-- text along with entity types, salience, mentions for each entity, and
-- other properties.
--
-- /See:/ 'documentsAnalyzeEntities' smart constructor.
data DocumentsAnalyzeEntities =
  DocumentsAnalyzeEntities'
    { _daeXgafv          :: !(Maybe Xgafv)
    , _daeUploadProtocol :: !(Maybe Text)
    , _daeAccessToken    :: !(Maybe Text)
    , _daeUploadType     :: !(Maybe Text)
    , _daePayload        :: !AnalyzeEntitiesRequest
    , _daeCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsAnalyzeEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daeXgafv'
--
-- * 'daeUploadProtocol'
--
-- * 'daeAccessToken'
--
-- * 'daeUploadType'
--
-- * 'daePayload'
--
-- * 'daeCallback'
documentsAnalyzeEntities
    :: AnalyzeEntitiesRequest -- ^ 'daePayload'
    -> DocumentsAnalyzeEntities
documentsAnalyzeEntities pDaePayload_ =
  DocumentsAnalyzeEntities'
    { _daeXgafv = Nothing
    , _daeUploadProtocol = Nothing
    , _daeAccessToken = Nothing
    , _daeUploadType = Nothing
    , _daePayload = pDaePayload_
    , _daeCallback = Nothing
    }


-- | V1 error format.
daeXgafv :: Lens' DocumentsAnalyzeEntities (Maybe Xgafv)
daeXgafv = lens _daeXgafv (\ s a -> s{_daeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
daeUploadProtocol :: Lens' DocumentsAnalyzeEntities (Maybe Text)
daeUploadProtocol
  = lens _daeUploadProtocol
      (\ s a -> s{_daeUploadProtocol = a})

-- | OAuth access token.
daeAccessToken :: Lens' DocumentsAnalyzeEntities (Maybe Text)
daeAccessToken
  = lens _daeAccessToken
      (\ s a -> s{_daeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
daeUploadType :: Lens' DocumentsAnalyzeEntities (Maybe Text)
daeUploadType
  = lens _daeUploadType
      (\ s a -> s{_daeUploadType = a})

-- | Multipart request metadata.
daePayload :: Lens' DocumentsAnalyzeEntities AnalyzeEntitiesRequest
daePayload
  = lens _daePayload (\ s a -> s{_daePayload = a})

-- | JSONP
daeCallback :: Lens' DocumentsAnalyzeEntities (Maybe Text)
daeCallback
  = lens _daeCallback (\ s a -> s{_daeCallback = a})

instance GoogleRequest DocumentsAnalyzeEntities where
        type Rs DocumentsAnalyzeEntities =
             AnalyzeEntitiesResponse
        type Scopes DocumentsAnalyzeEntities =
             '["https://www.googleapis.com/auth/cloud-language",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsAnalyzeEntities'{..}
          = go _daeXgafv _daeUploadProtocol _daeAccessToken
              _daeUploadType
              _daeCallback
              (Just AltJSON)
              _daePayload
              languageService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsAnalyzeEntitiesResource)
                      mempty
