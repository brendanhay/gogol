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
-- Module      : Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an image for a resource with the given ID and image type.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.imageConfigurations.upload@.
module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
    (
    -- * REST Resource
      ImageConfigurationsUploadResource

    -- * Creating a Request
    , imageConfigurationsUpload
    , ImageConfigurationsUpload

    -- * Request Lenses
    , icuXgafv
    , icuResourceId
    , icuUploadProtocol
    , icuAccessToken
    , icuUploadType
    , icuImageType
    , icuCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.imageConfigurations.upload@ method which the
-- 'ImageConfigurationsUpload' request conforms to.
type ImageConfigurationsUploadResource =
     "games" :>
       "v1configuration" :>
         "images" :>
           Capture "resourceId" Text :>
             "imageType" :>
               Capture "imageType"
                 ImageConfigurationsUploadImageType
                 :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] ImageConfiguration
       :<|>
       "upload" :>
         "games" :>
           "v1configuration" :>
             "images" :>
               Capture "resourceId" Text :>
                 "imageType" :>
                   Capture "imageType"
                     ImageConfigurationsUploadImageType
                     :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" AltMedia :>
                                   AltMedia :> Post '[JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'imageConfigurationsUpload' smart constructor.
data ImageConfigurationsUpload =
  ImageConfigurationsUpload'
    { _icuXgafv :: !(Maybe Xgafv)
    , _icuResourceId :: !Text
    , _icuUploadProtocol :: !(Maybe Text)
    , _icuAccessToken :: !(Maybe Text)
    , _icuUploadType :: !(Maybe Text)
    , _icuImageType :: !ImageConfigurationsUploadImageType
    , _icuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageConfigurationsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icuXgafv'
--
-- * 'icuResourceId'
--
-- * 'icuUploadProtocol'
--
-- * 'icuAccessToken'
--
-- * 'icuUploadType'
--
-- * 'icuImageType'
--
-- * 'icuCallback'
imageConfigurationsUpload
    :: Text -- ^ 'icuResourceId'
    -> ImageConfigurationsUploadImageType -- ^ 'icuImageType'
    -> ImageConfigurationsUpload
imageConfigurationsUpload pIcuResourceId_ pIcuImageType_ =
  ImageConfigurationsUpload'
    { _icuXgafv = Nothing
    , _icuResourceId = pIcuResourceId_
    , _icuUploadProtocol = Nothing
    , _icuAccessToken = Nothing
    , _icuUploadType = Nothing
    , _icuImageType = pIcuImageType_
    , _icuCallback = Nothing
    }


-- | V1 error format.
icuXgafv :: Lens' ImageConfigurationsUpload (Maybe Xgafv)
icuXgafv = lens _icuXgafv (\ s a -> s{_icuXgafv = a})

-- | The ID of the resource used by this method.
icuResourceId :: Lens' ImageConfigurationsUpload Text
icuResourceId
  = lens _icuResourceId
      (\ s a -> s{_icuResourceId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
icuUploadProtocol :: Lens' ImageConfigurationsUpload (Maybe Text)
icuUploadProtocol
  = lens _icuUploadProtocol
      (\ s a -> s{_icuUploadProtocol = a})

-- | OAuth access token.
icuAccessToken :: Lens' ImageConfigurationsUpload (Maybe Text)
icuAccessToken
  = lens _icuAccessToken
      (\ s a -> s{_icuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
icuUploadType :: Lens' ImageConfigurationsUpload (Maybe Text)
icuUploadType
  = lens _icuUploadType
      (\ s a -> s{_icuUploadType = a})

-- | Selects which image in a resource for this method.
icuImageType :: Lens' ImageConfigurationsUpload ImageConfigurationsUploadImageType
icuImageType
  = lens _icuImageType (\ s a -> s{_icuImageType = a})

-- | JSONP
icuCallback :: Lens' ImageConfigurationsUpload (Maybe Text)
icuCallback
  = lens _icuCallback (\ s a -> s{_icuCallback = a})

instance GoogleRequest ImageConfigurationsUpload
         where
        type Rs ImageConfigurationsUpload =
             ImageConfiguration
        type Scopes ImageConfigurationsUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ImageConfigurationsUpload'{..}
          = go _icuResourceId _icuImageType _icuXgafv
              _icuUploadProtocol
              _icuAccessToken
              _icuUploadType
              _icuCallback
              (Just AltJSON)
              gamesConfigurationService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      mempty

instance GoogleRequest
           (MediaUpload ImageConfigurationsUpload)
         where
        type Rs (MediaUpload ImageConfigurationsUpload) =
             ImageConfiguration
        type Scopes (MediaUpload ImageConfigurationsUpload) =
             Scopes ImageConfigurationsUpload
        requestClient
          (MediaUpload ImageConfigurationsUpload'{..} body)
          = go _icuResourceId _icuImageType _icuXgafv
              _icuUploadProtocol
              _icuAccessToken
              _icuUploadType
              _icuCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              gamesConfigurationService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      mempty
