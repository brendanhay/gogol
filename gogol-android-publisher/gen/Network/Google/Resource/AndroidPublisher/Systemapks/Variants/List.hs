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
-- Module      : Network.Google.Resource.AndroidPublisher.Systemapks.Variants.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of previously created system APK variants.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.list@.
module Network.Google.Resource.AndroidPublisher.Systemapks.Variants.List
    (
    -- * REST Resource
      SystemapksVariantsListResource

    -- * Creating a Request
    , systemapksVariantsList
    , SystemapksVariantsList

    -- * Request Lenses
    , svlXgafv
    , svlVersionCode
    , svlUploadProtocol
    , svlPackageName
    , svlAccessToken
    , svlUploadType
    , svlCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.systemapks.variants.list@ method which the
-- 'SystemapksVariantsList' request conforms to.
type SystemapksVariantsListResource =
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
                               Get '[JSON] SystemAPKsListResponse

-- | Returns the list of previously created system APK variants.
--
-- /See:/ 'systemapksVariantsList' smart constructor.
data SystemapksVariantsList =
  SystemapksVariantsList'
    { _svlXgafv :: !(Maybe Xgafv)
    , _svlVersionCode :: !(Textual Int64)
    , _svlUploadProtocol :: !(Maybe Text)
    , _svlPackageName :: !Text
    , _svlAccessToken :: !(Maybe Text)
    , _svlUploadType :: !(Maybe Text)
    , _svlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemapksVariantsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svlXgafv'
--
-- * 'svlVersionCode'
--
-- * 'svlUploadProtocol'
--
-- * 'svlPackageName'
--
-- * 'svlAccessToken'
--
-- * 'svlUploadType'
--
-- * 'svlCallback'
systemapksVariantsList
    :: Int64 -- ^ 'svlVersionCode'
    -> Text -- ^ 'svlPackageName'
    -> SystemapksVariantsList
systemapksVariantsList pSvlVersionCode_ pSvlPackageName_ =
  SystemapksVariantsList'
    { _svlXgafv = Nothing
    , _svlVersionCode = _Coerce # pSvlVersionCode_
    , _svlUploadProtocol = Nothing
    , _svlPackageName = pSvlPackageName_
    , _svlAccessToken = Nothing
    , _svlUploadType = Nothing
    , _svlCallback = Nothing
    }


-- | V1 error format.
svlXgafv :: Lens' SystemapksVariantsList (Maybe Xgafv)
svlXgafv = lens _svlXgafv (\ s a -> s{_svlXgafv = a})

-- | The version code of the App Bundle.
svlVersionCode :: Lens' SystemapksVariantsList Int64
svlVersionCode
  = lens _svlVersionCode
      (\ s a -> s{_svlVersionCode = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svlUploadProtocol :: Lens' SystemapksVariantsList (Maybe Text)
svlUploadProtocol
  = lens _svlUploadProtocol
      (\ s a -> s{_svlUploadProtocol = a})

-- | Package name of the app.
svlPackageName :: Lens' SystemapksVariantsList Text
svlPackageName
  = lens _svlPackageName
      (\ s a -> s{_svlPackageName = a})

-- | OAuth access token.
svlAccessToken :: Lens' SystemapksVariantsList (Maybe Text)
svlAccessToken
  = lens _svlAccessToken
      (\ s a -> s{_svlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svlUploadType :: Lens' SystemapksVariantsList (Maybe Text)
svlUploadType
  = lens _svlUploadType
      (\ s a -> s{_svlUploadType = a})

-- | JSONP
svlCallback :: Lens' SystemapksVariantsList (Maybe Text)
svlCallback
  = lens _svlCallback (\ s a -> s{_svlCallback = a})

instance GoogleRequest SystemapksVariantsList where
        type Rs SystemapksVariantsList =
             SystemAPKsListResponse
        type Scopes SystemapksVariantsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient SystemapksVariantsList'{..}
          = go _svlPackageName _svlVersionCode _svlXgafv
              _svlUploadProtocol
              _svlAccessToken
              _svlUploadType
              _svlCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy SystemapksVariantsListResource)
                      mempty
