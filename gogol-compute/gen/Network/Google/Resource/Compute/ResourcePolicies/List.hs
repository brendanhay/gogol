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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list all the resource policies that have been configured for the
-- specified project in specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.list@.
module Network.Google.Resource.Compute.ResourcePolicies.List
    (
    -- * REST Resource
      ResourcePoliciesListResource

    -- * Creating a Request
    , resourcePoliciesList
    , ResourcePoliciesList

    -- * Request Lenses
    , rplReturnPartialSuccess
    , rplOrderBy
    , rplProject
    , rplFilter
    , rplRegion
    , rplPageToken
    , rplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.list@ method which the
-- 'ResourcePoliciesList' request conforms to.
type ResourcePoliciesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ResourcePolicyList

-- | A list all the resource policies that have been configured for the
-- specified project in specified region.
--
-- /See:/ 'resourcePoliciesList' smart constructor.
data ResourcePoliciesList =
  ResourcePoliciesList'
    { _rplReturnPartialSuccess :: !(Maybe Bool)
    , _rplOrderBy :: !(Maybe Text)
    , _rplProject :: !Text
    , _rplFilter :: !(Maybe Text)
    , _rplRegion :: !Text
    , _rplPageToken :: !(Maybe Text)
    , _rplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplReturnPartialSuccess'
--
-- * 'rplOrderBy'
--
-- * 'rplProject'
--
-- * 'rplFilter'
--
-- * 'rplRegion'
--
-- * 'rplPageToken'
--
-- * 'rplMaxResults'
resourcePoliciesList
    :: Text -- ^ 'rplProject'
    -> Text -- ^ 'rplRegion'
    -> ResourcePoliciesList
resourcePoliciesList pRplProject_ pRplRegion_ =
  ResourcePoliciesList'
    { _rplReturnPartialSuccess = Nothing
    , _rplOrderBy = Nothing
    , _rplProject = pRplProject_
    , _rplFilter = Nothing
    , _rplRegion = pRplRegion_
    , _rplPageToken = Nothing
    , _rplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rplReturnPartialSuccess :: Lens' ResourcePoliciesList (Maybe Bool)
rplReturnPartialSuccess
  = lens _rplReturnPartialSuccess
      (\ s a -> s{_rplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rplOrderBy :: Lens' ResourcePoliciesList (Maybe Text)
rplOrderBy
  = lens _rplOrderBy (\ s a -> s{_rplOrderBy = a})

-- | Project ID for this request.
rplProject :: Lens' ResourcePoliciesList Text
rplProject
  = lens _rplProject (\ s a -> s{_rplProject = a})

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
rplFilter :: Lens' ResourcePoliciesList (Maybe Text)
rplFilter
  = lens _rplFilter (\ s a -> s{_rplFilter = a})

-- | Name of the region for this request.
rplRegion :: Lens' ResourcePoliciesList Text
rplRegion
  = lens _rplRegion (\ s a -> s{_rplRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rplPageToken :: Lens' ResourcePoliciesList (Maybe Text)
rplPageToken
  = lens _rplPageToken (\ s a -> s{_rplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rplMaxResults :: Lens' ResourcePoliciesList Word32
rplMaxResults
  = lens _rplMaxResults
      (\ s a -> s{_rplMaxResults = a})
      . _Coerce

instance GoogleRequest ResourcePoliciesList where
        type Rs ResourcePoliciesList = ResourcePolicyList
        type Scopes ResourcePoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ResourcePoliciesList'{..}
          = go _rplProject _rplRegion _rplReturnPartialSuccess
              _rplOrderBy
              _rplFilter
              _rplPageToken
              (Just _rplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesListResource)
                      mempty
