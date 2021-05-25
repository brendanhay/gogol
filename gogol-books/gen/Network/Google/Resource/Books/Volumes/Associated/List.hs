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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of associated books.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.associated.list@.
module Network.Google.Resource.Books.Volumes.Associated.List
    (
    -- * REST Resource
      VolumesAssociatedListResource

    -- * Creating a Request
    , volumesAssociatedList
    , VolumesAssociatedList

    -- * Request Lenses
    , valXgafv
    , valUploadProtocol
    , valLocale
    , valAccessToken
    , valMaxAllowedMaturityRating
    , valUploadType
    , valVolumeId
    , valSource
    , valCallback
    , valAssociation
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.associated.list@ method which the
-- 'VolumesAssociatedList' request conforms to.
type VolumesAssociatedListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "associated" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "locale" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "maxAllowedMaturityRating"
                         VolumesAssociatedListMaxAllowedMaturityRating
                         :>
                         QueryParam "uploadType" Text :>
                           QueryParam "source" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "association"
                                 VolumesAssociatedListAssociation
                                 :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of associated books.
--
-- /See:/ 'volumesAssociatedList' smart constructor.
data VolumesAssociatedList =
  VolumesAssociatedList'
    { _valXgafv :: !(Maybe Xgafv)
    , _valUploadProtocol :: !(Maybe Text)
    , _valLocale :: !(Maybe Text)
    , _valAccessToken :: !(Maybe Text)
    , _valMaxAllowedMaturityRating :: !(Maybe VolumesAssociatedListMaxAllowedMaturityRating)
    , _valUploadType :: !(Maybe Text)
    , _valVolumeId :: !Text
    , _valSource :: !(Maybe Text)
    , _valCallback :: !(Maybe Text)
    , _valAssociation :: !(Maybe VolumesAssociatedListAssociation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesAssociatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'valXgafv'
--
-- * 'valUploadProtocol'
--
-- * 'valLocale'
--
-- * 'valAccessToken'
--
-- * 'valMaxAllowedMaturityRating'
--
-- * 'valUploadType'
--
-- * 'valVolumeId'
--
-- * 'valSource'
--
-- * 'valCallback'
--
-- * 'valAssociation'
volumesAssociatedList
    :: Text -- ^ 'valVolumeId'
    -> VolumesAssociatedList
volumesAssociatedList pValVolumeId_ =
  VolumesAssociatedList'
    { _valXgafv = Nothing
    , _valUploadProtocol = Nothing
    , _valLocale = Nothing
    , _valAccessToken = Nothing
    , _valMaxAllowedMaturityRating = Nothing
    , _valUploadType = Nothing
    , _valVolumeId = pValVolumeId_
    , _valSource = Nothing
    , _valCallback = Nothing
    , _valAssociation = Nothing
    }


-- | V1 error format.
valXgafv :: Lens' VolumesAssociatedList (Maybe Xgafv)
valXgafv = lens _valXgafv (\ s a -> s{_valXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
valUploadProtocol :: Lens' VolumesAssociatedList (Maybe Text)
valUploadProtocol
  = lens _valUploadProtocol
      (\ s a -> s{_valUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
valLocale :: Lens' VolumesAssociatedList (Maybe Text)
valLocale
  = lens _valLocale (\ s a -> s{_valLocale = a})

-- | OAuth access token.
valAccessToken :: Lens' VolumesAssociatedList (Maybe Text)
valAccessToken
  = lens _valAccessToken
      (\ s a -> s{_valAccessToken = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
valMaxAllowedMaturityRating :: Lens' VolumesAssociatedList (Maybe VolumesAssociatedListMaxAllowedMaturityRating)
valMaxAllowedMaturityRating
  = lens _valMaxAllowedMaturityRating
      (\ s a -> s{_valMaxAllowedMaturityRating = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
valUploadType :: Lens' VolumesAssociatedList (Maybe Text)
valUploadType
  = lens _valUploadType
      (\ s a -> s{_valUploadType = a})

-- | ID of the source volume.
valVolumeId :: Lens' VolumesAssociatedList Text
valVolumeId
  = lens _valVolumeId (\ s a -> s{_valVolumeId = a})

-- | String to identify the originator of this request.
valSource :: Lens' VolumesAssociatedList (Maybe Text)
valSource
  = lens _valSource (\ s a -> s{_valSource = a})

-- | JSONP
valCallback :: Lens' VolumesAssociatedList (Maybe Text)
valCallback
  = lens _valCallback (\ s a -> s{_valCallback = a})

-- | Association type.
valAssociation :: Lens' VolumesAssociatedList (Maybe VolumesAssociatedListAssociation)
valAssociation
  = lens _valAssociation
      (\ s a -> s{_valAssociation = a})

instance GoogleRequest VolumesAssociatedList where
        type Rs VolumesAssociatedList = Volumes
        type Scopes VolumesAssociatedList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesAssociatedList'{..}
          = go _valVolumeId _valXgafv _valUploadProtocol
              _valLocale
              _valAccessToken
              _valMaxAllowedMaturityRating
              _valUploadType
              _valSource
              _valCallback
              _valAssociation
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesAssociatedListResource)
                      mempty
