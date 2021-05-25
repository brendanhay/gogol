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
-- Module      : Network.Google.Resource.Books.Volumes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets volume information for a single volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.get@.
module Network.Google.Resource.Books.Volumes.Get
    (
    -- * REST Resource
      VolumesGetResource

    -- * Creating a Request
    , volumesGet
    , VolumesGet

    -- * Request Lenses
    , vgXgafv
    , vgUploadProtocol
    , vgCountry
    , vgIncludeNonComicsSeries
    , vgAccessToken
    , vgUploadType
    , vgPartner
    , vgVolumeId
    , vgSource
    , vgProjection
    , vgUserLibraryConsistentRead
    , vgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.get@ method which the
-- 'VolumesGet' request conforms to.
type VolumesGetResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "country" Text :>
                   QueryParam "includeNonComicsSeries" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "partner" Text :>
                           QueryParam "source" Text :>
                             QueryParam "projection" VolumesGetProjection :>
                               QueryParam "user_library_consistent_read" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Volume

-- | Gets volume information for a single volume.
--
-- /See:/ 'volumesGet' smart constructor.
data VolumesGet =
  VolumesGet'
    { _vgXgafv :: !(Maybe Xgafv)
    , _vgUploadProtocol :: !(Maybe Text)
    , _vgCountry :: !(Maybe Text)
    , _vgIncludeNonComicsSeries :: !(Maybe Bool)
    , _vgAccessToken :: !(Maybe Text)
    , _vgUploadType :: !(Maybe Text)
    , _vgPartner :: !(Maybe Text)
    , _vgVolumeId :: !Text
    , _vgSource :: !(Maybe Text)
    , _vgProjection :: !(Maybe VolumesGetProjection)
    , _vgUserLibraryConsistentRead :: !(Maybe Bool)
    , _vgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgXgafv'
--
-- * 'vgUploadProtocol'
--
-- * 'vgCountry'
--
-- * 'vgIncludeNonComicsSeries'
--
-- * 'vgAccessToken'
--
-- * 'vgUploadType'
--
-- * 'vgPartner'
--
-- * 'vgVolumeId'
--
-- * 'vgSource'
--
-- * 'vgProjection'
--
-- * 'vgUserLibraryConsistentRead'
--
-- * 'vgCallback'
volumesGet
    :: Text -- ^ 'vgVolumeId'
    -> VolumesGet
volumesGet pVgVolumeId_ =
  VolumesGet'
    { _vgXgafv = Nothing
    , _vgUploadProtocol = Nothing
    , _vgCountry = Nothing
    , _vgIncludeNonComicsSeries = Nothing
    , _vgAccessToken = Nothing
    , _vgUploadType = Nothing
    , _vgPartner = Nothing
    , _vgVolumeId = pVgVolumeId_
    , _vgSource = Nothing
    , _vgProjection = Nothing
    , _vgUserLibraryConsistentRead = Nothing
    , _vgCallback = Nothing
    }


-- | V1 error format.
vgXgafv :: Lens' VolumesGet (Maybe Xgafv)
vgXgafv = lens _vgXgafv (\ s a -> s{_vgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vgUploadProtocol :: Lens' VolumesGet (Maybe Text)
vgUploadProtocol
  = lens _vgUploadProtocol
      (\ s a -> s{_vgUploadProtocol = a})

-- | ISO-3166-1 code to override the IP-based location.
vgCountry :: Lens' VolumesGet (Maybe Text)
vgCountry
  = lens _vgCountry (\ s a -> s{_vgCountry = a})

-- | Set to true to include non-comics series. Defaults to false.
vgIncludeNonComicsSeries :: Lens' VolumesGet (Maybe Bool)
vgIncludeNonComicsSeries
  = lens _vgIncludeNonComicsSeries
      (\ s a -> s{_vgIncludeNonComicsSeries = a})

-- | OAuth access token.
vgAccessToken :: Lens' VolumesGet (Maybe Text)
vgAccessToken
  = lens _vgAccessToken
      (\ s a -> s{_vgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vgUploadType :: Lens' VolumesGet (Maybe Text)
vgUploadType
  = lens _vgUploadType (\ s a -> s{_vgUploadType = a})

-- | Brand results for partner ID.
vgPartner :: Lens' VolumesGet (Maybe Text)
vgPartner
  = lens _vgPartner (\ s a -> s{_vgPartner = a})

-- | ID of volume to retrieve.
vgVolumeId :: Lens' VolumesGet Text
vgVolumeId
  = lens _vgVolumeId (\ s a -> s{_vgVolumeId = a})

-- | string to identify the originator of this request.
vgSource :: Lens' VolumesGet (Maybe Text)
vgSource = lens _vgSource (\ s a -> s{_vgSource = a})

-- | Restrict information returned to a set of selected fields.
vgProjection :: Lens' VolumesGet (Maybe VolumesGetProjection)
vgProjection
  = lens _vgProjection (\ s a -> s{_vgProjection = a})

vgUserLibraryConsistentRead :: Lens' VolumesGet (Maybe Bool)
vgUserLibraryConsistentRead
  = lens _vgUserLibraryConsistentRead
      (\ s a -> s{_vgUserLibraryConsistentRead = a})

-- | JSONP
vgCallback :: Lens' VolumesGet (Maybe Text)
vgCallback
  = lens _vgCallback (\ s a -> s{_vgCallback = a})

instance GoogleRequest VolumesGet where
        type Rs VolumesGet = Volume
        type Scopes VolumesGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesGet'{..}
          = go _vgVolumeId _vgXgafv _vgUploadProtocol
              _vgCountry
              _vgIncludeNonComicsSeries
              _vgAccessToken
              _vgUploadType
              _vgPartner
              _vgSource
              _vgProjection
              _vgUserLibraryConsistentRead
              _vgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy VolumesGetResource)
                      mempty
