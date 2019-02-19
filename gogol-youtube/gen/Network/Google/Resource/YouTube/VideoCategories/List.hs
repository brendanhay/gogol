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
-- Module      : Network.Google.Resource.YouTube.VideoCategories.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of categories that can be associated with YouTube videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videoCategories.list@.
module Network.Google.Resource.YouTube.VideoCategories.List
    (
    -- * REST Resource
      VideoCategoriesListResource

    -- * Creating a Request
    , videoCategoriesList
    , VideoCategoriesList

    -- * Request Lenses
    , vclPart
    , vclRegionCode
    , vclHl
    , vclId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.videoCategories.list@ method which the
-- 'VideoCategoriesList' request conforms to.
type VideoCategoriesListResource =
     "youtube" :>
       "v3" :>
         "videoCategories" :>
           QueryParam "part" Text :>
             QueryParam "regionCode" Text :>
               QueryParam "hl" Text :>
                 QueryParam "id" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] VideoCategoryListResponse

-- | Returns a list of categories that can be associated with YouTube videos.
--
-- /See:/ 'videoCategoriesList' smart constructor.
data VideoCategoriesList =
  VideoCategoriesList'
    { _vclPart       :: !Text
    , _vclRegionCode :: !(Maybe Text)
    , _vclHl         :: !Text
    , _vclId         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideoCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclPart'
--
-- * 'vclRegionCode'
--
-- * 'vclHl'
--
-- * 'vclId'
videoCategoriesList
    :: Text -- ^ 'vclPart'
    -> VideoCategoriesList
videoCategoriesList pVclPart_ =
  VideoCategoriesList'
    { _vclPart = pVclPart_
    , _vclRegionCode = Nothing
    , _vclHl = "en_US"
    , _vclId = Nothing
    }


-- | The part parameter specifies the videoCategory resource properties that
-- the API response will include. Set the parameter value to snippet.
vclPart :: Lens' VideoCategoriesList Text
vclPart = lens _vclPart (\ s a -> s{_vclPart = a})

-- | The regionCode parameter instructs the API to return the list of video
-- categories available in the specified country. The parameter value is an
-- ISO 3166-1 alpha-2 country code.
vclRegionCode :: Lens' VideoCategoriesList (Maybe Text)
vclRegionCode
  = lens _vclRegionCode
      (\ s a -> s{_vclRegionCode = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
vclHl :: Lens' VideoCategoriesList Text
vclHl = lens _vclHl (\ s a -> s{_vclHl = a})

-- | The id parameter specifies a comma-separated list of video category IDs
-- for the resources that you are retrieving.
vclId :: Lens' VideoCategoriesList (Maybe Text)
vclId = lens _vclId (\ s a -> s{_vclId = a})

instance GoogleRequest VideoCategoriesList where
        type Rs VideoCategoriesList =
             VideoCategoryListResponse
        type Scopes VideoCategoriesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideoCategoriesList'{..}
          = go (Just _vclPart) _vclRegionCode (Just _vclHl)
              _vclId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoCategoriesListResource)
                      mempty
