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
-- Module      : Network.Google.Resource.Spanner.Projects.InstanceConfigs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the supported instance configurations for a given project.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.list@.
module Network.Google.Resource.Spanner.Projects.InstanceConfigs.List
    (
    -- * REST Resource
      ProjectsInstanceConfigsListResource

    -- * Creating a Request
    , projectsInstanceConfigsList
    , ProjectsInstanceConfigsList

    -- * Request Lenses
    , piclParent
    , piclXgafv
    , piclUploadProtocol
    , piclAccessToken
    , piclUploadType
    , piclPageToken
    , piclPageSize
    , piclCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.list@ method which the
-- 'ProjectsInstanceConfigsList' request conforms to.
type ProjectsInstanceConfigsListResource =
     "v1" :>
       Capture "parent" Text :>
         "instanceConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListInstanceConfigsResponse

-- | Lists the supported instance configurations for a given project.
--
-- /See:/ 'projectsInstanceConfigsList' smart constructor.
data ProjectsInstanceConfigsList =
  ProjectsInstanceConfigsList'
    { _piclParent         :: !Text
    , _piclXgafv          :: !(Maybe Xgafv)
    , _piclUploadProtocol :: !(Maybe Text)
    , _piclAccessToken    :: !(Maybe Text)
    , _piclUploadType     :: !(Maybe Text)
    , _piclPageToken      :: !(Maybe Text)
    , _piclPageSize       :: !(Maybe (Textual Int32))
    , _piclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstanceConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piclParent'
--
-- * 'piclXgafv'
--
-- * 'piclUploadProtocol'
--
-- * 'piclAccessToken'
--
-- * 'piclUploadType'
--
-- * 'piclPageToken'
--
-- * 'piclPageSize'
--
-- * 'piclCallback'
projectsInstanceConfigsList
    :: Text -- ^ 'piclParent'
    -> ProjectsInstanceConfigsList
projectsInstanceConfigsList pPiclParent_ =
  ProjectsInstanceConfigsList'
    { _piclParent = pPiclParent_
    , _piclXgafv = Nothing
    , _piclUploadProtocol = Nothing
    , _piclAccessToken = Nothing
    , _piclUploadType = Nothing
    , _piclPageToken = Nothing
    , _piclPageSize = Nothing
    , _piclCallback = Nothing
    }


-- | Required. The name of the project for which a list of supported instance
-- configurations is requested. Values are of the form \`projects\/\`.
piclParent :: Lens' ProjectsInstanceConfigsList Text
piclParent
  = lens _piclParent (\ s a -> s{_piclParent = a})

-- | V1 error format.
piclXgafv :: Lens' ProjectsInstanceConfigsList (Maybe Xgafv)
piclXgafv
  = lens _piclXgafv (\ s a -> s{_piclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piclUploadProtocol :: Lens' ProjectsInstanceConfigsList (Maybe Text)
piclUploadProtocol
  = lens _piclUploadProtocol
      (\ s a -> s{_piclUploadProtocol = a})

-- | OAuth access token.
piclAccessToken :: Lens' ProjectsInstanceConfigsList (Maybe Text)
piclAccessToken
  = lens _piclAccessToken
      (\ s a -> s{_piclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piclUploadType :: Lens' ProjectsInstanceConfigsList (Maybe Text)
piclUploadType
  = lens _piclUploadType
      (\ s a -> s{_piclUploadType = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListInstanceConfigsResponse.
piclPageToken :: Lens' ProjectsInstanceConfigsList (Maybe Text)
piclPageToken
  = lens _piclPageToken
      (\ s a -> s{_piclPageToken = a})

-- | Number of instance configurations to be returned in the response. If 0
-- or less, defaults to the server\'s maximum allowed page size.
piclPageSize :: Lens' ProjectsInstanceConfigsList (Maybe Int32)
piclPageSize
  = lens _piclPageSize (\ s a -> s{_piclPageSize = a})
      . mapping _Coerce

-- | JSONP
piclCallback :: Lens' ProjectsInstanceConfigsList (Maybe Text)
piclCallback
  = lens _piclCallback (\ s a -> s{_piclCallback = a})

instance GoogleRequest ProjectsInstanceConfigsList
         where
        type Rs ProjectsInstanceConfigsList =
             ListInstanceConfigsResponse
        type Scopes ProjectsInstanceConfigsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstanceConfigsList'{..}
          = go _piclParent _piclXgafv _piclUploadProtocol
              _piclAccessToken
              _piclUploadType
              _piclPageToken
              _piclPageSize
              _piclCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstanceConfigsListResource)
                      mempty
