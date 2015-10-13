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
-- Module      : Network.Google.Resource.Compute.TargetInstances.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetInstance resources available to the
-- specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesList@.
module Network.Google.Resource.Compute.TargetInstances.List
    (
    -- * REST Resource
      TargetInstancesListResource

    -- * Creating a Request
    , targetInstancesList'
    , TargetInstancesList'

    -- * Request Lenses
    , tilProject
    , tilZone
    , tilFilter
    , tilPageToken
    , tilMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesList@ method which the
-- 'TargetInstancesList'' request conforms to.
type TargetInstancesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetInstanceList

-- | Retrieves the list of TargetInstance resources available to the
-- specified project and zone.
--
-- /See:/ 'targetInstancesList'' smart constructor.
data TargetInstancesList' = TargetInstancesList'
    { _tilProject    :: !Text
    , _tilZone       :: !Text
    , _tilFilter     :: !(Maybe Text)
    , _tilPageToken  :: !(Maybe Text)
    , _tilMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tilProject'
--
-- * 'tilZone'
--
-- * 'tilFilter'
--
-- * 'tilPageToken'
--
-- * 'tilMaxResults'
targetInstancesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> TargetInstancesList'
targetInstancesList' pTilProject_ pTilZone_ =
    TargetInstancesList'
    { _tilProject = pTilProject_
    , _tilZone = pTilZone_
    , _tilFilter = Nothing
    , _tilPageToken = Nothing
    , _tilMaxResults = 500
    }

-- | Name of the project scoping this request.
tilProject :: Lens' TargetInstancesList' Text
tilProject
  = lens _tilProject (\ s a -> s{_tilProject = a})

-- | Name of the zone scoping this request.
tilZone :: Lens' TargetInstancesList' Text
tilZone = lens _tilZone (\ s a -> s{_tilZone = a})

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
tilFilter :: Lens' TargetInstancesList' (Maybe Text)
tilFilter
  = lens _tilFilter (\ s a -> s{_tilFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tilPageToken :: Lens' TargetInstancesList' (Maybe Text)
tilPageToken
  = lens _tilPageToken (\ s a -> s{_tilPageToken = a})

-- | Maximum count of results to be returned.
tilMaxResults :: Lens' TargetInstancesList' Word32
tilMaxResults
  = lens _tilMaxResults
      (\ s a -> s{_tilMaxResults = a})

instance GoogleRequest TargetInstancesList' where
        type Rs TargetInstancesList' = TargetInstanceList
        requestClient TargetInstancesList'{..}
          = go _tilProject _tilZone _tilFilter _tilPageToken
              (Just _tilMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesListResource)
                      mempty
