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
-- Module      : Network.Google.Resource.Books.Volumes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a book search.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.list@.
module Network.Google.Resource.Books.Volumes.List
    (
    -- * REST Resource
      VolumesListResource

    -- * Creating a Request
    , volumesList
    , VolumesList

    -- * Request Lenses
    , vlXgafv
    , vlUploadProtocol
    , vlOrderBy
    , vlAccessToken
    , vlMaxAllowedMaturityRating
    , vlLibraryRestrict
    , vlUploadType
    , vlPartner
    , vlQ
    , vlDownload
    , vlSource
    , vlProjection
    , vlFilter
    , vlLangRestrict
    , vlStartIndex
    , vlMaxResults
    , vlShowPreOrders
    , vlPrintType
    , vlCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.list@ method which the
-- 'VolumesList' request conforms to.
type VolumesListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           QueryParam "q" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" VolumesListOrderBy :>
                   QueryParam "access_token" Text :>
                     QueryParam "maxAllowedMaturityRating"
                       VolumesListMaxAllowedMaturityRating
                       :>
                       QueryParam "libraryRestrict"
                         VolumesListLibraryRestrict
                         :>
                         QueryParam "uploadType" Text :>
                           QueryParam "partner" Text :>
                             QueryParam "download" VolumesListDownload :>
                               QueryParam "source" Text :>
                                 QueryParam "projection" VolumesListProjection
                                   :>
                                   QueryParam "filter" VolumesListFilter :>
                                     QueryParam "langRestrict" Text :>
                                       QueryParam "startIndex" (Textual Word32)
                                         :>
                                         QueryParam "maxResults"
                                           (Textual Word32)
                                           :>
                                           QueryParam "showPreorders" Bool :>
                                             QueryParam "printType"
                                               VolumesListPrintType
                                               :>
                                               QueryParam "callback" Text :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON] Volumes

