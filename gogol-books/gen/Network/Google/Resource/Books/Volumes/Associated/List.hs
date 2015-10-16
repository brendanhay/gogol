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
-- Module      : Network.Google.Resource.Books.Volumes.Associated.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of associated books.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesAssociatedList@.
module Network.Google.Resource.Books.Volumes.Associated.List
    (
    -- * REST Resource
      VolumesAssociatedListResource

    -- * Creating a Request
    , volumesAssociatedList'
    , VolumesAssociatedList'

    -- * Request Lenses
    , valLocale
    , valMaxAllowedMaturityRating
    , valVolumeId
    , valSource
    , valAssociation
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesAssociatedList@ method which the
-- 'VolumesAssociatedList'' request conforms to.
type VolumesAssociatedListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "associated" :>
           QueryParam "locale" Text :>
             QueryParam "maxAllowedMaturityRating"
               VolumesAssociatedListMaxAllowedMaturityRating
               :>
               QueryParam "source" Text :>
                 QueryParam "association"
                   VolumesAssociatedListAssociation
                   :> QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of associated books.
--
-- /See:/ 'volumesAssociatedList'' smart constructor.
data VolumesAssociatedList' = VolumesAssociatedList'
    { _valLocale                   :: !(Maybe Text)
    , _valMaxAllowedMaturityRating :: !(Maybe VolumesAssociatedListMaxAllowedMaturityRating)
    , _valVolumeId                 :: !Text
    , _valSource                   :: !(Maybe Text)
    , _valAssociation              :: !(Maybe VolumesAssociatedListAssociation)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesAssociatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'valLocale'
--
-- * 'valMaxAllowedMaturityRating'
--
-- * 'valVolumeId'
--
-- * 'valSource'
--
-- * 'valAssociation'
volumesAssociatedList'
    :: Text -- ^ 'volumeId'
    -> VolumesAssociatedList'
volumesAssociatedList' pValVolumeId_ =
    VolumesAssociatedList'
    { _valLocale = Nothing
    , _valMaxAllowedMaturityRating = Nothing
    , _valVolumeId = pValVolumeId_
    , _valSource = Nothing
    , _valAssociation = Nothing
    }

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
valLocale :: Lens' VolumesAssociatedList' (Maybe Text)
valLocale
  = lens _valLocale (\ s a -> s{_valLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
valMaxAllowedMaturityRating :: Lens' VolumesAssociatedList' (Maybe VolumesAssociatedListMaxAllowedMaturityRating)
valMaxAllowedMaturityRating
  = lens _valMaxAllowedMaturityRating
      (\ s a -> s{_valMaxAllowedMaturityRating = a})

-- | ID of the source volume.
valVolumeId :: Lens' VolumesAssociatedList' Text
valVolumeId
  = lens _valVolumeId (\ s a -> s{_valVolumeId = a})

-- | String to identify the originator of this request.
valSource :: Lens' VolumesAssociatedList' (Maybe Text)
valSource
  = lens _valSource (\ s a -> s{_valSource = a})

-- | Association type.
valAssociation :: Lens' VolumesAssociatedList' (Maybe VolumesAssociatedListAssociation)
valAssociation
  = lens _valAssociation
      (\ s a -> s{_valAssociation = a})

instance GoogleRequest VolumesAssociatedList' where
        type Rs VolumesAssociatedList' = Volumes
        requestClient VolumesAssociatedList'{..}
          = go _valVolumeId _valLocale
              _valMaxAllowedMaturityRating
              _valSource
              _valAssociation
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesAssociatedListResource)
                      mempty
