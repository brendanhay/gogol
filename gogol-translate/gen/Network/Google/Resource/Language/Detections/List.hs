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
-- Module      : Network.Google.Resource.Language.Detections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the language of text within a request.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference> for @language.detections.list@.
module Network.Google.Resource.Language.Detections.List
    (
    -- * REST Resource
      DetectionsListResource

    -- * Creating a Request
    , detectionsList
    , DetectionsList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlPp
    , dlAccessToken
    , dlUploadType
    , dlQ
    , dlBearerToken
    , dlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.detections.list@ method which the
-- 'DetectionsList' request conforms to.
type DetectionsListResource =
     "language" :>
       "translate" :>
         "v2" :>
           "detect" :>
             QueryParams "q" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DetectionsListResponse

-- | Detects the language of text within a request.
--
-- /See:/ 'detectionsList' smart constructor.
data DetectionsList =
  DetectionsList'
    { _dlXgafv          :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlPp             :: !Bool
    , _dlAccessToken    :: !(Maybe Text)
    , _dlUploadType     :: !(Maybe Text)
    , _dlQ              :: ![Text]
    , _dlBearerToken    :: !(Maybe Text)
    , _dlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlPp'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlQ'
--
-- * 'dlBearerToken'
--
-- * 'dlCallback'
detectionsList
    :: [Text] -- ^ 'dlQ'
    -> DetectionsList
detectionsList pDlQ_ =
  DetectionsList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlPp = True
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlQ = _Coerce # pDlQ_
    , _dlBearerToken = Nothing
    , _dlCallback = Nothing
    }

-- | V1 error format.
dlXgafv :: Lens' DetectionsList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DetectionsList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | Pretty-print response.
dlPp :: Lens' DetectionsList Bool
dlPp = lens _dlPp (\ s a -> s{_dlPp = a})

-- | OAuth access token.
dlAccessToken :: Lens' DetectionsList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DetectionsList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | The input text upon which to perform language detection. Repeat this
-- parameter to perform language detection on multiple text inputs.
dlQ :: Lens' DetectionsList [Text]
dlQ = lens _dlQ (\ s a -> s{_dlQ = a}) . _Coerce

-- | OAuth bearer token.
dlBearerToken :: Lens' DetectionsList (Maybe Text)
dlBearerToken
  = lens _dlBearerToken
      (\ s a -> s{_dlBearerToken = a})

-- | JSONP
dlCallback :: Lens' DetectionsList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DetectionsList where
        type Rs DetectionsList = DetectionsListResponse
        type Scopes DetectionsList =
             '["https://www.googleapis.com/auth/cloud-translation",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DetectionsList'{..}
          = go _dlQ _dlXgafv _dlUploadProtocol (Just _dlPp)
              _dlAccessToken
              _dlUploadType
              _dlBearerToken
              _dlCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient (Proxy :: Proxy DetectionsListResource)
                      mempty
