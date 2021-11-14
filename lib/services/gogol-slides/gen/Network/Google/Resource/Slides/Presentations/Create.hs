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
-- Module      : Network.Google.Resource.Slides.Presentations.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a blank presentation using the title given in the request. If a
-- \`presentationId\` is provided, it is used as the ID of the new
-- presentation. Otherwise, a new ID is generated. Other fields in the
-- request, including any provided content, are ignored. Returns the
-- created presentation.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.create@.
module Network.Google.Resource.Slides.Presentations.Create
    (
    -- * REST Resource
      PresentationsCreateResource

    -- * Creating a Request
    , presentationsCreate
    , PresentationsCreate

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Slides.Types

-- | A resource alias for @slides.presentations.create@ method which the
-- 'PresentationsCreate' request conforms to.
type PresentationsCreateResource =
     "v1" :>
       "presentations" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Presentation :>
                       Post '[JSON] Presentation

-- | Creates a blank presentation using the title given in the request. If a
-- \`presentationId\` is provided, it is used as the ID of the new
-- presentation. Otherwise, a new ID is generated. Other fields in the
-- request, including any provided content, are ignored. Returns the
-- created presentation.
--
-- /See:/ 'presentationsCreate' smart constructor.
data PresentationsCreate =
  PresentationsCreate'
    { _pcXgafv :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcAccessToken :: !(Maybe Text)
    , _pcUploadType :: !(Maybe Text)
    , _pcPayload :: !Presentation
    , _pcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PresentationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcCallback'
presentationsCreate
    :: Presentation -- ^ 'pcPayload'
    -> PresentationsCreate
presentationsCreate pPcPayload_ =
  PresentationsCreate'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcCallback = Nothing
    }


-- | V1 error format.
pcXgafv :: Lens' PresentationsCreate (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' PresentationsCreate (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | OAuth access token.
pcAccessToken :: Lens' PresentationsCreate (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' PresentationsCreate (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' PresentationsCreate Presentation
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | JSONP
pcCallback :: Lens' PresentationsCreate (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest PresentationsCreate where
        type Rs PresentationsCreate = Presentation
        type Scopes PresentationsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/presentations"]
        requestClient PresentationsCreate'{..}
          = go _pcXgafv _pcUploadProtocol _pcAccessToken
              _pcUploadType
              _pcCallback
              (Just AltJSON)
              _pcPayload
              slidesService
          where go
                  = buildClient
                      (Proxy :: Proxy PresentationsCreateResource)
                      mempty
