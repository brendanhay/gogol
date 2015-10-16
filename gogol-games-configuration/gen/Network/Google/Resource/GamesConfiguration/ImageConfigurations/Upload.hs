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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationImageConfigurationsUpload@.
module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
    (
    -- * REST Resource
      ImageConfigurationsUploadResource

    -- * Creating a Request
    , imageConfigurationsUpload'
    , ImageConfigurationsUpload'

    -- * Request Lenses
    , icuResourceId
    , icuMedia
    , icuImageType
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationImageConfigurationsUpload@ method which the
-- 'ImageConfigurationsUpload'' request conforms to.
type ImageConfigurationsUploadResource =
     "images" :>
       Capture "resourceId" Text :>
         "imageType" :>
           Capture "imageType"
             ImageConfigurationsUploadImageType
             :>
             QueryParam "alt" AltJSON :>
               ReqBody '[OctetStream] Body :>
                 Post '[JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'imageConfigurationsUpload'' smart constructor.
data ImageConfigurationsUpload' = ImageConfigurationsUpload'
    { _icuResourceId :: !Text
    , _icuMedia      :: !Body
    , _icuImageType  :: !ImageConfigurationsUploadImageType
    }

-- | Creates a value of 'ImageConfigurationsUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icuResourceId'
--
-- * 'icuMedia'
--
-- * 'icuImageType'
imageConfigurationsUpload'
    :: Text -- ^ 'resourceId'
    -> Body -- ^ 'media'
    -> ImageConfigurationsUploadImageType -- ^ 'imageType'
    -> ImageConfigurationsUpload'
imageConfigurationsUpload' pIcuResourceId_ pIcuMedia_ pIcuImageType_ =
    ImageConfigurationsUpload'
    { _icuResourceId = pIcuResourceId_
    , _icuMedia = pIcuMedia_
    , _icuImageType = pIcuImageType_
    }

-- | The ID of the resource used by this method.
icuResourceId :: Lens' ImageConfigurationsUpload' Text
icuResourceId
  = lens _icuResourceId
      (\ s a -> s{_icuResourceId = a})

icuMedia :: Lens' ImageConfigurationsUpload' Body
icuMedia = lens _icuMedia (\ s a -> s{_icuMedia = a})

-- | Selects which image in a resource for this method.
icuImageType :: Lens' ImageConfigurationsUpload' ImageConfigurationsUploadImageType
icuImageType
  = lens _icuImageType (\ s a -> s{_icuImageType = a})

instance GoogleRequest ImageConfigurationsUpload'
         where
        type Rs ImageConfigurationsUpload' =
             ImageConfiguration
        requestClient ImageConfigurationsUpload'{..}
          = go _icuResourceId _icuImageType (Just AltJSON)
              _icuMedia
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy :: Proxy ImageConfigurationsUploadResource)
                      mempty
