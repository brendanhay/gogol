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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all transfer configs owned by a project in the
-- specified location.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.List
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsListResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsList
    , ProjectsLocationsTransferConfigsList

    -- * Request Lenses
    , pltclParent
    , pltclXgafv
    , pltclUploadProtocol
    , pltclAccessToken
    , pltclUploadType
    , pltclPageToken
    , pltclDataSourceIds
    , pltclPageSize
    , pltclCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.list@ method which the
-- 'ProjectsLocationsTransferConfigsList' request conforms to.
type ProjectsLocationsTransferConfigsListResource =
     "v1" :>
       Capture "parent" Text :>
         "transferConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParams "dataSourceIds" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTransferConfigsResponse

-- | Returns information about all transfer configs owned by a project in the
-- specified location.
--
-- /See:/ 'projectsLocationsTransferConfigsList' smart constructor.
data ProjectsLocationsTransferConfigsList =
  ProjectsLocationsTransferConfigsList'
    { _pltclParent :: !Text
    , _pltclXgafv :: !(Maybe Xgafv)
    , _pltclUploadProtocol :: !(Maybe Text)
    , _pltclAccessToken :: !(Maybe Text)
    , _pltclUploadType :: !(Maybe Text)
    , _pltclPageToken :: !(Maybe Text)
    , _pltclDataSourceIds :: !(Maybe [Text])
    , _pltclPageSize :: !(Maybe (Textual Int32))
    , _pltclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltclParent'
--
-- * 'pltclXgafv'
--
-- * 'pltclUploadProtocol'
--
-- * 'pltclAccessToken'
--
-- * 'pltclUploadType'
--
-- * 'pltclPageToken'
--
-- * 'pltclDataSourceIds'
--
-- * 'pltclPageSize'
--
-- * 'pltclCallback'
projectsLocationsTransferConfigsList
    :: Text -- ^ 'pltclParent'
    -> ProjectsLocationsTransferConfigsList
projectsLocationsTransferConfigsList pPltclParent_ =
  ProjectsLocationsTransferConfigsList'
    { _pltclParent = pPltclParent_
    , _pltclXgafv = Nothing
    , _pltclUploadProtocol = Nothing
    , _pltclAccessToken = Nothing
    , _pltclUploadType = Nothing
    , _pltclPageToken = Nothing
    , _pltclDataSourceIds = Nothing
    , _pltclPageSize = Nothing
    , _pltclCallback = Nothing
    }


-- | Required. The BigQuery project id for which data sources should be
-- returned: \`projects\/{project_id}\` or
-- \`projects\/{project_id}\/locations\/{location_id}\`
pltclParent :: Lens' ProjectsLocationsTransferConfigsList Text
pltclParent
  = lens _pltclParent (\ s a -> s{_pltclParent = a})

-- | V1 error format.
pltclXgafv :: Lens' ProjectsLocationsTransferConfigsList (Maybe Xgafv)
pltclXgafv
  = lens _pltclXgafv (\ s a -> s{_pltclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltclUploadProtocol :: Lens' ProjectsLocationsTransferConfigsList (Maybe Text)
pltclUploadProtocol
  = lens _pltclUploadProtocol
      (\ s a -> s{_pltclUploadProtocol = a})

-- | OAuth access token.
pltclAccessToken :: Lens' ProjectsLocationsTransferConfigsList (Maybe Text)
pltclAccessToken
  = lens _pltclAccessToken
      (\ s a -> s{_pltclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltclUploadType :: Lens' ProjectsLocationsTransferConfigsList (Maybe Text)
pltclUploadType
  = lens _pltclUploadType
      (\ s a -> s{_pltclUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransfersRequest\` list results. For multiple-page results,
-- \`ListTransfersResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
pltclPageToken :: Lens' ProjectsLocationsTransferConfigsList (Maybe Text)
pltclPageToken
  = lens _pltclPageToken
      (\ s a -> s{_pltclPageToken = a})

-- | When specified, only configurations of requested data sources are
-- returned.
pltclDataSourceIds :: Lens' ProjectsLocationsTransferConfigsList [Text]
pltclDataSourceIds
  = lens _pltclDataSourceIds
      (\ s a -> s{_pltclDataSourceIds = a})
      . _Default
      . _Coerce

-- | Page size. The default page size is the maximum value of 1000 results.
pltclPageSize :: Lens' ProjectsLocationsTransferConfigsList (Maybe Int32)
pltclPageSize
  = lens _pltclPageSize
      (\ s a -> s{_pltclPageSize = a})
      . mapping _Coerce

-- | JSONP
pltclCallback :: Lens' ProjectsLocationsTransferConfigsList (Maybe Text)
pltclCallback
  = lens _pltclCallback
      (\ s a -> s{_pltclCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsList
         where
        type Rs ProjectsLocationsTransferConfigsList =
             ListTransferConfigsResponse
        type Scopes ProjectsLocationsTransferConfigsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsTransferConfigsList'{..}
          = go _pltclParent _pltclXgafv _pltclUploadProtocol
              _pltclAccessToken
              _pltclUploadType
              _pltclPageToken
              (_pltclDataSourceIds ^. _Default)
              _pltclPageSize
              _pltclCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTransferConfigsListResource)
                      mempty
