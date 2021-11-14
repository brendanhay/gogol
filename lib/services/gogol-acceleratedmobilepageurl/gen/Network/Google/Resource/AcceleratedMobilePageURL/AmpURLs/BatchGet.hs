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
-- Module      : Network.Google.Resource.AcceleratedMobilePageURL.AmpURLs.BatchGet
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns AMP URL(s) and equivalent [AMP Cache
-- URL(s)](\/amp\/cache\/overview#amp-cache-url-format).
--
-- /See:/ <https://developers.google.com/amp/cache/ Accelerated Mobile Pages (AMP) URL API Reference> for @acceleratedmobilepageurl.ampUrls.batchGet@.
module Network.Google.Resource.AcceleratedMobilePageURL.AmpURLs.BatchGet
    (
    -- * REST Resource
      AmpURLsBatchGetResource

    -- * Creating a Request
    , ampURLsBatchGet
    , AmpURLsBatchGet

    -- * Request Lenses
    , aubgXgafv
    , aubgUploadProtocol
    , aubgAccessToken
    , aubgUploadType
    , aubgPayload
    , aubgCallback
    ) where

import Network.Google.AcceleratedMobilePageURL.Types
import Network.Google.Prelude

-- | A resource alias for @acceleratedmobilepageurl.ampUrls.batchGet@ method which the
-- 'AmpURLsBatchGet' request conforms to.
type AmpURLsBatchGetResource =
     "v1" :>
       "ampUrls:batchGet" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchGetAmpURLsRequest :>
                       Post '[JSON] BatchGetAmpURLsResponse

-- | Returns AMP URL(s) and equivalent [AMP Cache
-- URL(s)](\/amp\/cache\/overview#amp-cache-url-format).
--
-- /See:/ 'ampURLsBatchGet' smart constructor.
data AmpURLsBatchGet =
  AmpURLsBatchGet'
    { _aubgXgafv :: !(Maybe Xgafv)
    , _aubgUploadProtocol :: !(Maybe Text)
    , _aubgAccessToken :: !(Maybe Text)
    , _aubgUploadType :: !(Maybe Text)
    , _aubgPayload :: !BatchGetAmpURLsRequest
    , _aubgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AmpURLsBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aubgXgafv'
--
-- * 'aubgUploadProtocol'
--
-- * 'aubgAccessToken'
--
-- * 'aubgUploadType'
--
-- * 'aubgPayload'
--
-- * 'aubgCallback'
ampURLsBatchGet
    :: BatchGetAmpURLsRequest -- ^ 'aubgPayload'
    -> AmpURLsBatchGet
ampURLsBatchGet pAubgPayload_ =
  AmpURLsBatchGet'
    { _aubgXgafv = Nothing
    , _aubgUploadProtocol = Nothing
    , _aubgAccessToken = Nothing
    , _aubgUploadType = Nothing
    , _aubgPayload = pAubgPayload_
    , _aubgCallback = Nothing
    }


-- | V1 error format.
aubgXgafv :: Lens' AmpURLsBatchGet (Maybe Xgafv)
aubgXgafv
  = lens _aubgXgafv (\ s a -> s{_aubgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aubgUploadProtocol :: Lens' AmpURLsBatchGet (Maybe Text)
aubgUploadProtocol
  = lens _aubgUploadProtocol
      (\ s a -> s{_aubgUploadProtocol = a})

-- | OAuth access token.
aubgAccessToken :: Lens' AmpURLsBatchGet (Maybe Text)
aubgAccessToken
  = lens _aubgAccessToken
      (\ s a -> s{_aubgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aubgUploadType :: Lens' AmpURLsBatchGet (Maybe Text)
aubgUploadType
  = lens _aubgUploadType
      (\ s a -> s{_aubgUploadType = a})

-- | Multipart request metadata.
aubgPayload :: Lens' AmpURLsBatchGet BatchGetAmpURLsRequest
aubgPayload
  = lens _aubgPayload (\ s a -> s{_aubgPayload = a})

-- | JSONP
aubgCallback :: Lens' AmpURLsBatchGet (Maybe Text)
aubgCallback
  = lens _aubgCallback (\ s a -> s{_aubgCallback = a})

instance GoogleRequest AmpURLsBatchGet where
        type Rs AmpURLsBatchGet = BatchGetAmpURLsResponse
        type Scopes AmpURLsBatchGet = '[]
        requestClient AmpURLsBatchGet'{..}
          = go _aubgXgafv _aubgUploadProtocol _aubgAccessToken
              _aubgUploadType
              _aubgCallback
              (Just AltJSON)
              _aubgPayload
              acceleratedMobilePageUrlService
          where go
                  = buildClient
                      (Proxy :: Proxy AmpURLsBatchGetResource)
                      mempty
