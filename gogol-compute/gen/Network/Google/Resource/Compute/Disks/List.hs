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
-- Module      : Network.Google.Resource.Compute.Disks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of persistent disks contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.list@.
module Network.Google.Resource.Compute.Disks.List
    (
    -- * REST Resource
      DisksListResource

    -- * Creating a Request
    , disksList
    , DisksList

    -- * Request Lenses
    , dlOrderBy
    , dlProject
    , dlZone
    , dlFilter
    , dlPageToken
    , dlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.list@ method which the
-- 'DisksList' request conforms to.
type DisksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] DiskList

-- | Retrieves a list of persistent disks contained within the specified
-- zone.
--
-- /See:/ 'disksList' smart constructor.
data DisksList =
  DisksList'
    { _dlOrderBy    :: !(Maybe Text)
    , _dlProject    :: !Text
    , _dlZone       :: !Text
    , _dlFilter     :: !(Maybe Text)
    , _dlPageToken  :: !(Maybe Text)
    , _dlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlOrderBy'
--
-- * 'dlProject'
--
-- * 'dlZone'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
disksList
    :: Text -- ^ 'dlProject'
    -> Text -- ^ 'dlZone'
    -> DisksList
disksList pDlProject_ pDlZone_ =
  DisksList'
    { _dlOrderBy = Nothing
    , _dlProject = pDlProject_
    , _dlZone = pDlZone_
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
dlOrderBy :: Lens' DisksList (Maybe Text)
dlOrderBy
  = lens _dlOrderBy (\ s a -> s{_dlOrderBy = a})

-- | Project ID for this request.
dlProject :: Lens' DisksList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | The name of the zone for this request.
dlZone :: Lens' DisksList Text
dlZone = lens _dlZone (\ s a -> s{_dlZone = a})

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
dlFilter :: Lens' DisksList (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
dlPageToken :: Lens' DisksList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
dlMaxResults :: Lens' DisksList Word32
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})
      . _Coerce

instance GoogleRequest DisksList where
        type Rs DisksList = DiskList
        type Scopes DisksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DisksList'{..}
          = go _dlProject _dlZone _dlOrderBy _dlFilter
              _dlPageToken
              (Just _dlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksListResource)
                      mempty
