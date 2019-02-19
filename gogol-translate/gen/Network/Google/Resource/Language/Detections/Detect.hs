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
-- Module      : Network.Google.Resource.Language.Detections.Detect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the language of text within a request.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference> for @language.detections.detect@.
module Network.Google.Resource.Language.Detections.Detect
    (
    -- * REST Resource
      DetectionsDetectResource

    -- * Creating a Request
    , detectionsDetect
    , DetectionsDetect

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddPp
    , ddAccessToken
    , ddUploadType
    , ddPayload
    , ddBearerToken
    , ddCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.detections.detect@ method which the
-- 'DetectionsDetect' request conforms to.
type DetectionsDetectResource =
     "language" :>
       "translate" :>
         "v2" :>
           "detect" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DetectLanguageRequest :>
                               Post '[JSON] DetectionsListResponse

-- | Detects the language of text within a request.
--
-- /See:/ 'detectionsDetect' smart constructor.
data DetectionsDetect =
  DetectionsDetect'
    { _ddXgafv          :: !(Maybe Xgafv)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddPp             :: !Bool
    , _ddAccessToken    :: !(Maybe Text)
    , _ddUploadType     :: !(Maybe Text)
    , _ddPayload        :: !DetectLanguageRequest
    , _ddBearerToken    :: !(Maybe Text)
    , _ddCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectionsDetect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddPp'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddPayload'
--
-- * 'ddBearerToken'
--
-- * 'ddCallback'
detectionsDetect
    :: DetectLanguageRequest -- ^ 'ddPayload'
    -> DetectionsDetect
detectionsDetect pDdPayload_ =
  DetectionsDetect'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddPp = True
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddPayload = pDdPayload_
    , _ddBearerToken = Nothing
    , _ddCallback = Nothing
    }

-- | V1 error format.
ddXgafv :: Lens' DetectionsDetect (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DetectionsDetect (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | Pretty-print response.
ddPp :: Lens' DetectionsDetect Bool
ddPp = lens _ddPp (\ s a -> s{_ddPp = a})

-- | OAuth access token.
ddAccessToken :: Lens' DetectionsDetect (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DetectionsDetect (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | Multipart request metadata.
ddPayload :: Lens' DetectionsDetect DetectLanguageRequest
ddPayload
  = lens _ddPayload (\ s a -> s{_ddPayload = a})

-- | OAuth bearer token.
ddBearerToken :: Lens' DetectionsDetect (Maybe Text)
ddBearerToken
  = lens _ddBearerToken
      (\ s a -> s{_ddBearerToken = a})

-- | JSONP
ddCallback :: Lens' DetectionsDetect (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleRequest DetectionsDetect where
        type Rs DetectionsDetect = DetectionsListResponse
        type Scopes DetectionsDetect =
             '["https://www.googleapis.com/auth/cloud-translation",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DetectionsDetect'{..}
          = go _ddXgafv _ddUploadProtocol (Just _ddPp)
              _ddAccessToken
              _ddUploadType
              _ddBearerToken
              _ddCallback
              (Just AltJSON)
              _ddPayload
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy DetectionsDetectResource)
                      mempty
