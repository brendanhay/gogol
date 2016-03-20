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
-- Module      : Network.Google.Resource.YouTube.GuideCategories.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of categories that can be associated with YouTube
-- channels.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.guideCategories.list@.
module Network.Google.Resource.YouTube.GuideCategories.List
    (
    -- * REST Resource
      GuideCategoriesListResource

    -- * Creating a Request
    , guideCategoriesList
    , GuideCategoriesList

    -- * Request Lenses
    , gclPart
    , gclRegionCode
    , gclHl
    , gclId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.guideCategories.list@ method which the
-- 'GuideCategoriesList' request conforms to.
type GuideCategoriesListResource =
     "youtube" :>
       "v3" :>
         "guideCategories" :>
           QueryParam "part" Text :>
             QueryParam "regionCode" Text :>
               QueryParam "hl" Text :>
                 QueryParam "id" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GuideCategoryListResponse

-- | Returns a list of categories that can be associated with YouTube
-- channels.
--
-- /See:/ 'guideCategoriesList' smart constructor.
data GuideCategoriesList = GuideCategoriesList
    { _gclPart       :: !Text
    , _gclRegionCode :: !(Maybe Text)
    , _gclHl         :: !Text
    , _gclId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gclPart'
--
-- * 'gclRegionCode'
--
-- * 'gclHl'
--
-- * 'gclId'
guideCategoriesList
    :: Text -- ^ 'gclPart'
    -> GuideCategoriesList
guideCategoriesList pGclPart_ =
    GuideCategoriesList
    { _gclPart = pGclPart_
    , _gclRegionCode = Nothing
    , _gclHl = "en-US"
    , _gclId = Nothing
    }

-- | The part parameter specifies the guideCategory resource properties that
-- the API response will include. Set the parameter value to snippet.
gclPart :: Lens' GuideCategoriesList Text
gclPart = lens _gclPart (\ s a -> s{_gclPart = a})

-- | The regionCode parameter instructs the API to return the list of guide
-- categories available in the specified country. The parameter value is an
-- ISO 3166-1 alpha-2 country code.
gclRegionCode :: Lens' GuideCategoriesList (Maybe Text)
gclRegionCode
  = lens _gclRegionCode
      (\ s a -> s{_gclRegionCode = a})

-- | The hl parameter specifies the language that will be used for text
-- values in the API response.
gclHl :: Lens' GuideCategoriesList Text
gclHl = lens _gclHl (\ s a -> s{_gclHl = a})

-- | The id parameter specifies a comma-separated list of the YouTube channel
-- category ID(s) for the resource(s) that are being retrieved. In a
-- guideCategory resource, the id property specifies the YouTube channel
-- category ID.
gclId :: Lens' GuideCategoriesList (Maybe Text)
gclId = lens _gclId (\ s a -> s{_gclId = a})

instance GoogleRequest GuideCategoriesList where
        type Rs GuideCategoriesList =
             GuideCategoryListResponse
        requestClient GuideCategoriesList{..}
          = go (Just _gclPart) _gclRegionCode (Just _gclHl)
              _gclId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy GuideCategoriesListResource)
                      mempty
