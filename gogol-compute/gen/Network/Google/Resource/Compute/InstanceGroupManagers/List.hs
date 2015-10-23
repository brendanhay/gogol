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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.list@.
module Network.Google.Resource.Compute.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListResource

    -- * Creating a Request
    , instanceGroupManagersList
    , InstanceGroupManagersList

    -- * Request Lenses
    , igmlProject
    , igmlZone
    , igmlFilter
    , igmlPageToken
    , igmlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.list@ method which the
-- 'InstanceGroupManagersList' request conforms to.
type InstanceGroupManagersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] InstanceGroupManagerList

-- | Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ 'instanceGroupManagersList' smart constructor.
data InstanceGroupManagersList = InstanceGroupManagersList
    { _igmlProject    :: !Text
    , _igmlZone       :: !Text
    , _igmlFilter     :: !(Maybe Text)
    , _igmlPageToken  :: !(Maybe Text)
    , _igmlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlProject'
--
-- * 'igmlZone'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlMaxResults'
instanceGroupManagersList
    :: Text -- ^ 'igmlProject'
    -> Text -- ^ 'igmlZone'
    -> InstanceGroupManagersList
instanceGroupManagersList pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList
    { _igmlProject = pIgmlProject_
    , _igmlZone = pIgmlZone_
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlMaxResults = 500
    }

-- | The project ID for this request.
igmlProject :: Lens' InstanceGroupManagersList Text
igmlProject
  = lens _igmlProject (\ s a -> s{_igmlProject = a})

-- | The name of the zone where the managed instance group is located.
igmlZone :: Lens' InstanceGroupManagersList Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

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
igmlFilter :: Lens' InstanceGroupManagersList (Maybe Text)
igmlFilter
  = lens _igmlFilter (\ s a -> s{_igmlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igmlPageToken :: Lens' InstanceGroupManagersList (Maybe Text)
igmlPageToken
  = lens _igmlPageToken
      (\ s a -> s{_igmlPageToken = a})

-- | Maximum count of results to be returned.
igmlMaxResults :: Lens' InstanceGroupManagersList Word32
igmlMaxResults
  = lens _igmlMaxResults
      (\ s a -> s{_igmlMaxResults = a})

instance GoogleRequest InstanceGroupManagersList
         where
        type Rs InstanceGroupManagersList =
             InstanceGroupManagerList
        requestClient InstanceGroupManagersList{..}
          = go _igmlProject _igmlZone _igmlFilter
              _igmlPageToken
              (Just _igmlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersListResource)
                      mempty
