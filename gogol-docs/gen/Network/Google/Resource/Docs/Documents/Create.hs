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
-- Module      : Network.Google.Resource.Docs.Documents.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a blank document using the title given in the request. Other
-- fields in the request, including any provided content, are ignored.
-- Returns the created document.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.create@.
module Network.Google.Resource.Docs.Documents.Create
    (
    -- * REST Resource
      DocumentsCreateResource

    -- * Creating a Request
    , documentsCreate
    , DocumentsCreate

    -- * Request Lenses
    , dcXgafv
    , dcUploadProtocol
    , dcAccessToken
    , dcUploadType
    , dcPayload
    , dcCallback
    ) where

import Network.Google.Docs.Types
import Network.Google.Prelude

-- | A resource alias for @docs.documents.create@ method which the
-- 'DocumentsCreate' request conforms to.
type DocumentsCreateResource =
     "v1" :>
       "documents" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Document :> Post '[JSON] Document

-- | Creates a blank document using the title given in the request. Other
-- fields in the request, including any provided content, are ignored.
-- Returns the created document.
--
-- /See:/ 'documentsCreate' smart constructor.
data DocumentsCreate =
  DocumentsCreate'
    { _dcXgafv :: !(Maybe Xgafv)
    , _dcUploadProtocol :: !(Maybe Text)
    , _dcAccessToken :: !(Maybe Text)
    , _dcUploadType :: !(Maybe Text)
    , _dcPayload :: !Document
    , _dcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcXgafv'
--
-- * 'dcUploadProtocol'
--
-- * 'dcAccessToken'
--
-- * 'dcUploadType'
--
-- * 'dcPayload'
--
-- * 'dcCallback'
documentsCreate
    :: Document -- ^ 'dcPayload'
    -> DocumentsCreate
documentsCreate pDcPayload_ =
  DocumentsCreate'
    { _dcXgafv = Nothing
    , _dcUploadProtocol = Nothing
    , _dcAccessToken = Nothing
    , _dcUploadType = Nothing
    , _dcPayload = pDcPayload_
    , _dcCallback = Nothing
    }


-- | V1 error format.
dcXgafv :: Lens' DocumentsCreate (Maybe Xgafv)
dcXgafv = lens _dcXgafv (\ s a -> s{_dcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcUploadProtocol :: Lens' DocumentsCreate (Maybe Text)
dcUploadProtocol
  = lens _dcUploadProtocol
      (\ s a -> s{_dcUploadProtocol = a})

-- | OAuth access token.
dcAccessToken :: Lens' DocumentsCreate (Maybe Text)
dcAccessToken
  = lens _dcAccessToken
      (\ s a -> s{_dcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcUploadType :: Lens' DocumentsCreate (Maybe Text)
dcUploadType
  = lens _dcUploadType (\ s a -> s{_dcUploadType = a})

-- | Multipart request metadata.
dcPayload :: Lens' DocumentsCreate Document
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | JSONP
dcCallback :: Lens' DocumentsCreate (Maybe Text)
dcCallback
  = lens _dcCallback (\ s a -> s{_dcCallback = a})

instance GoogleRequest DocumentsCreate where
        type Rs DocumentsCreate = Document
        type Scopes DocumentsCreate =
             '["https://www.googleapis.com/auth/documents",
               "https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DocumentsCreate'{..}
          = go _dcXgafv _dcUploadProtocol _dcAccessToken
              _dcUploadType
              _dcCallback
              (Just AltJSON)
              _dcPayload
              docsService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsCreateResource)
                      mempty
