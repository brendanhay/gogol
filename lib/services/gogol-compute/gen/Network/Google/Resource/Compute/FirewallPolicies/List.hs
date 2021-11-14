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
-- Module      : Network.Google.Resource.Compute.FirewallPolicies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the policies that have been configured for the specified
-- folder or organization.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewallPolicies.list@.
module Network.Google.Resource.Compute.FirewallPolicies.List
    (
    -- * REST Resource
      FirewallPoliciesListResource

    -- * Creating a Request
    , firewallPoliciesList
    , FirewallPoliciesList

    -- * Request Lenses
    , fplReturnPartialSuccess
    , fplOrderBy
    , fplFilter
    , fplPageToken
    , fplMaxResults
    , fplParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewallPolicies.list@ method which the
-- 'FirewallPoliciesList' request conforms to.
type FirewallPoliciesListResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "firewallPolicies" :>
               QueryParam "returnPartialSuccess" Bool :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "parentId" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] FirewallPolicyList

-- | Lists all the policies that have been configured for the specified
-- folder or organization.
--
-- /See:/ 'firewallPoliciesList' smart constructor.
data FirewallPoliciesList =
  FirewallPoliciesList'
    { _fplReturnPartialSuccess :: !(Maybe Bool)
    , _fplOrderBy :: !(Maybe Text)
    , _fplFilter :: !(Maybe Text)
    , _fplPageToken :: !(Maybe Text)
    , _fplMaxResults :: !(Textual Word32)
    , _fplParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fplReturnPartialSuccess'
--
-- * 'fplOrderBy'
--
-- * 'fplFilter'
--
-- * 'fplPageToken'
--
-- * 'fplMaxResults'
--
-- * 'fplParentId'
firewallPoliciesList
    :: FirewallPoliciesList
firewallPoliciesList =
  FirewallPoliciesList'
    { _fplReturnPartialSuccess = Nothing
    , _fplOrderBy = Nothing
    , _fplFilter = Nothing
    , _fplPageToken = Nothing
    , _fplMaxResults = 500
    , _fplParentId = Nothing
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
fplReturnPartialSuccess :: Lens' FirewallPoliciesList (Maybe Bool)
fplReturnPartialSuccess
  = lens _fplReturnPartialSuccess
      (\ s a -> s{_fplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
fplOrderBy :: Lens' FirewallPoliciesList (Maybe Text)
fplOrderBy
  = lens _fplOrderBy (\ s a -> s{_fplOrderBy = a})

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
fplFilter :: Lens' FirewallPoliciesList (Maybe Text)
fplFilter
  = lens _fplFilter (\ s a -> s{_fplFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
fplPageToken :: Lens' FirewallPoliciesList (Maybe Text)
fplPageToken
  = lens _fplPageToken (\ s a -> s{_fplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
fplMaxResults :: Lens' FirewallPoliciesList Word32
fplMaxResults
  = lens _fplMaxResults
      (\ s a -> s{_fplMaxResults = a})
      . _Coerce

-- | Parent ID for this request.
fplParentId :: Lens' FirewallPoliciesList (Maybe Text)
fplParentId
  = lens _fplParentId (\ s a -> s{_fplParentId = a})

instance GoogleRequest FirewallPoliciesList where
        type Rs FirewallPoliciesList = FirewallPolicyList
        type Scopes FirewallPoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallPoliciesList'{..}
          = go _fplReturnPartialSuccess _fplOrderBy _fplFilter
              _fplPageToken
              (Just _fplMaxResults)
              _fplParentId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallPoliciesListResource)
                      mempty
