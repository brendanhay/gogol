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
-- Module      : Network.Google.Resource.Slides.Presentations.Pages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest version of the specified page in the presentation.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.pages.get@.
module Network.Google.Resource.Slides.Presentations.Pages.Get
    (
    -- * REST Resource
      PresentationsPagesGetResource

    -- * Creating a Request
    , presentationsPagesGet
    , PresentationsPagesGet

    -- * Request Lenses
    , ppgXgafv
    , ppgUploadProtocol
    , ppgAccessToken
    , ppgPageObjectId
    , ppgUploadType
    , ppgPresentationId
    , ppgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Slides.Types

-- | A resource alias for @slides.presentations.pages.get@ method which the
-- 'PresentationsPagesGet' request conforms to.
type PresentationsPagesGetResource =
     "v1" :>
       "presentations" :>
         Capture "presentationId" Text :>
           "pages" :>
             Capture "pageObjectId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Page

-- | Gets the latest version of the specified page in the presentation.
--
-- /See:/ 'presentationsPagesGet' smart constructor.
data PresentationsPagesGet =
  PresentationsPagesGet'
    { _ppgXgafv          :: !(Maybe Xgafv)
    , _ppgUploadProtocol :: !(Maybe Text)
    , _ppgAccessToken    :: !(Maybe Text)
    , _ppgPageObjectId   :: !Text
    , _ppgUploadType     :: !(Maybe Text)
    , _ppgPresentationId :: !Text
    , _ppgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PresentationsPagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppgXgafv'
--
-- * 'ppgUploadProtocol'
--
-- * 'ppgAccessToken'
--
-- * 'ppgPageObjectId'
--
-- * 'ppgUploadType'
--
-- * 'ppgPresentationId'
--
-- * 'ppgCallback'
presentationsPagesGet
    :: Text -- ^ 'ppgPageObjectId'
    -> Text -- ^ 'ppgPresentationId'
    -> PresentationsPagesGet
presentationsPagesGet pPpgPageObjectId_ pPpgPresentationId_ =
  PresentationsPagesGet'
    { _ppgXgafv = Nothing
    , _ppgUploadProtocol = Nothing
    , _ppgAccessToken = Nothing
    , _ppgPageObjectId = pPpgPageObjectId_
    , _ppgUploadType = Nothing
    , _ppgPresentationId = pPpgPresentationId_
    , _ppgCallback = Nothing
    }

-- | V1 error format.
ppgXgafv :: Lens' PresentationsPagesGet (Maybe Xgafv)
ppgXgafv = lens _ppgXgafv (\ s a -> s{_ppgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppgUploadProtocol :: Lens' PresentationsPagesGet (Maybe Text)
ppgUploadProtocol
  = lens _ppgUploadProtocol
      (\ s a -> s{_ppgUploadProtocol = a})

-- | OAuth access token.
ppgAccessToken :: Lens' PresentationsPagesGet (Maybe Text)
ppgAccessToken
  = lens _ppgAccessToken
      (\ s a -> s{_ppgAccessToken = a})

-- | The object ID of the page to retrieve.
ppgPageObjectId :: Lens' PresentationsPagesGet Text
ppgPageObjectId
  = lens _ppgPageObjectId
      (\ s a -> s{_ppgPageObjectId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppgUploadType :: Lens' PresentationsPagesGet (Maybe Text)
ppgUploadType
  = lens _ppgUploadType
      (\ s a -> s{_ppgUploadType = a})

-- | The ID of the presentation to retrieve.
ppgPresentationId :: Lens' PresentationsPagesGet Text
ppgPresentationId
  = lens _ppgPresentationId
      (\ s a -> s{_ppgPresentationId = a})

-- | JSONP
ppgCallback :: Lens' PresentationsPagesGet (Maybe Text)
ppgCallback
  = lens _ppgCallback (\ s a -> s{_ppgCallback = a})

instance GoogleRequest PresentationsPagesGet where
        type Rs PresentationsPagesGet = Page
        type Scopes PresentationsPagesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/presentations",
               "https://www.googleapis.com/auth/presentations.readonly"]
        requestClient PresentationsPagesGet'{..}
          = go _ppgPresentationId _ppgPageObjectId _ppgXgafv
              _ppgUploadProtocol
              _ppgAccessToken
              _ppgUploadType
              _ppgCallback
              (Just AltJSON)
              slidesService
          where go
                  = buildClient
                      (Proxy :: Proxy PresentationsPagesGetResource)
                      mempty
