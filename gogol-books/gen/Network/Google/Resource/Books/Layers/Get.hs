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
-- Module      : Network.Google.Resource.Books.Layers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the layer summary for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.layers.get@.
module Network.Google.Resource.Books.Layers.Get
    (
    -- * REST Resource
      LayersGetResource

    -- * Creating a Request
    , layersGet
    , LayersGet

    -- * Request Lenses
    , lgContentVersion
    , lgVolumeId
    , lgSource
    , lgSummaryId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.layers.get@ method which the
-- 'LayersGet' request conforms to.
type LayersGetResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layersummary" :>
               Capture "summaryId" Text :>
                 QueryParam "contentVersion" Text :>
                   QueryParam "source" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Layersummary

-- | Gets the layer summary for a volume.
--
-- /See:/ 'layersGet' smart constructor.
data LayersGet =
  LayersGet'
    { _lgContentVersion :: !(Maybe Text)
    , _lgVolumeId       :: !Text
    , _lgSource         :: !(Maybe Text)
    , _lgSummaryId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgContentVersion'
--
-- * 'lgVolumeId'
--
-- * 'lgSource'
--
-- * 'lgSummaryId'
layersGet
    :: Text -- ^ 'lgVolumeId'
    -> Text -- ^ 'lgSummaryId'
    -> LayersGet
layersGet pLgVolumeId_ pLgSummaryId_ =
  LayersGet'
    { _lgContentVersion = Nothing
    , _lgVolumeId = pLgVolumeId_
    , _lgSource = Nothing
    , _lgSummaryId = pLgSummaryId_
    }


-- | The content version for the requested volume.
lgContentVersion :: Lens' LayersGet (Maybe Text)
lgContentVersion
  = lens _lgContentVersion
      (\ s a -> s{_lgContentVersion = a})

-- | The volume to retrieve layers for.
lgVolumeId :: Lens' LayersGet Text
lgVolumeId
  = lens _lgVolumeId (\ s a -> s{_lgVolumeId = a})

-- | String to identify the originator of this request.
lgSource :: Lens' LayersGet (Maybe Text)
lgSource = lens _lgSource (\ s a -> s{_lgSource = a})

-- | The ID for the layer to get the summary for.
lgSummaryId :: Lens' LayersGet Text
lgSummaryId
  = lens _lgSummaryId (\ s a -> s{_lgSummaryId = a})

instance GoogleRequest LayersGet where
        type Rs LayersGet = Layersummary
        type Scopes LayersGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersGet'{..}
          = go _lgVolumeId _lgSummaryId _lgContentVersion
              _lgSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy LayersGetResource)
                      mempty
