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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists CryptoKeyVersions.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.List
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList

    -- * Request Lenses
    , plkrckckvlParent
    , plkrckckvlXgafv
    , plkrckckvlUploadProtocol
    , plkrckckvlOrderBy
    , plkrckckvlAccessToken
    , plkrckckvlUploadType
    , plkrckckvlView
    , plkrckckvlFilter
    , plkrckckvlPageToken
    , plkrckckvlPageSize
    , plkrckckvlCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "cryptoKeyVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "view"
                       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
                       :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListCryptoKeyVersionsResponse

-- | Lists CryptoKeyVersions.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList'
    { _plkrckckvlParent :: !Text
    , _plkrckckvlXgafv :: !(Maybe Xgafv)
    , _plkrckckvlUploadProtocol :: !(Maybe Text)
    , _plkrckckvlOrderBy :: !(Maybe Text)
    , _plkrckckvlAccessToken :: !(Maybe Text)
    , _plkrckckvlUploadType :: !(Maybe Text)
    , _plkrckckvlView :: !(Maybe ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView)
    , _plkrckckvlFilter :: !(Maybe Text)
    , _plkrckckvlPageToken :: !(Maybe Text)
    , _plkrckckvlPageSize :: !(Maybe (Textual Int32))
    , _plkrckckvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvlParent'
--
-- * 'plkrckckvlXgafv'
--
-- * 'plkrckckvlUploadProtocol'
--
-- * 'plkrckckvlOrderBy'
--
-- * 'plkrckckvlAccessToken'
--
-- * 'plkrckckvlUploadType'
--
-- * 'plkrckckvlView'
--
-- * 'plkrckckvlFilter'
--
-- * 'plkrckckvlPageToken'
--
-- * 'plkrckckvlPageSize'
--
-- * 'plkrckckvlCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
    :: Text -- ^ 'plkrckckvlParent'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList pPlkrckckvlParent_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList'
    { _plkrckckvlParent = pPlkrckckvlParent_
    , _plkrckckvlXgafv = Nothing
    , _plkrckckvlUploadProtocol = Nothing
    , _plkrckckvlOrderBy = Nothing
    , _plkrckckvlAccessToken = Nothing
    , _plkrckckvlUploadType = Nothing
    , _plkrckckvlView = Nothing
    , _plkrckckvlFilter = Nothing
    , _plkrckckvlPageToken = Nothing
    , _plkrckckvlPageSize = Nothing
    , _plkrckckvlCallback = Nothing
    }


-- | Required. The resource name of the CryptoKey to list, in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
plkrckckvlParent :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList Text
plkrckckvlParent
  = lens _plkrckckvlParent
      (\ s a -> s{_plkrckckvlParent = a})

-- | V1 error format.
plkrckckvlXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Xgafv)
plkrckckvlXgafv
  = lens _plkrckckvlXgafv
      (\ s a -> s{_plkrckckvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvlUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlUploadProtocol
  = lens _plkrckckvlUploadProtocol
      (\ s a -> s{_plkrckckvlUploadProtocol = a})

-- | Optional. Specify how the results should be sorted. If not specified,
-- the results will be sorted in the default order. For more information,
-- see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrckckvlOrderBy :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlOrderBy
  = lens _plkrckckvlOrderBy
      (\ s a -> s{_plkrckckvlOrderBy = a})

-- | OAuth access token.
plkrckckvlAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlAccessToken
  = lens _plkrckckvlAccessToken
      (\ s a -> s{_plkrckckvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvlUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlUploadType
  = lens _plkrckckvlUploadType
      (\ s a -> s{_plkrckckvlUploadType = a})

-- | The fields to include in the response.
plkrckckvlView :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView)
plkrckckvlView
  = lens _plkrckckvlView
      (\ s a -> s{_plkrckckvlView = a})

-- | Optional. Only include resources that match the filter in the response.
-- For more information, see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrckckvlFilter :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlFilter
  = lens _plkrckckvlFilter
      (\ s a -> s{_plkrckckvlFilter = a})

-- | Optional. Optional pagination token, returned earlier via
-- ListCryptoKeyVersionsResponse.next_page_token.
plkrckckvlPageToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlPageToken
  = lens _plkrckckvlPageToken
      (\ s a -> s{_plkrckckvlPageToken = a})

-- | Optional. Optional limit on the number of CryptoKeyVersions to include
-- in the response. Further CryptoKeyVersions can subsequently be obtained
-- by including the ListCryptoKeyVersionsResponse.next_page_token in a
-- subsequent request. If unspecified, the server will pick an appropriate
-- default.
plkrckckvlPageSize :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Int32)
plkrckckvlPageSize
  = lens _plkrckckvlPageSize
      (\ s a -> s{_plkrckckvlPageSize = a})
      . mapping _Coerce

-- | JSONP
plkrckckvlCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (Maybe Text)
plkrckckvlCallback
  = lens _plkrckckvlCallback
      (\ s a -> s{_plkrckckvlCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
             = ListCryptoKeyVersionsResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList'{..}
          = go _plkrckckvlParent _plkrckckvlXgafv
              _plkrckckvlUploadProtocol
              _plkrckckvlOrderBy
              _plkrckckvlAccessToken
              _plkrckckvlUploadType
              _plkrckckvlView
              _plkrckckvlFilter
              _plkrckckvlPageToken
              _plkrckckvlPageSize
              _plkrckckvlCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource)
                      mempty
