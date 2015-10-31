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
    , dtlProject
    , dtlZone
    , dtlFilter
    , dtlPageToken
    , dtlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DiskTypeList

-- | Retrieves a list of disk types available to the specified project.
--
-- /See:/ 'diskTypesList' smart constructor.
data DiskTypesList = DiskTypesList
    { _dtlProject    :: !Text
    , _dtlZone       :: !Text
    , _dtlFilter     :: !(Maybe Text)
    , _dtlPageToken  :: !(Maybe Text)
    , _dtlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    DiskTypesList
    { _dtlProject = pDtlProject_
    , _dtlZone = pDtlZone_
    , _dtlFilter = Nothing
    , _dtlPageToken = Nothing
    , _dtlMaxResults = 500
    }

-- | Project ID for this request.
dtlProject :: Lens' DiskTypesList Text
dtlProject
  = lens _dtlProject (\ s a -> s{_dtlProject = a})

-- | The name of the zone for this request.
dtlZone :: Lens' DiskTypesList Text
dtlZone = lens _dtlZone (\ s a -> s{_dtlZone = a})

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
dtlFilter :: Lens' DiskTypesList (Maybe Text)
dtlFilter
  = lens _dtlFilter (\ s a -> s{_dtlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
dtlPageToken :: Lens' DiskTypesList (Maybe Text)
dtlPageToken
  = lens _dtlPageToken (\ s a -> s{_dtlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
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
        requestClient DiskTypesList{..}
          = go _dtlProject _dtlZone _dtlFilter _dtlPageToken
              (Just _dtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DiskTypesListResource)
                      mempty