-- | Performs a book search.
--
-- /See:/ 'volumesList' smart constructor.
data VolumesList =
  VolumesList'
    { _vlXgafv :: !(Maybe Xgafv)
    , _vlUploadProtocol :: !(Maybe Text)
    , _vlOrderBy :: !(Maybe VolumesListOrderBy)
    , _vlAccessToken :: !(Maybe Text)
    , _vlMaxAllowedMaturityRating :: !(Maybe VolumesListMaxAllowedMaturityRating)
    , _vlLibraryRestrict :: !(Maybe VolumesListLibraryRestrict)
    , _vlUploadType :: !(Maybe Text)
    , _vlPartner :: !(Maybe Text)
    , _vlQ :: !Text
    , _vlDownload :: !(Maybe VolumesListDownload)
    , _vlSource :: !(Maybe Text)
    , _vlProjection :: !(Maybe VolumesListProjection)
    , _vlFilter :: !(Maybe VolumesListFilter)
    , _vlLangRestrict :: !(Maybe Text)
    , _vlStartIndex :: !(Maybe (Textual Word32))
    , _vlMaxResults :: !(Maybe (Textual Word32))
    , _vlShowPreOrders :: !(Maybe Bool)
    , _vlPrintType :: !(Maybe VolumesListPrintType)
    , _vlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlXgafv'
--
-- * 'vlUploadProtocol'
--
-- * 'vlOrderBy'
--
-- * 'vlAccessToken'
--
-- * 'vlMaxAllowedMaturityRating'
--
-- * 'vlLibraryRestrict'
--
-- * 'vlUploadType'
--
-- * 'vlPartner'
--
-- * 'vlQ'
--
-- * 'vlDownload'
--
-- * 'vlSource'
--
-- * 'vlProjection'
--
-- * 'vlFilter'
--
-- * 'vlLangRestrict'
--
-- * 'vlStartIndex'
--
-- * 'vlMaxResults'
--
-- * 'vlShowPreOrders'
--
-- * 'vlPrintType'
--
-- * 'vlCallback'
volumesList
    :: Text -- ^ 'vlQ'
    -> VolumesList
volumesList pVlQ_ =
  VolumesList'
    { _vlXgafv = Nothing
    , _vlUploadProtocol = Nothing
    , _vlOrderBy = Nothing
    , _vlAccessToken = Nothing
    , _vlMaxAllowedMaturityRating = Nothing
    , _vlLibraryRestrict = Nothing
    , _vlUploadType = Nothing
    , _vlPartner = Nothing
    , _vlQ = pVlQ_
    , _vlDownload = Nothing
    , _vlSource = Nothing
    , _vlProjection = Nothing
    , _vlFilter = Nothing
    , _vlLangRestrict = Nothing
    , _vlStartIndex = Nothing
    , _vlMaxResults = Nothing
    , _vlShowPreOrders = Nothing
    , _vlPrintType = Nothing
    , _vlCallback = Nothing
    }


-- | V1 error format.
vlXgafv :: Lens' VolumesList (Maybe Xgafv)
vlXgafv = lens _vlXgafv (\ s a -> s{_vlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vlUploadProtocol :: Lens' VolumesList (Maybe Text)
vlUploadProtocol
  = lens _vlUploadProtocol
      (\ s a -> s{_vlUploadProtocol = a})

-- | Sort search results.
vlOrderBy :: Lens' VolumesList (Maybe VolumesListOrderBy)
vlOrderBy
  = lens _vlOrderBy (\ s a -> s{_vlOrderBy = a})

-- | OAuth access token.
vlAccessToken :: Lens' VolumesList (Maybe Text)
vlAccessToken
  = lens _vlAccessToken
      (\ s a -> s{_vlAccessToken = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
vlMaxAllowedMaturityRating :: Lens' VolumesList (Maybe VolumesListMaxAllowedMaturityRating)
vlMaxAllowedMaturityRating
  = lens _vlMaxAllowedMaturityRating
      (\ s a -> s{_vlMaxAllowedMaturityRating = a})

-- | Restrict search to this user\'s library.
vlLibraryRestrict :: Lens' VolumesList (Maybe VolumesListLibraryRestrict)
vlLibraryRestrict
  = lens _vlLibraryRestrict
      (\ s a -> s{_vlLibraryRestrict = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vlUploadType :: Lens' VolumesList (Maybe Text)
vlUploadType
  = lens _vlUploadType (\ s a -> s{_vlUploadType = a})

-- | Restrict and brand results for partner ID.
vlPartner :: Lens' VolumesList (Maybe Text)
vlPartner
  = lens _vlPartner (\ s a -> s{_vlPartner = a})

-- | Full-text search query string.
vlQ :: Lens' VolumesList Text
vlQ = lens _vlQ (\ s a -> s{_vlQ = a})

-- | Restrict to volumes by download availability.
vlDownload :: Lens' VolumesList (Maybe VolumesListDownload)
vlDownload
  = lens _vlDownload (\ s a -> s{_vlDownload = a})

-- | String to identify the originator of this request.
vlSource :: Lens' VolumesList (Maybe Text)
vlSource = lens _vlSource (\ s a -> s{_vlSource = a})

-- | Restrict information returned to a set of selected fields.
vlProjection :: Lens' VolumesList (Maybe VolumesListProjection)
vlProjection
  = lens _vlProjection (\ s a -> s{_vlProjection = a})

-- | Filter search results.
vlFilter :: Lens' VolumesList (Maybe VolumesListFilter)
vlFilter = lens _vlFilter (\ s a -> s{_vlFilter = a})

-- | Restrict results to books with this language code.
vlLangRestrict :: Lens' VolumesList (Maybe Text)
vlLangRestrict
  = lens _vlLangRestrict
      (\ s a -> s{_vlLangRestrict = a})

-- | Index of the first result to return (starts at 0)
vlStartIndex :: Lens' VolumesList (Maybe Word32)
vlStartIndex
  = lens _vlStartIndex (\ s a -> s{_vlStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return.
vlMaxResults :: Lens' VolumesList (Maybe Word32)
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})
      . mapping _Coerce

-- | Set to true to show books available for preorder. Defaults to false.
vlShowPreOrders :: Lens' VolumesList (Maybe Bool)
vlShowPreOrders
  = lens _vlShowPreOrders
      (\ s a -> s{_vlShowPreOrders = a})

-- | Restrict to books or magazines.
vlPrintType :: Lens' VolumesList (Maybe VolumesListPrintType)
vlPrintType
  = lens _vlPrintType (\ s a -> s{_vlPrintType = a})

-- | JSONP
vlCallback :: Lens' VolumesList (Maybe Text)
vlCallback
  = lens _vlCallback (\ s a -> s{_vlCallback = a})

instance GoogleRequest VolumesList where
        type Rs VolumesList = Volumes
        type Scopes VolumesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesList'{..}
          = go (Just _vlQ) _vlXgafv _vlUploadProtocol
              _vlOrderBy
              _vlAccessToken
              _vlMaxAllowedMaturityRating
              _vlLibraryRestrict
              _vlUploadType
              _vlPartner
              _vlDownload
              _vlSource
              _vlProjection
              _vlFilter
              _vlLangRestrict
              _vlStartIndex
              _vlMaxResults
              _vlShowPreOrders
              _vlPrintType
              _vlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy VolumesListResource)
                      mempty
