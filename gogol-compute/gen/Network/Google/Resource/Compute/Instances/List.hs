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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.list@.
module Network.Google.Resource.Compute.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList'
    , InstancesList'

    -- * Request Lenses
    , illProject
    , illZone
    , illFilter
    , illPageToken
    , illMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.list@ method which the
-- 'InstancesList'' request conforms to.
type InstancesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] InstanceList

-- | Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ 'instancesList'' smart constructor.
data InstancesList' = InstancesList'
    { _illProject    :: !Text
    , _illZone       :: !Text
    , _illFilter     :: !(Maybe Text)
    , _illPageToken  :: !(Maybe Text)
    , _illMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illProject'
--
-- * 'illZone'
--
-- * 'illFilter'
--
-- * 'illPageToken'
--
-- * 'illMaxResults'
instancesList'
    :: Text -- ^ 'illProject'
    -> Text -- ^ 'illZone'
    -> InstancesList'
instancesList' pIllProject_ pIllZone_ =
    InstancesList'
    { _illProject = pIllProject_
    , _illZone = pIllZone_
    , _illFilter = Nothing
    , _illPageToken = Nothing
    , _illMaxResults = 500
    }

-- | Project ID for this request.
illProject :: Lens' InstancesList' Text
illProject
  = lens _illProject (\ s a -> s{_illProject = a})

-- | The name of the zone for this request.
illZone :: Lens' InstancesList' Text
illZone = lens _illZone (\ s a -> s{_illZone = a})

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
illFilter :: Lens' InstancesList' (Maybe Text)
illFilter
  = lens _illFilter (\ s a -> s{_illFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
illPageToken :: Lens' InstancesList' (Maybe Text)
illPageToken
  = lens _illPageToken (\ s a -> s{_illPageToken = a})

-- | Maximum count of results to be returned.
illMaxResults :: Lens' InstancesList' Word32
illMaxResults
  = lens _illMaxResults
      (\ s a -> s{_illMaxResults = a})

instance GoogleRequest InstancesList' where
        type Rs InstancesList' = InstanceList
        requestClient InstancesList'{..}
          = go _illProject _illZone _illFilter _illPageToken
              (Just _illMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesListResource)
                      mempty
