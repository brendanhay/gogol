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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all resources in a given deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.resources.list@.
module Network.Google.Resource.DeploymentManager.Resources.List
    (
    -- * REST Resource
      ResourcesListResource

    -- * Creating a Request
    , resourcesList
    , ResourcesList

    -- * Request Lenses
    , rlXgafv
    , rlUploadProtocol
    , rlOrderBy
    , rlProject
    , rlAccessToken
    , rlUploadType
    , rlFilter
    , rlPageToken
    , rlMaxResults
    , rlCallback
    , rlDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.resources.list@ method which the
-- 'ResourcesList' request conforms to.
type ResourcesListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "resources" :>
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
                                         Get '[JSON] ResourcesListResponse

-- | Lists all resources in a given deployment.
--
-- /See:/ 'resourcesList' smart constructor.
data ResourcesList =
  ResourcesList'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlOrderBy :: !(Maybe Text)
    , _rlProject :: !Text
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlFilter :: !(Maybe Text)
    , _rlPageToken :: !(Maybe Text)
    , _rlMaxResults :: !(Textual Word32)
    , _rlCallback :: !(Maybe Text)
    , _rlDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlUploadProtocol'
--
-- * 'rlOrderBy'
--
-- * 'rlProject'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlFilter'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
--
-- * 'rlCallback'
--
-- * 'rlDeployment'
resourcesList
    :: Text -- ^ 'rlProject'
    -> Text -- ^ 'rlDeployment'
    -> ResourcesList
resourcesList pRlProject_ pRlDeployment_ =
  ResourcesList'
    { _rlXgafv = Nothing
    , _rlUploadProtocol = Nothing
    , _rlOrderBy = Nothing
    , _rlProject = pRlProject_
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    , _rlCallback = Nothing
    , _rlDeployment = pRlDeployment_
    }


-- | V1 error format.
rlXgafv :: Lens' ResourcesList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' ResourcesList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rlOrderBy :: Lens' ResourcesList (Maybe Text)
rlOrderBy
  = lens _rlOrderBy (\ s a -> s{_rlOrderBy = a})

-- | The project ID for this request.
rlProject :: Lens' ResourcesList Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

-- | OAuth access token.
rlAccessToken :: Lens' ResourcesList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' ResourcesList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

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
rlFilter :: Lens' ResourcesList (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rlPageToken :: Lens' ResourcesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rlMaxResults :: Lens' ResourcesList Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

-- | JSONP
rlCallback :: Lens' ResourcesList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

-- | The name of the deployment for this request.
rlDeployment :: Lens' ResourcesList Text
rlDeployment
  = lens _rlDeployment (\ s a -> s{_rlDeployment = a})

instance GoogleRequest ResourcesList where
        type Rs ResourcesList = ResourcesListResponse
        type Scopes ResourcesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient ResourcesList'{..}
          = go _rlProject _rlDeployment _rlXgafv
              _rlUploadProtocol
              _rlOrderBy
              _rlAccessToken
              _rlUploadType
              _rlFilter
              _rlPageToken
              (Just _rlMaxResults)
              _rlCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ResourcesListResource)
                      mempty
