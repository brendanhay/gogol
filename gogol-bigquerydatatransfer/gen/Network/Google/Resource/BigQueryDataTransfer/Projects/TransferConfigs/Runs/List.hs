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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about running and completed jobs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.runs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.List
    (
    -- * REST Resource
      ProjectsTransferConfigsRunsListResource

    -- * Creating a Request
    , projectsTransferConfigsRunsList
    , ProjectsTransferConfigsRunsList

    -- * Request Lenses
    , ptcrlRunAttempt
    , ptcrlParent
    , ptcrlStates
    , ptcrlXgafv
    , ptcrlUploadProtocol
    , ptcrlAccessToken
    , ptcrlUploadType
    , ptcrlPageToken
    , ptcrlPageSize
    , ptcrlCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.runs.list@ method which the
-- 'ProjectsTransferConfigsRunsList' request conforms to.
type ProjectsTransferConfigsRunsListResource =
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
-- /See:/ 'projectsTransferConfigsRunsList' smart constructor.
data ProjectsTransferConfigsRunsList = ProjectsTransferConfigsRunsList'
    { _ptcrlRunAttempt     :: !(Maybe Text)
    , _ptcrlParent         :: !Text
    , _ptcrlStates         :: !(Maybe [Text])
    , _ptcrlXgafv          :: !(Maybe Xgafv)
    , _ptcrlUploadProtocol :: !(Maybe Text)
    , _ptcrlAccessToken    :: !(Maybe Text)
    , _ptcrlUploadType     :: !(Maybe Text)
    , _ptcrlPageToken      :: !(Maybe Text)
    , _ptcrlPageSize       :: !(Maybe (Textual Int32))
    , _ptcrlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTransferConfigsRunsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcrlRunAttempt'
--
-- * 'ptcrlParent'
--
-- * 'ptcrlStates'
--
-- * 'ptcrlXgafv'
--
-- * 'ptcrlUploadProtocol'
--
-- * 'ptcrlAccessToken'
--
-- * 'ptcrlUploadType'
--
-- * 'ptcrlPageToken'
--
-- * 'ptcrlPageSize'
--
-- * 'ptcrlCallback'
projectsTransferConfigsRunsList
    :: Text -- ^ 'ptcrlParent'
    -> ProjectsTransferConfigsRunsList
projectsTransferConfigsRunsList pPtcrlParent_ =
    ProjectsTransferConfigsRunsList'
    { _ptcrlRunAttempt = Nothing
    , _ptcrlParent = pPtcrlParent_
    , _ptcrlStates = Nothing
    , _ptcrlXgafv = Nothing
    , _ptcrlUploadProtocol = Nothing
    , _ptcrlAccessToken = Nothing
    , _ptcrlUploadType = Nothing
    , _ptcrlPageToken = Nothing
    , _ptcrlPageSize = Nothing
    , _ptcrlCallback = Nothing
    }

-- | Indicates how run attempts are to be pulled.
ptcrlRunAttempt :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlRunAttempt
  = lens _ptcrlRunAttempt
      (\ s a -> s{_ptcrlRunAttempt = a})

-- | Name of transfer configuration for which transfer runs should be
-- retrieved. Format of transfer configuration resource name is:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
ptcrlParent :: Lens' ProjectsTransferConfigsRunsList Text
ptcrlParent
  = lens _ptcrlParent (\ s a -> s{_ptcrlParent = a})

-- | When specified, only transfer runs with requested states are returned.
ptcrlStates :: Lens' ProjectsTransferConfigsRunsList [Text]
ptcrlStates
  = lens _ptcrlStates (\ s a -> s{_ptcrlStates = a}) .
      _Default
      . _Coerce

-- | V1 error format.
ptcrlXgafv :: Lens' ProjectsTransferConfigsRunsList (Maybe Xgafv)
ptcrlXgafv
  = lens _ptcrlXgafv (\ s a -> s{_ptcrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcrlUploadProtocol :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlUploadProtocol
  = lens _ptcrlUploadProtocol
      (\ s a -> s{_ptcrlUploadProtocol = a})

-- | OAuth access token.
ptcrlAccessToken :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlAccessToken
  = lens _ptcrlAccessToken
      (\ s a -> s{_ptcrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcrlUploadType :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlUploadType
  = lens _ptcrlUploadType
      (\ s a -> s{_ptcrlUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransferRunsRequest\` list results. For multiple-page results,
-- \`ListTransferRunsResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
ptcrlPageToken :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlPageToken
  = lens _ptcrlPageToken
      (\ s a -> s{_ptcrlPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
ptcrlPageSize :: Lens' ProjectsTransferConfigsRunsList (Maybe Int32)
ptcrlPageSize
  = lens _ptcrlPageSize
      (\ s a -> s{_ptcrlPageSize = a})
      . mapping _Coerce

-- | JSONP
ptcrlCallback :: Lens' ProjectsTransferConfigsRunsList (Maybe Text)
ptcrlCallback
  = lens _ptcrlCallback
      (\ s a -> s{_ptcrlCallback = a})

instance GoogleRequest
         ProjectsTransferConfigsRunsList where
        type Rs ProjectsTransferConfigsRunsList =
             ListTransferRunsResponse
        type Scopes ProjectsTransferConfigsRunsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTransferConfigsRunsList'{..}
          = go _ptcrlParent _ptcrlRunAttempt
              (_ptcrlStates ^. _Default)
              _ptcrlXgafv
              _ptcrlUploadProtocol
              _ptcrlAccessToken
              _ptcrlUploadType
              _ptcrlPageToken
              _ptcrlPageSize
              _ptcrlCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsRunsListResource)
                      mempty
