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
-- Module      : Network.Google.Resource.Slides.Presentations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest version of the specified presentation.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.get@.
module Network.Google.Resource.Slides.Presentations.Get
    (
    -- * REST Resource
      PresentationsGetResource

    -- * Creating a Request
    , presentationsGet
    , PresentationsGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgPresentationId
    , pgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Slides.Types

-- | A resource alias for @slides.presentations.get@ method which the
-- 'PresentationsGet' request conforms to.
type PresentationsGetResource =
     "v1" :>
       "presentations" :>
         Capture "presentationId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Presentation

-- | Gets the latest version of the specified presentation.
--
-- /See:/ 'presentationsGet' smart constructor.
data PresentationsGet =
  PresentationsGet'
    { _pgXgafv          :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken    :: !(Maybe Text)
    , _pgUploadType     :: !(Maybe Text)
    , _pgPresentationId :: !Text
    , _pgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PresentationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgPresentationId'
--
-- * 'pgCallback'
presentationsGet
    :: Text -- ^ 'pgPresentationId'
    -> PresentationsGet
presentationsGet pPgPresentationId_ =
  PresentationsGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgPresentationId = pPgPresentationId_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PresentationsGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PresentationsGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PresentationsGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PresentationsGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | The ID of the presentation to retrieve.
pgPresentationId :: Lens' PresentationsGet Text
pgPresentationId
  = lens _pgPresentationId
      (\ s a -> s{_pgPresentationId = a})

-- | JSONP
pgCallback :: Lens' PresentationsGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PresentationsGet where
        type Rs PresentationsGet = Presentation
        type Scopes PresentationsGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/presentations",
               "https://www.googleapis.com/auth/presentations.readonly"]
        requestClient PresentationsGet'{..}
          = go _pgPresentationId _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgCallback
              (Just AltJSON)
              slidesService
          where go
                  = buildClient
                      (Proxy :: Proxy PresentationsGetResource)
                      mempty
