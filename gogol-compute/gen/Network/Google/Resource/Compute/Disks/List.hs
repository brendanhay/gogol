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
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DiskList

-- | Retrieves a list of persistent disks contained within the specified
-- zone.
--
-- /See:/ 'disksList' smart constructor.
data DisksList = DisksList'
    { _dlProject    :: !Text
    , _dlZone       :: !Text
    , _dlFilter     :: !(Maybe Text)
    , _dlPageToken  :: !(Maybe Text)
    , _dlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _dlProject = pDlProject_
    , _dlZone = pDlZone_
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlMaxResults = 500
    }

-- | Project ID for this request.
dlProject :: Lens' DisksList Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | The name of the zone for this request.
dlZone :: Lens' DisksList Text
dlZone = lens _dlZone (\ s a -> s{_dlZone = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
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
-- in subsequent list requests.
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
          = go _dlProject _dlZone _dlFilter _dlPageToken
              (Just _dlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksListResource)
                      mempty
