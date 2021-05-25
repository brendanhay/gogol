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
-- Module      : Network.Google.Resource.Compute.Routers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Router resources available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.list@.
module Network.Google.Resource.Compute.Routers.List
    (
    -- * REST Resource
      RoutersListResource

    -- * Creating a Request
    , routersList
    , RoutersList

    -- * Request Lenses
    , rlReturnPartialSuccess
    , rlOrderBy
    , rlProject
    , rlFilter
    , rlRegion
    , rlPageToken
    , rlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.routers.list@ method which the
-- 'RoutersList' request conforms to.
type RoutersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :> Get '[JSON] RouterList

-- | Retrieves a list of Router resources available to the specified project.
--
-- /See:/ 'routersList' smart constructor.
data RoutersList =
  RoutersList'
    { _rlReturnPartialSuccess :: !(Maybe Bool)
    , _rlOrderBy :: !(Maybe Text)
    , _rlProject :: !Text
    , _rlFilter :: !(Maybe Text)
    , _rlRegion :: !Text
    , _rlPageToken :: !(Maybe Text)
    , _rlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlReturnPartialSuccess'
--
-- * 'rlOrderBy'
--
-- * 'rlProject'
--
-- * 'rlFilter'
--
-- * 'rlRegion'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
routersList
    :: Text -- ^ 'rlProject'
    -> Text -- ^ 'rlRegion'
    -> RoutersList
routersList pRlProject_ pRlRegion_ =
  RoutersList'
    { _rlReturnPartialSuccess = Nothing
    , _rlOrderBy = Nothing
    , _rlProject = pRlProject_
    , _rlFilter = Nothing
    , _rlRegion = pRlRegion_
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rlReturnPartialSuccess :: Lens' RoutersList (Maybe Bool)
rlReturnPartialSuccess
  = lens _rlReturnPartialSuccess
      (\ s a -> s{_rlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rlOrderBy :: Lens' RoutersList (Maybe Text)
rlOrderBy
  = lens _rlOrderBy (\ s a -> s{_rlOrderBy = a})

-- | Project ID for this request.
rlProject :: Lens' RoutersList Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

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
rlFilter :: Lens' RoutersList (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Name of the region for this request.
rlRegion :: Lens' RoutersList Text
rlRegion = lens _rlRegion (\ s a -> s{_rlRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rlPageToken :: Lens' RoutersList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rlMaxResults :: Lens' RoutersList Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

instance GoogleRequest RoutersList where
        type Rs RoutersList = RouterList
        type Scopes RoutersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersList'{..}
          = go _rlProject _rlRegion _rlReturnPartialSuccess
              _rlOrderBy
              _rlFilter
              _rlPageToken
              (Just _rlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersListResource)
                      mempty
