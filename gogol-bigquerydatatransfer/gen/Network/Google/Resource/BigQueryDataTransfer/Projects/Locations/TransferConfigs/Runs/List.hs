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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about running and completed jobs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsRunsListResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsRunsList
    , ProjectsLocationsTransferConfigsRunsList

    -- * Request Lenses
    , pltcrlRunAttempt
    , pltcrlParent
    , pltcrlStates
    , pltcrlXgafv
    , pltcrlUploadProtocol
    , pltcrlAccessToken
    , pltcrlUploadType
    , pltcrlPageToken
    , pltcrlPageSize
    , pltcrlCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.list@ method which the
-- 'ProjectsLocationsTransferConfigsRunsList' request conforms to.
type ProjectsLocationsTransferConfigsRunsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "runs" :>
           QueryParam "runAttempt" Text :>
             QueryParams "states" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListTransferRunsResponse

-- | Returns information about running and completed jobs.
--
-- /See:/ 'projectsLocationsTransferConfigsRunsList' smart constructor.
data ProjectsLocationsTransferConfigsRunsList =
  ProjectsLocationsTransferConfigsRunsList'
    { _pltcrlRunAttempt     :: !(Maybe Text)
    , _pltcrlParent         :: !Text
    , _pltcrlStates         :: !(Maybe [Text])
    , _pltcrlXgafv          :: !(Maybe Xgafv)
    , _pltcrlUploadProtocol :: !(Maybe Text)
    , _pltcrlAccessToken    :: !(Maybe Text)
    , _pltcrlUploadType     :: !(Maybe Text)
    , _pltcrlPageToken      :: !(Maybe Text)
    , _pltcrlPageSize       :: !(Maybe (Textual Int32))
    , _pltcrlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsRunsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcrlRunAttempt'
--
-- * 'pltcrlParent'
--
-- * 'pltcrlStates'
--
-- * 'pltcrlXgafv'
--
-- * 'pltcrlUploadProtocol'
--
-- * 'pltcrlAccessToken'
--
-- * 'pltcrlUploadType'
--
-- * 'pltcrlPageToken'
--
-- * 'pltcrlPageSize'
--
-- * 'pltcrlCallback'
projectsLocationsTransferConfigsRunsList
    :: Text -- ^ 'pltcrlParent'
    -> ProjectsLocationsTransferConfigsRunsList
projectsLocationsTransferConfigsRunsList pPltcrlParent_ =
  ProjectsLocationsTransferConfigsRunsList'
    { _pltcrlRunAttempt = Nothing
    , _pltcrlParent = pPltcrlParent_
    , _pltcrlStates = Nothing
    , _pltcrlXgafv = Nothing
    , _pltcrlUploadProtocol = Nothing
    , _pltcrlAccessToken = Nothing
    , _pltcrlUploadType = Nothing
    , _pltcrlPageToken = Nothing
    , _pltcrlPageSize = Nothing
    , _pltcrlCallback = Nothing
    }


-- | Indicates how run attempts are to be pulled.
pltcrlRunAttempt :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlRunAttempt
  = lens _pltcrlRunAttempt
      (\ s a -> s{_pltcrlRunAttempt = a})

-- | Name of transfer configuration for which transfer runs should be
-- retrieved. Format of transfer configuration resource name is:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
pltcrlParent :: Lens' ProjectsLocationsTransferConfigsRunsList Text
pltcrlParent
  = lens _pltcrlParent (\ s a -> s{_pltcrlParent = a})

-- | When specified, only transfer runs with requested states are returned.
pltcrlStates :: Lens' ProjectsLocationsTransferConfigsRunsList [Text]
pltcrlStates
  = lens _pltcrlStates (\ s a -> s{_pltcrlStates = a})
      . _Default
      . _Coerce

-- | V1 error format.
pltcrlXgafv :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Xgafv)
pltcrlXgafv
  = lens _pltcrlXgafv (\ s a -> s{_pltcrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcrlUploadProtocol :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlUploadProtocol
  = lens _pltcrlUploadProtocol
      (\ s a -> s{_pltcrlUploadProtocol = a})

-- | OAuth access token.
pltcrlAccessToken :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlAccessToken
  = lens _pltcrlAccessToken
      (\ s a -> s{_pltcrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcrlUploadType :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlUploadType
  = lens _pltcrlUploadType
      (\ s a -> s{_pltcrlUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransferRunsRequest\` list results. For multiple-page results,
-- \`ListTransferRunsResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
pltcrlPageToken :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlPageToken
  = lens _pltcrlPageToken
      (\ s a -> s{_pltcrlPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
pltcrlPageSize :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Int32)
pltcrlPageSize
  = lens _pltcrlPageSize
      (\ s a -> s{_pltcrlPageSize = a})
      . mapping _Coerce

-- | JSONP
pltcrlCallback :: Lens' ProjectsLocationsTransferConfigsRunsList (Maybe Text)
pltcrlCallback
  = lens _pltcrlCallback
      (\ s a -> s{_pltcrlCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsRunsList
         where
        type Rs ProjectsLocationsTransferConfigsRunsList =
             ListTransferRunsResponse
        type Scopes ProjectsLocationsTransferConfigsRunsList
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsTransferConfigsRunsList'{..}
          = go _pltcrlParent _pltcrlRunAttempt
              (_pltcrlStates ^. _Default)
              _pltcrlXgafv
              _pltcrlUploadProtocol
              _pltcrlAccessToken
              _pltcrlUploadType
              _pltcrlPageToken
              _pltcrlPageSize
              _pltcrlCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsRunsListResource)
                      mempty
