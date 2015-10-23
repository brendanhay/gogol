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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of disk type resources available to the specified
-- project.
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
                       QueryParam "maxResults" (JSONText Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DiskTypeList

-- | Retrieves the list of disk type resources available to the specified
-- project.
--
-- /See:/ 'diskTypesList' smart constructor.
data DiskTypesList = DiskTypesList
    { _dtlProject    :: !Text
    , _dtlZone       :: !Text
    , _dtlFilter     :: !(Maybe Text)
    , _dtlPageToken  :: !(Maybe Text)
    , _dtlMaxResults :: !(JSONText Word32)
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
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
dtlFilter :: Lens' DiskTypesList (Maybe Text)
dtlFilter
  = lens _dtlFilter (\ s a -> s{_dtlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dtlPageToken :: Lens' DiskTypesList (Maybe Text)
dtlPageToken
  = lens _dtlPageToken (\ s a -> s{_dtlPageToken = a})

-- | Maximum count of results to be returned.
dtlMaxResults :: Lens' DiskTypesList Word32
dtlMaxResults
  = lens _dtlMaxResults
      (\ s a -> s{_dtlMaxResults = a})
      . _Coerce

instance GoogleRequest DiskTypesList where
        type Rs DiskTypesList = DiskTypeList
        requestClient DiskTypesList{..}
          = go _dtlProject _dtlZone _dtlFilter _dtlPageToken
              (Just _dtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DiskTypesListResource)
                      mempty
