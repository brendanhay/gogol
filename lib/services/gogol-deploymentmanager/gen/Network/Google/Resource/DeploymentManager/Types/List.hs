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
-- Module      : Network.Google.Resource.DeploymentManager.Types.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all resource types for Deployment Manager.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.types.list@.
module Network.Google.Resource.DeploymentManager.Types.List
    (
    -- * REST Resource
      TypesListResource

    -- * Creating a Request
    , typesList
    , TypesList

    -- * Request Lenses
    , tlXgafv
    , tlUploadProtocol
    , tlOrderBy
    , tlProject
    , tlAccessToken
    , tlUploadType
    , tlFilter
    , tlPageToken
    , tlMaxResults
    , tlCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.types.list@ method which the
-- 'TypesList' request conforms to.
type TypesListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "types" :>
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
                                     Get '[JSON] TypesListResponse

-- | Lists all resource types for Deployment Manager.
--
-- /See:/ 'typesList' smart constructor.
data TypesList =
  TypesList'
    { _tlXgafv :: !(Maybe Xgafv)
    , _tlUploadProtocol :: !(Maybe Text)
    , _tlOrderBy :: !(Maybe Text)
    , _tlProject :: !Text
    , _tlAccessToken :: !(Maybe Text)
    , _tlUploadType :: !(Maybe Text)
    , _tlFilter :: !(Maybe Text)
    , _tlPageToken :: !(Maybe Text)
    , _tlMaxResults :: !(Textual Word32)
    , _tlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlXgafv'
--
-- * 'tlUploadProtocol'
--
-- * 'tlOrderBy'
--
-- * 'tlProject'
--
-- * 'tlAccessToken'
--
-- * 'tlUploadType'
--
-- * 'tlFilter'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
--
-- * 'tlCallback'
typesList
    :: Text -- ^ 'tlProject'
    -> TypesList
typesList pTlProject_ =
  TypesList'
    { _tlXgafv = Nothing
    , _tlUploadProtocol = Nothing
    , _tlOrderBy = Nothing
    , _tlProject = pTlProject_
    , _tlAccessToken = Nothing
    , _tlUploadType = Nothing
    , _tlFilter = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = 500
    , _tlCallback = Nothing
    }


-- | V1 error format.
tlXgafv :: Lens' TypesList (Maybe Xgafv)
tlXgafv = lens _tlXgafv (\ s a -> s{_tlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlUploadProtocol :: Lens' TypesList (Maybe Text)
tlUploadProtocol
  = lens _tlUploadProtocol
      (\ s a -> s{_tlUploadProtocol = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
tlOrderBy :: Lens' TypesList (Maybe Text)
tlOrderBy
  = lens _tlOrderBy (\ s a -> s{_tlOrderBy = a})

-- | The project ID for this request.
tlProject :: Lens' TypesList Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | OAuth access token.
tlAccessToken :: Lens' TypesList (Maybe Text)
tlAccessToken
  = lens _tlAccessToken
      (\ s a -> s{_tlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlUploadType :: Lens' TypesList (Maybe Text)
tlUploadType
  = lens _tlUploadType (\ s a -> s{_tlUploadType = a})

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
tlFilter :: Lens' TypesList (Maybe Text)
tlFilter = lens _tlFilter (\ s a -> s{_tlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
tlPageToken :: Lens' TypesList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
tlMaxResults :: Lens' TypesList Word32
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . _Coerce

-- | JSONP
tlCallback :: Lens' TypesList (Maybe Text)
tlCallback
  = lens _tlCallback (\ s a -> s{_tlCallback = a})

instance GoogleRequest TypesList where
        type Rs TypesList = TypesListResponse
        type Scopes TypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient TypesList'{..}
          = go _tlProject _tlXgafv _tlUploadProtocol _tlOrderBy
              _tlAccessToken
              _tlUploadType
              _tlFilter
              _tlPageToken
              (Just _tlMaxResults)
              _tlCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy TypesListResource)
                      mempty
