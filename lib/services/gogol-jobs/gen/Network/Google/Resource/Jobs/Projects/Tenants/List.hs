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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tenants associated with the project.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.list@.
module Network.Google.Resource.Jobs.Projects.Tenants.List
    (
    -- * REST Resource
      ProjectsTenantsListResource

    -- * Creating a Request
    , projectsTenantsList
    , ProjectsTenantsList

    -- * Request Lenses
    , ptlParent
    , ptlXgafv
    , ptlUploadProtocol
    , ptlAccessToken
    , ptlUploadType
    , ptlPageToken
    , ptlPageSize
    , ptlCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.list@ method which the
-- 'ProjectsTenantsList' request conforms to.
type ProjectsTenantsListResource =
     "v4" :>
       Capture "parent" Text :>
         "tenants" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTenantsResponse

-- | Lists all tenants associated with the project.
--
-- /See:/ 'projectsTenantsList' smart constructor.
data ProjectsTenantsList =
  ProjectsTenantsList'
    { _ptlParent :: !Text
    , _ptlXgafv :: !(Maybe Xgafv)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlAccessToken :: !(Maybe Text)
    , _ptlUploadType :: !(Maybe Text)
    , _ptlPageToken :: !(Maybe Text)
    , _ptlPageSize :: !(Maybe (Textual Int32))
    , _ptlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlParent'
--
-- * 'ptlXgafv'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlPageToken'
--
-- * 'ptlPageSize'
--
-- * 'ptlCallback'
projectsTenantsList
    :: Text -- ^ 'ptlParent'
    -> ProjectsTenantsList
projectsTenantsList pPtlParent_ =
  ProjectsTenantsList'
    { _ptlParent = pPtlParent_
    , _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlPageToken = Nothing
    , _ptlPageSize = Nothing
    , _ptlCallback = Nothing
    }


-- | Required. Resource name of the project under which the tenant is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/foo\".
ptlParent :: Lens' ProjectsTenantsList Text
ptlParent
  = lens _ptlParent (\ s a -> s{_ptlParent = a})

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTenantsList (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTenantsList (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTenantsList (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTenantsList (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | The starting indicator from which to return results.
ptlPageToken :: Lens' ProjectsTenantsList (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | The maximum number of tenants to be returned, at most 100. Default is
-- 100 if a non-positive number is provided.
ptlPageSize :: Lens' ProjectsTenantsList (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a}) .
      mapping _Coerce

-- | JSONP
ptlCallback :: Lens' ProjectsTenantsList (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleRequest ProjectsTenantsList where
        type Rs ProjectsTenantsList = ListTenantsResponse
        type Scopes ProjectsTenantsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsList'{..}
          = go _ptlParent _ptlXgafv _ptlUploadProtocol
              _ptlAccessToken
              _ptlUploadType
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsListResource)
                      mempty
