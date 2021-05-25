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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ListErrors
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all errors thrown by actions on instances for a given managed
-- instance group. The filter and orderBy query parameters are not
-- supported.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.listErrors@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ListErrors
    (
    -- * REST Resource
      InstanceGroupManagersListErrorsResource

    -- * Creating a Request
    , instanceGroupManagersListErrors
    , InstanceGroupManagersListErrors

    -- * Request Lenses
    , igmleReturnPartialSuccess
    , igmleOrderBy
    , igmleProject
    , igmleInstanceGroupManager
    , igmleZone
    , igmleFilter
    , igmlePageToken
    , igmleMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.listErrors@ method which the
-- 'InstanceGroupManagersListErrors' request conforms to.
type InstanceGroupManagersListErrorsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listErrors" :>
                       QueryParam "returnPartialSuccess" Bool :>
                         QueryParam "orderBy" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     InstanceGroupManagersListErrorsResponse

-- | Lists all errors thrown by actions on instances for a given managed
-- instance group. The filter and orderBy query parameters are not
-- supported.
--
-- /See:/ 'instanceGroupManagersListErrors' smart constructor.
data InstanceGroupManagersListErrors =
  InstanceGroupManagersListErrors'
    { _igmleReturnPartialSuccess :: !(Maybe Bool)
    , _igmleOrderBy :: !(Maybe Text)
    , _igmleProject :: !Text
    , _igmleInstanceGroupManager :: !Text
    , _igmleZone :: !Text
    , _igmleFilter :: !(Maybe Text)
    , _igmlePageToken :: !(Maybe Text)
    , _igmleMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersListErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmleReturnPartialSuccess'
--
-- * 'igmleOrderBy'
--
-- * 'igmleProject'
--
-- * 'igmleInstanceGroupManager'
--
-- * 'igmleZone'
--
-- * 'igmleFilter'
--
-- * 'igmlePageToken'
--
-- * 'igmleMaxResults'
instanceGroupManagersListErrors
    :: Text -- ^ 'igmleProject'
    -> Text -- ^ 'igmleInstanceGroupManager'
    -> Text -- ^ 'igmleZone'
    -> InstanceGroupManagersListErrors
instanceGroupManagersListErrors pIgmleProject_ pIgmleInstanceGroupManager_ pIgmleZone_ =
  InstanceGroupManagersListErrors'
    { _igmleReturnPartialSuccess = Nothing
    , _igmleOrderBy = Nothing
    , _igmleProject = pIgmleProject_
    , _igmleInstanceGroupManager = pIgmleInstanceGroupManager_
    , _igmleZone = pIgmleZone_
    , _igmleFilter = Nothing
    , _igmlePageToken = Nothing
    , _igmleMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
igmleReturnPartialSuccess :: Lens' InstanceGroupManagersListErrors (Maybe Bool)
igmleReturnPartialSuccess
  = lens _igmleReturnPartialSuccess
      (\ s a -> s{_igmleReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
igmleOrderBy :: Lens' InstanceGroupManagersListErrors (Maybe Text)
igmleOrderBy
  = lens _igmleOrderBy (\ s a -> s{_igmleOrderBy = a})

-- | Project ID for this request.
igmleProject :: Lens' InstanceGroupManagersListErrors Text
igmleProject
  = lens _igmleProject (\ s a -> s{_igmleProject = a})

-- | The name of the managed instance group. It must be a string that meets
-- the requirements in RFC1035, or an unsigned long integer: must match
-- regexp pattern: (?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?)|[1-9][0-9]{0,19}.
igmleInstanceGroupManager :: Lens' InstanceGroupManagersListErrors Text
igmleInstanceGroupManager
  = lens _igmleInstanceGroupManager
      (\ s a -> s{_igmleInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmleZone :: Lens' InstanceGroupManagersListErrors Text
igmleZone
  = lens _igmleZone (\ s a -> s{_igmleZone = a})

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
igmleFilter :: Lens' InstanceGroupManagersListErrors (Maybe Text)
igmleFilter
  = lens _igmleFilter (\ s a -> s{_igmleFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
igmlePageToken :: Lens' InstanceGroupManagersListErrors (Maybe Text)
igmlePageToken
  = lens _igmlePageToken
      (\ s a -> s{_igmlePageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
igmleMaxResults :: Lens' InstanceGroupManagersListErrors Word32
igmleMaxResults
  = lens _igmleMaxResults
      (\ s a -> s{_igmleMaxResults = a})
      . _Coerce

instance GoogleRequest
           InstanceGroupManagersListErrors
         where
        type Rs InstanceGroupManagersListErrors =
             InstanceGroupManagersListErrorsResponse
        type Scopes InstanceGroupManagersListErrors =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupManagersListErrors'{..}
          = go _igmleProject _igmleZone
              _igmleInstanceGroupManager
              _igmleReturnPartialSuccess
              _igmleOrderBy
              _igmleFilter
              _igmlePageToken
              (Just _igmleMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersListErrorsResource)
                      mempty
