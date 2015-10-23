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
-- Module      : Network.Google.Resource.Books.Volumes.UserUploaded.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of books uploaded by the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.volumes.useruploaded.list@.
module Network.Google.Resource.Books.Volumes.UserUploaded.List
    (
    -- * REST Resource
      VolumesUserUploadedListResource

    -- * Creating a Request
    , volumesUserUploadedList
    , VolumesUserUploadedList

    -- * Request Lenses
    , vuulProcessingState
    , vuulLocale
    , vuulVolumeId
    , vuulSource
    , vuulStartIndex
    , vuulMaxResults
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.volumes.useruploaded.list@ method which the
-- 'VolumesUserUploadedList' request conforms to.
type VolumesUserUploadedListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "useruploaded" :>
             QueryParams "processingState"
               VolumesUserUploadedListProcessingState
               :>
               QueryParam "locale" Text :>
                 QueryParams "volumeId" Text :>
                   QueryParam "source" Text :>
                     QueryParam "startIndex" (JSONText Word32) :>
                       QueryParam "maxResults" (JSONText Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of books uploaded by the current user.
--
-- /See:/ 'volumesUserUploadedList' smart constructor.
data VolumesUserUploadedList = VolumesUserUploadedList
    { _vuulProcessingState :: !(Maybe [VolumesUserUploadedListProcessingState])
    , _vuulLocale          :: !(Maybe Text)
    , _vuulVolumeId        :: !(Maybe [Text])
    , _vuulSource          :: !(Maybe Text)
    , _vuulStartIndex      :: !(Maybe (JSONText Word32))
    , _vuulMaxResults      :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesUserUploadedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuulProcessingState'
--
-- * 'vuulLocale'
--
-- * 'vuulVolumeId'
--
-- * 'vuulSource'
--
-- * 'vuulStartIndex'
--
-- * 'vuulMaxResults'
volumesUserUploadedList
    :: VolumesUserUploadedList
volumesUserUploadedList =
    VolumesUserUploadedList
    { _vuulProcessingState = Nothing
    , _vuulLocale = Nothing
    , _vuulVolumeId = Nothing
    , _vuulSource = Nothing
    , _vuulStartIndex = Nothing
    , _vuulMaxResults = Nothing
    }

-- | The processing state of the user uploaded volumes to be returned.
vuulProcessingState :: Lens' VolumesUserUploadedList [VolumesUserUploadedListProcessingState]
vuulProcessingState
  = lens _vuulProcessingState
      (\ s a -> s{_vuulProcessingState = a})
      . _Default
      . _Coerce

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vuulLocale :: Lens' VolumesUserUploadedList (Maybe Text)
vuulLocale
  = lens _vuulLocale (\ s a -> s{_vuulLocale = a})

-- | The ids of the volumes to be returned. If not specified all that match
-- the processingState are returned.
vuulVolumeId :: Lens' VolumesUserUploadedList [Text]
vuulVolumeId
  = lens _vuulVolumeId (\ s a -> s{_vuulVolumeId = a})
      . _Default
      . _Coerce

-- | String to identify the originator of this request.
vuulSource :: Lens' VolumesUserUploadedList (Maybe Text)
vuulSource
  = lens _vuulSource (\ s a -> s{_vuulSource = a})

-- | Index of the first result to return (starts at 0)
vuulStartIndex :: Lens' VolumesUserUploadedList (Maybe Word32)
vuulStartIndex
  = lens _vuulStartIndex
      (\ s a -> s{_vuulStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return.
vuulMaxResults :: Lens' VolumesUserUploadedList (Maybe Word32)
vuulMaxResults
  = lens _vuulMaxResults
      (\ s a -> s{_vuulMaxResults = a})
      . mapping _Coerce

instance GoogleRequest VolumesUserUploadedList where
        type Rs VolumesUserUploadedList = Volumes
        requestClient VolumesUserUploadedList{..}
          = go (_vuulProcessingState ^. _Default) _vuulLocale
              (_vuulVolumeId ^. _Default)
              _vuulSource
              _vuulStartIndex
              _vuulMaxResults
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesUserUploadedListResource)
                      mempty
