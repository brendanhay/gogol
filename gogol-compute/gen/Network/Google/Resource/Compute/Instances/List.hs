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
-- Module      : Network.Google.Resource.Compute.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instances contained within the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.list@.
module Network.Google.Resource.Compute.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList
    , InstancesList

    -- * Request Lenses
    , ilProject
    , ilZone
    , ilFilter
    , ilPageToken
    , ilMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.list@ method which the
-- 'InstancesList' request conforms to.
type InstancesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] InstanceList

-- | Retrieves the list of instances contained within the specified zone.
--
-- /See:/ 'instancesList' smart constructor.
data InstancesList = InstancesList
    { _ilProject    :: !Text
    , _ilZone       :: !Text
    , _ilFilter     :: !(Maybe Text)
    , _ilPageToken  :: !(Maybe Text)
    , _ilMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilProject'
--
-- * 'ilZone'
--
-- * 'ilFilter'
--
-- * 'ilPageToken'
--
-- * 'ilMaxResults'
instancesList
    :: Text -- ^ 'ilProject'
    -> Text -- ^ 'ilZone'
    -> InstancesList
instancesList pIlProject_ pIlZone_ =
    InstancesList
    { _ilProject = pIlProject_
    , _ilZone = pIlZone_
    , _ilFilter = Nothing
    , _ilPageToken = Nothing
    , _ilMaxResults = 500
    }

-- | Project ID for this request.
ilProject :: Lens' InstancesList Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

-- | The name of the zone for this request.
ilZone :: Lens' InstancesList Text
ilZone = lens _ilZone (\ s a -> s{_ilZone = a})

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
ilFilter :: Lens' InstancesList (Maybe Text)
ilFilter = lens _ilFilter (\ s a -> s{_ilFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ilPageToken :: Lens' InstancesList (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
ilMaxResults :: Lens' InstancesList Word32
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})
      . _Coerce

instance GoogleRequest InstancesList where
        type Rs InstancesList = InstanceList
        requestClient InstancesList{..}
          = go _ilProject _ilZone _ilFilter _ilPageToken
              (Just _ilMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesListResource)
                      mempty
