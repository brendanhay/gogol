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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all deployments for a given project.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.list@.
module Network.Google.Resource.DeploymentManager.Deployments.List
    (
    -- * REST Resource
      DeploymentsListResource

    -- * Creating a Request
    , deploymentsList
    , DeploymentsList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlOrderBy
    , dlProject
    , dlAccessToken
    , dlUploadType
    , dlFilter
    , dlPageToken
    , dlMaxResults
    , dlCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.list@ method which the
-- 'DeploymentsList' request conforms to.
type DeploymentsListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "orderBy" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DeploymentsListResponse

-- | Lists all deployments for a given project.
--
-- /See:/ 'deploymentsList' smart constructor.
data DeploymentsList =
  DeploymentsList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlOrderBy :: !(Maybe Text)
    , _dlProject :: !Text
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlFilter :: !(Maybe Text)
    , _dlPageToken :: !(Maybe Text)
    , _dlMaxResults :: !(Textual Word32)
    , _dlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlOrderBy'
--
-- * 'dlProject'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
--
-- * 'dlCallback'
deploymentsList
    :: Text -- ^ 'dlProject'
    -> DeploymentsList
deploymentsList pDlProject_ =
  DeploymentsList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlOrderBy = Nothing
    , _dlProject = pDlProject_
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlMaxResults = 500
    , _dlCallback = Nothing
    }


-- | V1 error format.
dlXgafv :: Lens' DeploymentsList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DeploymentsList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
dlOrderBy :: Lens' DeploymentsList (Maybe Text)
dlOrderBy
  = lens _dlOrderBy (\ s a -> s{_dlOrderBy = a})

-- | The project ID for this request.
dlProject :: Lens' DeploymentsList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | OAuth access token.
dlAccessToken :: Lens' DeploymentsList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DeploymentsList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
dlFilter :: Lens' DeploymentsList (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
dlPageToken :: Lens' DeploymentsList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
dlMaxResults :: Lens' DeploymentsList Word32
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})
      . _Coerce

-- | JSONP
dlCallback :: Lens' DeploymentsList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DeploymentsList where
        type Rs DeploymentsList = DeploymentsListResponse
        type Scopes DeploymentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient DeploymentsList'{..}
          = go _dlProject _dlXgafv _dlUploadProtocol _dlOrderBy
              _dlAccessToken
              _dlUploadType
              _dlFilter
              _dlPageToken
              (Just _dlMaxResults)
              _dlCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsListResource)
                      mempty
