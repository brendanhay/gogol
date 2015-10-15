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
-- Module      : Network.Google.Resource.Books.Volumes.Mybooks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of books in My Library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesMybooksList@.
module Network.Google.Resource.Books.Volumes.Mybooks.List
    (
    -- * REST Resource
      VolumesMybooksListResource

    -- * Creating a Request
    , volumesMybooksList'
    , VolumesMybooksList'

    -- * Request Lenses
    , vmlProcessingState
    , vmlAcquireMethod
    , vmlLocale
    , vmlSource
    , vmlStartIndex
    , vmlMaxResults
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesMybooksList@ method which the
-- 'VolumesMybooksList'' request conforms to.
type VolumesMybooksListResource =
     "volumes" :>
       "mybooks" :>
         QueryParams "processingState"
           VolumesMybooksListProcessingState
           :>
           QueryParams "acquireMethod"
             VolumesMybooksListAcquireMethod
             :>
             QueryParam "locale" Text :>
               QueryParam "source" Text :>
                 QueryParam "startIndex" Word32 :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of books in My Library.
--
-- /See:/ 'volumesMybooksList'' smart constructor.
data VolumesMybooksList' = VolumesMybooksList'
    { _vmlProcessingState :: !(Maybe [VolumesMybooksListProcessingState])
    , _vmlAcquireMethod   :: !(Maybe [VolumesMybooksListAcquireMethod])
    , _vmlLocale          :: !(Maybe Text)
    , _vmlSource          :: !(Maybe Text)
    , _vmlStartIndex      :: !(Maybe Word32)
    , _vmlMaxResults      :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesMybooksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmlProcessingState'
--
-- * 'vmlAcquireMethod'
--
-- * 'vmlLocale'
--
-- * 'vmlSource'
--
-- * 'vmlStartIndex'
--
-- * 'vmlMaxResults'
volumesMybooksList'
    :: VolumesMybooksList'
volumesMybooksList' =
    VolumesMybooksList'
    { _vmlProcessingState = Nothing
    , _vmlAcquireMethod = Nothing
    , _vmlLocale = Nothing
    , _vmlSource = Nothing
    , _vmlStartIndex = Nothing
    , _vmlMaxResults = Nothing
    }

-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
vmlProcessingState :: Lens' VolumesMybooksList' [VolumesMybooksListProcessingState]
vmlProcessingState
  = lens _vmlProcessingState
      (\ s a -> s{_vmlProcessingState = a})
      . _Default
      . _Coerce

-- | How the book was aquired
vmlAcquireMethod :: Lens' VolumesMybooksList' [VolumesMybooksListAcquireMethod]
vmlAcquireMethod
  = lens _vmlAcquireMethod
      (\ s a -> s{_vmlAcquireMethod = a})
      . _Default
      . _Coerce

-- | ISO-639-1 language and ISO-3166-1 country code. Ex:\'en_US\'. Used for
-- generating recommendations.
vmlLocale :: Lens' VolumesMybooksList' (Maybe Text)
vmlLocale
  = lens _vmlLocale (\ s a -> s{_vmlLocale = a})

-- | String to identify the originator of this request.
vmlSource :: Lens' VolumesMybooksList' (Maybe Text)
vmlSource
  = lens _vmlSource (\ s a -> s{_vmlSource = a})

-- | Index of the first result to return (starts at 0)
vmlStartIndex :: Lens' VolumesMybooksList' (Maybe Word32)
vmlStartIndex
  = lens _vmlStartIndex
      (\ s a -> s{_vmlStartIndex = a})

-- | Maximum number of results to return.
vmlMaxResults :: Lens' VolumesMybooksList' (Maybe Word32)
vmlMaxResults
  = lens _vmlMaxResults
      (\ s a -> s{_vmlMaxResults = a})

instance GoogleRequest VolumesMybooksList' where
        type Rs VolumesMybooksList' = Volumes
        requestClient VolumesMybooksList'{..}
          = go (_vmlProcessingState ^. _Default)
              (_vmlAcquireMethod ^. _Default)
              _vmlLocale
              _vmlSource
              _vmlStartIndex
              _vmlMaxResults
              (Just AltJSON)
              books
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesMybooksListResource)
                      mempty
