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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets volume information for a single volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.volumes.get@.
module Network.Google.Resource.Books.Volumes.Get
    (
    -- * REST Resource
      VolumesGetResource

    -- * Creating a Request
    , volumesGet'
    , VolumesGet'

    -- * Request Lenses
    , vgCountry
    , vgPartner
    , vgVolumeId
    , vgSource
    , vgProjection
    , vgUserLibraryConsistentRead
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.volumes.get@ method which the
-- 'VolumesGet'' request conforms to.
type VolumesGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         QueryParam "country" Text :>
           QueryParam "partner" Text :>
             QueryParam "source" Text :>
               QueryParam "projection" VolumesGetProjection :>
                 QueryParam "user_library_consistent_read" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Volume

-- | Gets volume information for a single volume.
--
-- /See:/ 'volumesGet'' smart constructor.
data VolumesGet' = VolumesGet'
    { _vgCountry                   :: !(Maybe Text)
    , _vgPartner                   :: !(Maybe Text)
    , _vgVolumeId                  :: !Text
    , _vgSource                    :: !(Maybe Text)
    , _vgProjection                :: !(Maybe VolumesGetProjection)
    , _vgUserLibraryConsistentRead :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgCountry'
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
volumesGet'
    :: Text -- ^ 'vgVolumeId'
    -> VolumesGet'
volumesGet' pVgVolumeId_ =
    VolumesGet'
    { _vgCountry = Nothing
    , _vgPartner = Nothing
    , _vgVolumeId = pVgVolumeId_
    , _vgSource = Nothing
    , _vgProjection = Nothing
    , _vgUserLibraryConsistentRead = Nothing
    }

-- | ISO-3166-1 code to override the IP-based location.
vgCountry :: Lens' VolumesGet' (Maybe Text)
vgCountry
  = lens _vgCountry (\ s a -> s{_vgCountry = a})

-- | Brand results for partner ID.
vgPartner :: Lens' VolumesGet' (Maybe Text)
vgPartner
  = lens _vgPartner (\ s a -> s{_vgPartner = a})

-- | ID of volume to retrieve.
vgVolumeId :: Lens' VolumesGet' Text
vgVolumeId
  = lens _vgVolumeId (\ s a -> s{_vgVolumeId = a})

-- | String to identify the originator of this request.
vgSource :: Lens' VolumesGet' (Maybe Text)
vgSource = lens _vgSource (\ s a -> s{_vgSource = a})

-- | Restrict information returned to a set of selected fields.
vgProjection :: Lens' VolumesGet' (Maybe VolumesGetProjection)
vgProjection
  = lens _vgProjection (\ s a -> s{_vgProjection = a})

vgUserLibraryConsistentRead :: Lens' VolumesGet' (Maybe Bool)
vgUserLibraryConsistentRead
  = lens _vgUserLibraryConsistentRead
      (\ s a -> s{_vgUserLibraryConsistentRead = a})

instance GoogleRequest VolumesGet' where
        type Rs VolumesGet' = Volume
        requestClient VolumesGet'{..}
          = go _vgVolumeId _vgCountry _vgPartner _vgSource
              _vgProjection
              _vgUserLibraryConsistentRead
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy VolumesGetResource)
                      mempty
