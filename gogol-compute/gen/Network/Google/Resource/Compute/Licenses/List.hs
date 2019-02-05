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
-- Module      : Network.Google.Resource.Compute.Licenses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of licenses available in the specified project. This
-- method does not get any licenses that belong to other projects,
-- including licenses attached to publicly-available images, like Debian 9.
-- If you want to get a list of publicly-available licenses, use this
-- method to make a request to the respective image project, such as
-- debian-cloud or windows-cloud.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.list@.
module Network.Google.Resource.Compute.Licenses.List
    (
    -- * REST Resource
      LicensesListResource

    -- * Creating a Request
    , licensesList
    , LicensesList

    -- * Request Lenses
    , llOrderBy
    , llProject
    , llFilter
    , llPageToken
    , llMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenses.list@ method which the
-- 'LicensesList' request conforms to.
type LicensesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LicensesListResponse

-- | Retrieves the list of licenses available in the specified project. This
-- method does not get any licenses that belong to other projects,
-- including licenses attached to publicly-available images, like Debian 9.
-- If you want to get a list of publicly-available licenses, use this
-- method to make a request to the respective image project, such as
-- debian-cloud or windows-cloud.
--
-- /See:/ 'licensesList' smart constructor.
data LicensesList = LicensesList'
    { _llOrderBy    :: !(Maybe Text)
    , _llProject    :: !Text
    , _llFilter     :: !(Maybe Text)
    , _llPageToken  :: !(Maybe Text)
    , _llMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicensesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llOrderBy'
--
-- * 'llProject'
--
-- * 'llFilter'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
licensesList
    :: Text -- ^ 'llProject'
    -> LicensesList
licensesList pLlProject_ =
    LicensesList'
    { _llOrderBy = Nothing
    , _llProject = pLlProject_
    , _llFilter = Nothing
    , _llPageToken = Nothing
    , _llMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
llOrderBy :: Lens' LicensesList (Maybe Text)
llOrderBy
  = lens _llOrderBy (\ s a -> s{_llOrderBy = a})

-- | Project ID for this request.
llProject :: Lens' LicensesList Text
llProject
  = lens _llProject (\ s a -> s{_llProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
llFilter :: Lens' LicensesList (Maybe Text)
llFilter = lens _llFilter (\ s a -> s{_llFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
llPageToken :: Lens' LicensesList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
llMaxResults :: Lens' LicensesList Word32
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . _Coerce

instance GoogleRequest LicensesList where
        type Rs LicensesList = LicensesListResponse
        type Scopes LicensesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient LicensesList'{..}
          = go _llProject _llOrderBy _llFilter _llPageToken
              (Just _llMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy LicensesListResource)
                      mempty
