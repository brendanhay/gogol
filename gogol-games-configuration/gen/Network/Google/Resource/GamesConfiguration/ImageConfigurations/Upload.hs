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
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.imageConfigurations.upload@.
module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
    (
    -- * REST Resource
      ImageConfigurationsUploadResource

    -- * Creating a Request
    , imageConfigurationsUpload
    , ImageConfigurationsUpload

    -- * Request Lenses
    , icuResourceId
    , icuImageType
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

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
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" AltMedia :>
                         ReqBody '[OctetStream] RequestBody :>
                           Post '[JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'imageConfigurationsUpload' smart constructor.
data ImageConfigurationsUpload = ImageConfigurationsUpload
    { _icuResourceId :: !Text
    , _icuImageType  :: !ImageConfigurationsUploadImageType
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageConfigurationsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icuResourceId'
--
-- * 'icuImageType'
imageConfigurationsUpload
    :: Text -- ^ 'icuResourceId'
    -> ImageConfigurationsUploadImageType -- ^ 'icuImageType'
    -> ImageConfigurationsUpload
imageConfigurationsUpload pIcuResourceId_ pIcuImageType_ =
    ImageConfigurationsUpload
    { _icuResourceId = pIcuResourceId_
    , _icuImageType = pIcuImageType_
    }

-- | The ID of the resource used by this method.
icuResourceId :: Lens' ImageConfigurationsUpload Text
icuResourceId
  = lens _icuResourceId
      (\ s a -> s{_icuResourceId = a})

-- | Selects which image in a resource for this method.
icuImageType :: Lens' ImageConfigurationsUpload ImageConfigurationsUploadImageType
icuImageType
  = lens _icuImageType (\ s a -> s{_icuImageType = a})

instance GoogleRequest ImageConfigurationsUpload
         where
        type Rs ImageConfigurationsUpload =
             ImageConfiguration
        requestClient ImageConfigurationsUpload{..}
          = go _icuResourceId _icuImageType (Just AltJSON)
              gamesConfigurationService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      mempty

instance GoogleRequest
         (MediaUpload ImageConfigurationsUpload) where
        type Rs (MediaUpload ImageConfigurationsUpload) =
             ImageConfiguration
        requestClient
          (MediaUpload ImageConfigurationsUpload{..} body)
          = go _icuResourceId _icuImageType (Just AltJSON)
              (Just AltMedia)
              body
              gamesConfigurationService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      mempty
