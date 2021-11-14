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
-- Module      : Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an APK which is suitable for inclusion in a system image from an
-- already uploaded Android App Bundle.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.create@.
module Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Create
    (
    -- * REST Resource
      SystemapksVariantsCreateResource

    -- * Creating a Request
    , systemapksVariantsCreate
    , SystemapksVariantsCreate

    -- * Request Lenses
    , svcXgafv
    , svcVersionCode
    , svcUploadProtocol
    , svcPackageName
    , svcAccessToken
    , svcUploadType
    , svcPayload
    , svcCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.systemapks.variants.create@ method which the
-- 'SystemapksVariantsCreate' request conforms to.
type SystemapksVariantsCreateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "systemApks" :>
               Capture "versionCode" (Textual Int64) :>
                 "variants" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Variant :> Post '[JSON] Variant

-- | Creates an APK which is suitable for inclusion in a system image from an
-- already uploaded Android App Bundle.
--
-- /See:/ 'systemapksVariantsCreate' smart constructor.
data SystemapksVariantsCreate =
  SystemapksVariantsCreate'
    { _svcXgafv :: !(Maybe Xgafv)
    , _svcVersionCode :: !(Textual Int64)
    , _svcUploadProtocol :: !(Maybe Text)
    , _svcPackageName :: !Text
    , _svcAccessToken :: !(Maybe Text)
    , _svcUploadType :: !(Maybe Text)
    , _svcPayload :: !Variant
    , _svcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemapksVariantsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svcXgafv'
--
-- * 'svcVersionCode'
--
-- * 'svcUploadProtocol'
--
-- * 'svcPackageName'
--
-- * 'svcAccessToken'
--
-- * 'svcUploadType'
--
-- * 'svcPayload'
--
-- * 'svcCallback'
systemapksVariantsCreate
    :: Int64 -- ^ 'svcVersionCode'
    -> Text -- ^ 'svcPackageName'
    -> Variant -- ^ 'svcPayload'
    -> SystemapksVariantsCreate
systemapksVariantsCreate pSvcVersionCode_ pSvcPackageName_ pSvcPayload_ =
  SystemapksVariantsCreate'
    { _svcXgafv = Nothing
    , _svcVersionCode = _Coerce # pSvcVersionCode_
    , _svcUploadProtocol = Nothing
    , _svcPackageName = pSvcPackageName_
    , _svcAccessToken = Nothing
    , _svcUploadType = Nothing
    , _svcPayload = pSvcPayload_
    , _svcCallback = Nothing
    }


-- | V1 error format.
svcXgafv :: Lens' SystemapksVariantsCreate (Maybe Xgafv)
svcXgafv = lens _svcXgafv (\ s a -> s{_svcXgafv = a})

-- | The version code of the App Bundle.
svcVersionCode :: Lens' SystemapksVariantsCreate Int64
svcVersionCode
  = lens _svcVersionCode
      (\ s a -> s{_svcVersionCode = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svcUploadProtocol :: Lens' SystemapksVariantsCreate (Maybe Text)
svcUploadProtocol
  = lens _svcUploadProtocol
      (\ s a -> s{_svcUploadProtocol = a})

-- | Package name of the app.
svcPackageName :: Lens' SystemapksVariantsCreate Text
svcPackageName
  = lens _svcPackageName
      (\ s a -> s{_svcPackageName = a})

-- | OAuth access token.
svcAccessToken :: Lens' SystemapksVariantsCreate (Maybe Text)
svcAccessToken
  = lens _svcAccessToken
      (\ s a -> s{_svcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svcUploadType :: Lens' SystemapksVariantsCreate (Maybe Text)
svcUploadType
  = lens _svcUploadType
      (\ s a -> s{_svcUploadType = a})

-- | Multipart request metadata.
svcPayload :: Lens' SystemapksVariantsCreate Variant
svcPayload
  = lens _svcPayload (\ s a -> s{_svcPayload = a})

-- | JSONP
svcCallback :: Lens' SystemapksVariantsCreate (Maybe Text)
svcCallback
  = lens _svcCallback (\ s a -> s{_svcCallback = a})

instance GoogleRequest SystemapksVariantsCreate where
        type Rs SystemapksVariantsCreate = Variant
        type Scopes SystemapksVariantsCreate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient SystemapksVariantsCreate'{..}
          = go _svcPackageName _svcVersionCode _svcXgafv
              _svcUploadProtocol
              _svcAccessToken
              _svcUploadType
              _svcCallback
              (Just AltJSON)
              _svcPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy SystemapksVariantsCreateResource)
                      mempty
