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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance groups that are located in the specified
-- project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsList@.
module Network.Google.Resource.Compute.InstanceGroups.List
    (
    -- * REST Resource
      InstanceGroupsListResource

    -- * Creating a Request
    , instanceGroupsList'
    , InstanceGroupsList'

    -- * Request Lenses
    , iglProject
    , iglZone
    , iglFilter
    , iglPageToken
    , iglMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsList@ method which the
-- 'InstanceGroupsList'' request conforms to.
type InstanceGroupsListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstanceGroupList

-- | Retrieves the list of instance groups that are located in the specified
-- project and zone.
--
-- /See:/ 'instanceGroupsList'' smart constructor.
data InstanceGroupsList' = InstanceGroupsList'
    { _iglProject    :: !Text
    , _iglZone       :: !Text
    , _iglFilter     :: !(Maybe Text)
    , _iglPageToken  :: !(Maybe Text)
    , _iglMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglProject'
--
-- * 'iglZone'
--
-- * 'iglFilter'
--
-- * 'iglPageToken'
--
-- * 'iglMaxResults'
instanceGroupsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsList'
instanceGroupsList' pIglProject_ pIglZone_ =
    InstanceGroupsList'
    { _iglProject = pIglProject_
    , _iglZone = pIglZone_
    , _iglFilter = Nothing
    , _iglPageToken = Nothing
    , _iglMaxResults = 500
    }

-- | The project ID for this request.
iglProject :: Lens' InstanceGroupsList' Text
iglProject
  = lens _iglProject (\ s a -> s{_iglProject = a})

-- | The name of the zone where the instance group is located.
iglZone :: Lens' InstanceGroupsList' Text
iglZone = lens _iglZone (\ s a -> s{_iglZone = a})

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
iglFilter :: Lens' InstanceGroupsList' (Maybe Text)
iglFilter
  = lens _iglFilter (\ s a -> s{_iglFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
iglPageToken :: Lens' InstanceGroupsList' (Maybe Text)
iglPageToken
  = lens _iglPageToken (\ s a -> s{_iglPageToken = a})

-- | Maximum count of results to be returned.
iglMaxResults :: Lens' InstanceGroupsList' Word32
iglMaxResults
  = lens _iglMaxResults
      (\ s a -> s{_iglMaxResults = a})

instance GoogleRequest InstanceGroupsList' where
        type Rs InstanceGroupsList' = InstanceGroupList
        requestClient InstanceGroupsList'{..}
          = go _iglProject _iglZone _iglFilter _iglPageToken
              (Just _iglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsListResource)
                      mempty
