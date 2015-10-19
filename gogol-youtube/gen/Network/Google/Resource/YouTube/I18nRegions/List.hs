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
-- Module      : Network.Google.Resource.YouTube.I18nRegions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of content regions that the YouTube website supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeI18nRegionsList@.
module Network.Google.Resource.YouTube.I18nRegions.List
    (
    -- * REST Resource
      I18nRegionsListResource

    -- * Creating a Request
    , i18nRegionsList'
    , I18nRegionsList'

    -- * Request Lenses
    , irlPart
    , irlHl
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeI18nRegionsList@ method which the
-- 'I18nRegionsList'' request conforms to.
type I18nRegionsListResource =
     "i18nRegions" :>
       QueryParam "part" Text :>
         QueryParam "hl" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] I18nRegionListResponse

-- | Returns a list of content regions that the YouTube website supports.
--
-- /See:/ 'i18nRegionsList'' smart constructor.
data I18nRegionsList' = I18nRegionsList'
    { _irlPart :: !Text
    , _irlHl   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlPart'
--
-- * 'irlHl'
i18nRegionsList'
    :: Text -- ^ 'part'
    -> I18nRegionsList'
i18nRegionsList' pIrlPart_ =
    I18nRegionsList'
    { _irlPart = pIrlPart_
    , _irlHl = "en_US"
    }

-- | The part parameter specifies the i18nRegion resource properties that the
-- API response will include. Set the parameter value to snippet.
irlPart :: Lens' I18nRegionsList' Text
irlPart = lens _irlPart (\ s a -> s{_irlPart = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
irlHl :: Lens' I18nRegionsList' Text
irlHl = lens _irlHl (\ s a -> s{_irlHl = a})

instance GoogleRequest I18nRegionsList' where
        type Rs I18nRegionsList' = I18nRegionListResponse
        requestClient I18nRegionsList'{..}
          = go (Just _irlPart) (Just _irlHl) (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy I18nRegionsListResource)
                      mempty
