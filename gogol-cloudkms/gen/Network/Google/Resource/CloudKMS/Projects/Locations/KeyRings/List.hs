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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists KeyRings.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.list@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.List
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsListResource

    -- * Creating a Request
    , projectsLocationsKeyRingsList
    , ProjectsLocationsKeyRingsList

    -- * Request Lenses
    , plkrlParent
    , plkrlXgafv
    , plkrlUploadProtocol
    , plkrlOrderBy
    , plkrlAccessToken
    , plkrlUploadType
    , plkrlFilter
    , plkrlPageToken
    , plkrlPageSize
    , plkrlCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.list@ method which the
-- 'ProjectsLocationsKeyRingsList' request conforms to.
type ProjectsLocationsKeyRingsListResource =
     "v1" :>
       Capture "parent" Text :>
         "keyRings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListKeyRingsResponse

-- | Lists KeyRings.
--
-- /See:/ 'projectsLocationsKeyRingsList' smart constructor.
data ProjectsLocationsKeyRingsList =
  ProjectsLocationsKeyRingsList'
    { _plkrlParent :: !Text
    , _plkrlXgafv :: !(Maybe Xgafv)
    , _plkrlUploadProtocol :: !(Maybe Text)
    , _plkrlOrderBy :: !(Maybe Text)
    , _plkrlAccessToken :: !(Maybe Text)
    , _plkrlUploadType :: !(Maybe Text)
    , _plkrlFilter :: !(Maybe Text)
    , _plkrlPageToken :: !(Maybe Text)
    , _plkrlPageSize :: !(Maybe (Textual Int32))
    , _plkrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrlParent'
--
-- * 'plkrlXgafv'
--
-- * 'plkrlUploadProtocol'
--
-- * 'plkrlOrderBy'
--
-- * 'plkrlAccessToken'
--
-- * 'plkrlUploadType'
--
-- * 'plkrlFilter'
--
-- * 'plkrlPageToken'
--
-- * 'plkrlPageSize'
--
-- * 'plkrlCallback'
projectsLocationsKeyRingsList
    :: Text -- ^ 'plkrlParent'
    -> ProjectsLocationsKeyRingsList
projectsLocationsKeyRingsList pPlkrlParent_ =
  ProjectsLocationsKeyRingsList'
    { _plkrlParent = pPlkrlParent_
    , _plkrlXgafv = Nothing
    , _plkrlUploadProtocol = Nothing
    , _plkrlOrderBy = Nothing
    , _plkrlAccessToken = Nothing
    , _plkrlUploadType = Nothing
    , _plkrlFilter = Nothing
    , _plkrlPageToken = Nothing
    , _plkrlPageSize = Nothing
    , _plkrlCallback = Nothing
    }


-- | Required. The resource name of the location associated with the
-- KeyRings, in the format \`projects\/*\/locations\/*\`.
plkrlParent :: Lens' ProjectsLocationsKeyRingsList Text
plkrlParent
  = lens _plkrlParent (\ s a -> s{_plkrlParent = a})

-- | V1 error format.
plkrlXgafv :: Lens' ProjectsLocationsKeyRingsList (Maybe Xgafv)
plkrlXgafv
  = lens _plkrlXgafv (\ s a -> s{_plkrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrlUploadProtocol :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlUploadProtocol
  = lens _plkrlUploadProtocol
      (\ s a -> s{_plkrlUploadProtocol = a})

-- | Optional. Specify how the results should be sorted. If not specified,
-- the results will be sorted in the default order. For more information,
-- see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrlOrderBy :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlOrderBy
  = lens _plkrlOrderBy (\ s a -> s{_plkrlOrderBy = a})

-- | OAuth access token.
plkrlAccessToken :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlAccessToken
  = lens _plkrlAccessToken
      (\ s a -> s{_plkrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrlUploadType :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlUploadType
  = lens _plkrlUploadType
      (\ s a -> s{_plkrlUploadType = a})

-- | Optional. Only include resources that match the filter in the response.
-- For more information, see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrlFilter :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlFilter
  = lens _plkrlFilter (\ s a -> s{_plkrlFilter = a})

-- | Optional. Optional pagination token, returned earlier via
-- ListKeyRingsResponse.next_page_token.
plkrlPageToken :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlPageToken
  = lens _plkrlPageToken
      (\ s a -> s{_plkrlPageToken = a})

-- | Optional. Optional limit on the number of KeyRings to include in the
-- response. Further KeyRings can subsequently be obtained by including the
-- ListKeyRingsResponse.next_page_token in a subsequent request. If
-- unspecified, the server will pick an appropriate default.
plkrlPageSize :: Lens' ProjectsLocationsKeyRingsList (Maybe Int32)
plkrlPageSize
  = lens _plkrlPageSize
      (\ s a -> s{_plkrlPageSize = a})
      . mapping _Coerce

-- | JSONP
plkrlCallback :: Lens' ProjectsLocationsKeyRingsList (Maybe Text)
plkrlCallback
  = lens _plkrlCallback
      (\ s a -> s{_plkrlCallback = a})

instance GoogleRequest ProjectsLocationsKeyRingsList
         where
        type Rs ProjectsLocationsKeyRingsList =
             ListKeyRingsResponse
        type Scopes ProjectsLocationsKeyRingsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient ProjectsLocationsKeyRingsList'{..}
          = go _plkrlParent _plkrlXgafv _plkrlUploadProtocol
              _plkrlOrderBy
              _plkrlAccessToken
              _plkrlUploadType
              _plkrlFilter
              _plkrlPageToken
              _plkrlPageSize
              _plkrlCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsListResource)
                      mempty
