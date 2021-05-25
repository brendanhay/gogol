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
-- Module      : Network.Google.Resource.Compute.Subnetworks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of subnetworks available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.list@.
module Network.Google.Resource.Compute.Subnetworks.List
    (
    -- * REST Resource
      SubnetworksListResource

    -- * Creating a Request
    , subnetworksList
    , SubnetworksList

    -- * Request Lenses
    , slReturnPartialSuccess
    , slOrderBy
    , slProject
    , slFilter
    , slRegion
    , slPageToken
    , slMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.list@ method which the
-- 'SubnetworksList' request conforms to.
type SubnetworksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SubnetworkList

-- | Retrieves a list of subnetworks available to the specified project.
--
-- /See:/ 'subnetworksList' smart constructor.
data SubnetworksList =
  SubnetworksList'
    { _slReturnPartialSuccess :: !(Maybe Bool)
    , _slOrderBy :: !(Maybe Text)
    , _slProject :: !Text
    , _slFilter :: !(Maybe Text)
    , _slRegion :: !Text
    , _slPageToken :: !(Maybe Text)
    , _slMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slReturnPartialSuccess'
--
-- * 'slOrderBy'
--
-- * 'slProject'
--
-- * 'slFilter'
--
-- * 'slRegion'
--
-- * 'slPageToken'
--
-- * 'slMaxResults'
subnetworksList
    :: Text -- ^ 'slProject'
    -> Text -- ^ 'slRegion'
    -> SubnetworksList
subnetworksList pSlProject_ pSlRegion_ =
  SubnetworksList'
    { _slReturnPartialSuccess = Nothing
    , _slOrderBy = Nothing
    , _slProject = pSlProject_
    , _slFilter = Nothing
    , _slRegion = pSlRegion_
    , _slPageToken = Nothing
    , _slMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
slReturnPartialSuccess :: Lens' SubnetworksList (Maybe Bool)
slReturnPartialSuccess
  = lens _slReturnPartialSuccess
      (\ s a -> s{_slReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
slOrderBy :: Lens' SubnetworksList (Maybe Text)
slOrderBy
  = lens _slOrderBy (\ s a -> s{_slOrderBy = a})

-- | Project ID for this request.
slProject :: Lens' SubnetworksList Text
slProject
  = lens _slProject (\ s a -> s{_slProject = a})

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
slFilter :: Lens' SubnetworksList (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | Name of the region scoping this request.
slRegion :: Lens' SubnetworksList Text
slRegion = lens _slRegion (\ s a -> s{_slRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
slPageToken :: Lens' SubnetworksList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
slMaxResults :: Lens' SubnetworksList Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . _Coerce

instance GoogleRequest SubnetworksList where
        type Rs SubnetworksList = SubnetworkList
        type Scopes SubnetworksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksList'{..}
          = go _slProject _slRegion _slReturnPartialSuccess
              _slOrderBy
              _slFilter
              _slPageToken
              (Just _slMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksListResource)
                      mempty
