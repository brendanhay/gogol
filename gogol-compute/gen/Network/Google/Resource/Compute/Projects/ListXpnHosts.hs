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
-- Module      : Network.Google.Resource.Compute.Projects.ListXpnHosts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all shared VPC host projects visible to the user in an
-- organization.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.listXpnHosts@.
module Network.Google.Resource.Compute.Projects.ListXpnHosts
    (
    -- * REST Resource
      ProjectsListXpnHostsResource

    -- * Creating a Request
    , projectsListXpnHosts
    , ProjectsListXpnHosts

    -- * Request Lenses
    , plxhReturnPartialSuccess
    , plxhOrderBy
    , plxhProject
    , plxhPayload
    , plxhFilter
    , plxhPageToken
    , plxhMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.projects.listXpnHosts@ method which the
-- 'ProjectsListXpnHosts' request conforms to.
type ProjectsListXpnHostsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "listXpnHosts" :>
               QueryParam "returnPartialSuccess" Bool :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ProjectsListXpnHostsRequest :>
                             Post '[JSON] XpnHostList

-- | Lists all shared VPC host projects visible to the user in an
-- organization.
--
-- /See:/ 'projectsListXpnHosts' smart constructor.
data ProjectsListXpnHosts =
  ProjectsListXpnHosts'
    { _plxhReturnPartialSuccess :: !(Maybe Bool)
    , _plxhOrderBy :: !(Maybe Text)
    , _plxhProject :: !Text
    , _plxhPayload :: !ProjectsListXpnHostsRequest
    , _plxhFilter :: !(Maybe Text)
    , _plxhPageToken :: !(Maybe Text)
    , _plxhMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsListXpnHosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plxhReturnPartialSuccess'
--
-- * 'plxhOrderBy'
--
-- * 'plxhProject'
--
-- * 'plxhPayload'
--
-- * 'plxhFilter'
--
-- * 'plxhPageToken'
--
-- * 'plxhMaxResults'
projectsListXpnHosts
    :: Text -- ^ 'plxhProject'
    -> ProjectsListXpnHostsRequest -- ^ 'plxhPayload'
    -> ProjectsListXpnHosts
projectsListXpnHosts pPlxhProject_ pPlxhPayload_ =
  ProjectsListXpnHosts'
    { _plxhReturnPartialSuccess = Nothing
    , _plxhOrderBy = Nothing
    , _plxhProject = pPlxhProject_
    , _plxhPayload = pPlxhPayload_
    , _plxhFilter = Nothing
    , _plxhPageToken = Nothing
    , _plxhMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
plxhReturnPartialSuccess :: Lens' ProjectsListXpnHosts (Maybe Bool)
plxhReturnPartialSuccess
  = lens _plxhReturnPartialSuccess
      (\ s a -> s{_plxhReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
plxhOrderBy :: Lens' ProjectsListXpnHosts (Maybe Text)
plxhOrderBy
  = lens _plxhOrderBy (\ s a -> s{_plxhOrderBy = a})

-- | Project ID for this request.
plxhProject :: Lens' ProjectsListXpnHosts Text
plxhProject
  = lens _plxhProject (\ s a -> s{_plxhProject = a})

-- | Multipart request metadata.
plxhPayload :: Lens' ProjectsListXpnHosts ProjectsListXpnHostsRequest
plxhPayload
  = lens _plxhPayload (\ s a -> s{_plxhPayload = a})

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
plxhFilter :: Lens' ProjectsListXpnHosts (Maybe Text)
plxhFilter
  = lens _plxhFilter (\ s a -> s{_plxhFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
plxhPageToken :: Lens' ProjectsListXpnHosts (Maybe Text)
plxhPageToken
  = lens _plxhPageToken
      (\ s a -> s{_plxhPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
plxhMaxResults :: Lens' ProjectsListXpnHosts Word32
plxhMaxResults
  = lens _plxhMaxResults
      (\ s a -> s{_plxhMaxResults = a})
      . _Coerce

instance GoogleRequest ProjectsListXpnHosts where
        type Rs ProjectsListXpnHosts = XpnHostList
        type Scopes ProjectsListXpnHosts =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsListXpnHosts'{..}
          = go _plxhProject _plxhReturnPartialSuccess
              _plxhOrderBy
              _plxhFilter
              _plxhPageToken
              (Just _plxhMaxResults)
              (Just AltJSON)
              _plxhPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsListXpnHostsResource)
                      mempty
