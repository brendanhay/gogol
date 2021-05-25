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
-- Module      : Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a previously created system APK variant.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.get@.
module Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Get
    (
    -- * REST Resource
      SystemapksVariantsGetResource

    -- * Creating a Request
    , systemapksVariantsGet
    , SystemapksVariantsGet

    -- * Request Lenses
    , svgXgafv
    , svgVersionCode
    , svgUploadProtocol
    , svgPackageName
    , svgAccessToken
    , svgUploadType
    , svgVariantId
    , svgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.systemapks.variants.get@ method which the
-- 'SystemapksVariantsGet' request conforms to.
type SystemapksVariantsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "systemApks" :>
               Capture "versionCode" (Textual Int64) :>
                 "variants" :>
                   Capture "variantId" (Textual Word32) :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Variant

-- | Returns a previously created system APK variant.
--
-- /See:/ 'systemapksVariantsGet' smart constructor.
data SystemapksVariantsGet =
  SystemapksVariantsGet'
    { _svgXgafv :: !(Maybe Xgafv)
    , _svgVersionCode :: !(Textual Int64)
    , _svgUploadProtocol :: !(Maybe Text)
    , _svgPackageName :: !Text
    , _svgAccessToken :: !(Maybe Text)
    , _svgUploadType :: !(Maybe Text)
    , _svgVariantId :: !(Textual Word32)
    , _svgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemapksVariantsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svgXgafv'
--
-- * 'svgVersionCode'
--
-- * 'svgUploadProtocol'
--
-- * 'svgPackageName'
--
-- * 'svgAccessToken'
--
-- * 'svgUploadType'
--
-- * 'svgVariantId'
--
-- * 'svgCallback'
systemapksVariantsGet
    :: Int64 -- ^ 'svgVersionCode'
    -> Text -- ^ 'svgPackageName'
    -> Word32 -- ^ 'svgVariantId'
    -> SystemapksVariantsGet
systemapksVariantsGet pSvgVersionCode_ pSvgPackageName_ pSvgVariantId_ =
  SystemapksVariantsGet'
    { _svgXgafv = Nothing
    , _svgVersionCode = _Coerce # pSvgVersionCode_
    , _svgUploadProtocol = Nothing
    , _svgPackageName = pSvgPackageName_
    , _svgAccessToken = Nothing
    , _svgUploadType = Nothing
    , _svgVariantId = _Coerce # pSvgVariantId_
    , _svgCallback = Nothing
    }


-- | V1 error format.
svgXgafv :: Lens' SystemapksVariantsGet (Maybe Xgafv)
svgXgafv = lens _svgXgafv (\ s a -> s{_svgXgafv = a})

-- | The version code of the App Bundle.
svgVersionCode :: Lens' SystemapksVariantsGet Int64
svgVersionCode
  = lens _svgVersionCode
      (\ s a -> s{_svgVersionCode = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svgUploadProtocol :: Lens' SystemapksVariantsGet (Maybe Text)
svgUploadProtocol
  = lens _svgUploadProtocol
      (\ s a -> s{_svgUploadProtocol = a})

-- | Package name of the app.
svgPackageName :: Lens' SystemapksVariantsGet Text
svgPackageName
  = lens _svgPackageName
      (\ s a -> s{_svgPackageName = a})

-- | OAuth access token.
svgAccessToken :: Lens' SystemapksVariantsGet (Maybe Text)
svgAccessToken
  = lens _svgAccessToken
      (\ s a -> s{_svgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svgUploadType :: Lens' SystemapksVariantsGet (Maybe Text)
svgUploadType
  = lens _svgUploadType
      (\ s a -> s{_svgUploadType = a})

-- | The ID of a previously created system APK variant.
svgVariantId :: Lens' SystemapksVariantsGet Word32
svgVariantId
  = lens _svgVariantId (\ s a -> s{_svgVariantId = a})
      . _Coerce

-- | JSONP
svgCallback :: Lens' SystemapksVariantsGet (Maybe Text)
svgCallback
  = lens _svgCallback (\ s a -> s{_svgCallback = a})

instance GoogleRequest SystemapksVariantsGet where
        type Rs SystemapksVariantsGet = Variant
        type Scopes SystemapksVariantsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient SystemapksVariantsGet'{..}
          = go _svgPackageName _svgVersionCode _svgVariantId
              _svgXgafv
              _svgUploadProtocol
              _svgAccessToken
              _svgUploadType
              _svgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy SystemapksVariantsGetResource)
                      mempty
