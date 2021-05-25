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
-- Module      : Network.Google.Resource.Compute.Firewalls.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of firewall rules available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.list@.
module Network.Google.Resource.Compute.Firewalls.List
    (
    -- * REST Resource
      FirewallsListResource

    -- * Creating a Request
    , firewallsList
    , FirewallsList

    -- * Request Lenses
    , flReturnPartialSuccess
    , flOrderBy
    , flProject
    , flFilter
    , flPageToken
    , flMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewalls.list@ method which the
-- 'FirewallsList' request conforms to.
type FirewallsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] FirewallList

-- | Retrieves the list of firewall rules available to the specified project.
--
-- /See:/ 'firewallsList' smart constructor.
data FirewallsList =
  FirewallsList'
    { _flReturnPartialSuccess :: !(Maybe Bool)
    , _flOrderBy :: !(Maybe Text)
    , _flProject :: !Text
    , _flFilter :: !(Maybe Text)
    , _flPageToken :: !(Maybe Text)
    , _flMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flReturnPartialSuccess'
--
-- * 'flOrderBy'
--
-- * 'flProject'
--
-- * 'flFilter'
--
-- * 'flPageToken'
--
-- * 'flMaxResults'
firewallsList
    :: Text -- ^ 'flProject'
    -> FirewallsList
firewallsList pFlProject_ =
  FirewallsList'
    { _flReturnPartialSuccess = Nothing
    , _flOrderBy = Nothing
    , _flProject = pFlProject_
    , _flFilter = Nothing
    , _flPageToken = Nothing
    , _flMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
flReturnPartialSuccess :: Lens' FirewallsList (Maybe Bool)
flReturnPartialSuccess
  = lens _flReturnPartialSuccess
      (\ s a -> s{_flReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
flOrderBy :: Lens' FirewallsList (Maybe Text)
flOrderBy
  = lens _flOrderBy (\ s a -> s{_flOrderBy = a})

-- | Project ID for this request.
flProject :: Lens' FirewallsList Text
flProject
  = lens _flProject (\ s a -> s{_flProject = a})

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
flFilter :: Lens' FirewallsList (Maybe Text)
flFilter = lens _flFilter (\ s a -> s{_flFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
flPageToken :: Lens' FirewallsList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
flMaxResults :: Lens' FirewallsList Word32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})
      . _Coerce

instance GoogleRequest FirewallsList where
        type Rs FirewallsList = FirewallList
        type Scopes FirewallsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallsList'{..}
          = go _flProject _flReturnPartialSuccess _flOrderBy
              _flFilter
              _flPageToken
              (Just _flMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy FirewallsListResource)
                      mempty
