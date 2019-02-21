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
-- Module      : Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing valid uptime check configurations for the project,
-- leaving out any invalid configurations.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.list@.
module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.List
    (
    -- * REST Resource
      ProjectsUptimeCheckConfigsListResource

    -- * Creating a Request
    , projectsUptimeCheckConfigsList
    , ProjectsUptimeCheckConfigsList

    -- * Request Lenses
    , pucclParent
    , pucclXgafv
    , pucclUploadProtocol
    , pucclAccessToken
    , pucclUploadType
    , pucclPageToken
    , pucclPageSize
    , pucclCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.list@ method which the
-- 'ProjectsUptimeCheckConfigsList' request conforms to.
type ProjectsUptimeCheckConfigsListResource =
     "v3" :>
       Capture "parent" Text :>
         "uptimeCheckConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListUptimeCheckConfigsResponse

-- | Lists the existing valid uptime check configurations for the project,
-- leaving out any invalid configurations.
--
-- /See:/ 'projectsUptimeCheckConfigsList' smart constructor.
data ProjectsUptimeCheckConfigsList =
  ProjectsUptimeCheckConfigsList'
    { _pucclParent         :: !Text
    , _pucclXgafv          :: !(Maybe Xgafv)
    , _pucclUploadProtocol :: !(Maybe Text)
    , _pucclAccessToken    :: !(Maybe Text)
    , _pucclUploadType     :: !(Maybe Text)
    , _pucclPageToken      :: !(Maybe Text)
    , _pucclPageSize       :: !(Maybe (Textual Int32))
    , _pucclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUptimeCheckConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucclParent'
--
-- * 'pucclXgafv'
--
-- * 'pucclUploadProtocol'
--
-- * 'pucclAccessToken'
--
-- * 'pucclUploadType'
--
-- * 'pucclPageToken'
--
-- * 'pucclPageSize'
--
-- * 'pucclCallback'
projectsUptimeCheckConfigsList
    :: Text -- ^ 'pucclParent'
    -> ProjectsUptimeCheckConfigsList
projectsUptimeCheckConfigsList pPucclParent_ =
  ProjectsUptimeCheckConfigsList'
    { _pucclParent = pPucclParent_
    , _pucclXgafv = Nothing
    , _pucclUploadProtocol = Nothing
    , _pucclAccessToken = Nothing
    , _pucclUploadType = Nothing
    , _pucclPageToken = Nothing
    , _pucclPageSize = Nothing
    , _pucclCallback = Nothing
    }


-- | The project whose uptime check configurations are listed. The format is
-- projects\/[PROJECT_ID].
pucclParent :: Lens' ProjectsUptimeCheckConfigsList Text
pucclParent
  = lens _pucclParent (\ s a -> s{_pucclParent = a})

-- | V1 error format.
pucclXgafv :: Lens' ProjectsUptimeCheckConfigsList (Maybe Xgafv)
pucclXgafv
  = lens _pucclXgafv (\ s a -> s{_pucclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucclUploadProtocol :: Lens' ProjectsUptimeCheckConfigsList (Maybe Text)
pucclUploadProtocol
  = lens _pucclUploadProtocol
      (\ s a -> s{_pucclUploadProtocol = a})

-- | OAuth access token.
pucclAccessToken :: Lens' ProjectsUptimeCheckConfigsList (Maybe Text)
pucclAccessToken
  = lens _pucclAccessToken
      (\ s a -> s{_pucclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucclUploadType :: Lens' ProjectsUptimeCheckConfigsList (Maybe Text)
pucclUploadType
  = lens _pucclUploadType
      (\ s a -> s{_pucclUploadType = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return more results from the previous method call.
pucclPageToken :: Lens' ProjectsUptimeCheckConfigsList (Maybe Text)
pucclPageToken
  = lens _pucclPageToken
      (\ s a -> s{_pucclPageToken = a})

-- | The maximum number of results to return in a single response. The server
-- may further constrain the maximum number of results returned in a single
-- page. If the page_size is \<=0, the server will decide the number of
-- results to be returned.
pucclPageSize :: Lens' ProjectsUptimeCheckConfigsList (Maybe Int32)
pucclPageSize
  = lens _pucclPageSize
      (\ s a -> s{_pucclPageSize = a})
      . mapping _Coerce

-- | JSONP
pucclCallback :: Lens' ProjectsUptimeCheckConfigsList (Maybe Text)
pucclCallback
  = lens _pucclCallback
      (\ s a -> s{_pucclCallback = a})

instance GoogleRequest ProjectsUptimeCheckConfigsList
         where
        type Rs ProjectsUptimeCheckConfigsList =
             ListUptimeCheckConfigsResponse
        type Scopes ProjectsUptimeCheckConfigsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsUptimeCheckConfigsList'{..}
          = go _pucclParent _pucclXgafv _pucclUploadProtocol
              _pucclAccessToken
              _pucclUploadType
              _pucclPageToken
              _pucclPageSize
              _pucclCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsUptimeCheckConfigsListResource)
                      mempty
