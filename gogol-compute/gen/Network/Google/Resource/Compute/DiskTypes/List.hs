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
-- Module      : Network.Google.Resource.Compute.DiskTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of disk types available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.diskTypes.list@.
module Network.Google.Resource.Compute.DiskTypes.List
    (
    -- * REST Resource
      DiskTypesListResource

    -- * Creating a Request
    , diskTypesList
    , DiskTypesList

    -- * Request Lenses
    , dtlReturnPartialSuccess
    , dtlOrderBy
    , dtlProject
    , dtlZone
    , dtlFilter
    , dtlPageToken
    , dtlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.diskTypes.list@ method which the
-- 'DiskTypesList' request conforms to.
type DiskTypesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "diskTypes" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DiskTypeList

-- | Retrieves a list of disk types available to the specified project.
--
-- /See:/ 'diskTypesList' smart constructor.
data DiskTypesList =
  DiskTypesList'
    { _dtlReturnPartialSuccess :: !(Maybe Bool)
    , _dtlOrderBy :: !(Maybe Text)
    , _dtlProject :: !Text
    , _dtlZone :: !Text
    , _dtlFilter :: !(Maybe Text)
    , _dtlPageToken :: !(Maybe Text)
    , _dtlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlReturnPartialSuccess'
--
-- * 'dtlOrderBy'
--
-- * 'dtlProject'
--
-- * 'dtlZone'
--
-- * 'dtlFilter'
--
-- * 'dtlPageToken'
--
-- * 'dtlMaxResults'
diskTypesList
    :: Text -- ^ 'dtlProject'
    -> Text -- ^ 'dtlZone'
    -> DiskTypesList
diskTypesList pDtlProject_ pDtlZone_ =
  DiskTypesList'
    { _dtlReturnPartialSuccess = Nothing
    , _dtlOrderBy = Nothing
    , _dtlProject = pDtlProject_
    , _dtlZone = pDtlZone_
    , _dtlFilter = Nothing
    , _dtlPageToken = Nothing
    , _dtlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
dtlReturnPartialSuccess :: Lens' DiskTypesList (Maybe Bool)
dtlReturnPartialSuccess
  = lens _dtlReturnPartialSuccess
      (\ s a -> s{_dtlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
dtlOrderBy :: Lens' DiskTypesList (Maybe Text)
dtlOrderBy
  = lens _dtlOrderBy (\ s a -> s{_dtlOrderBy = a})

-- | Project ID for this request.
dtlProject :: Lens' DiskTypesList Text
dtlProject
  = lens _dtlProject (\ s a -> s{_dtlProject = a})

-- | The name of the zone for this request.
dtlZone :: Lens' DiskTypesList Text
dtlZone = lens _dtlZone (\ s a -> s{_dtlZone = a})

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
dtlFilter :: Lens' DiskTypesList (Maybe Text)
dtlFilter
  = lens _dtlFilter (\ s a -> s{_dtlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
dtlPageToken :: Lens' DiskTypesList (Maybe Text)
dtlPageToken
  = lens _dtlPageToken (\ s a -> s{_dtlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
dtlMaxResults :: Lens' DiskTypesList Word32
dtlMaxResults
  = lens _dtlMaxResults
      (\ s a -> s{_dtlMaxResults = a})
      . _Coerce

instance GoogleRequest DiskTypesList where
        type Rs DiskTypesList = DiskTypeList
        type Scopes DiskTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DiskTypesList'{..}
          = go _dtlProject _dtlZone _dtlReturnPartialSuccess
              _dtlOrderBy
              _dtlFilter
              _dtlPageToken
              (Just _dtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DiskTypesListResource)
                      mempty
