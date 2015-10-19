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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all operations grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalOperationsAggregatedList@.
module Network.Google.Resource.Compute.GlobalOperations.AggregatedList
    (
    -- * REST Resource
      GlobalOperationsAggregatedListResource

    -- * Creating a Request
    , globalOperationsAggregatedList'
    , GlobalOperationsAggregatedList'

    -- * Request Lenses
    , goalProject
    , goalFilter
    , goalPageToken
    , goalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsAggregatedList@ method which the
-- 'GlobalOperationsAggregatedList'' request conforms to.
type GlobalOperationsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "operations" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] OperationAggregatedList

-- | Retrieves the list of all operations grouped by scope.
--
-- /See:/ 'globalOperationsAggregatedList'' smart constructor.
data GlobalOperationsAggregatedList' = GlobalOperationsAggregatedList'
    { _goalProject    :: !Text
    , _goalFilter     :: !(Maybe Text)
    , _goalPageToken  :: !(Maybe Text)
    , _goalMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goalProject'
--
-- * 'goalFilter'
--
-- * 'goalPageToken'
--
-- * 'goalMaxResults'
globalOperationsAggregatedList'
    :: Text -- ^ 'project'
    -> GlobalOperationsAggregatedList'
globalOperationsAggregatedList' pGoalProject_ =
    GlobalOperationsAggregatedList'
    { _goalProject = pGoalProject_
    , _goalFilter = Nothing
    , _goalPageToken = Nothing
    , _goalMaxResults = 500
    }

-- | Project ID for this request.
goalProject :: Lens' GlobalOperationsAggregatedList' Text
goalProject
  = lens _goalProject (\ s a -> s{_goalProject = a})

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
goalFilter :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalFilter
  = lens _goalFilter (\ s a -> s{_goalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
goalPageToken :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalPageToken
  = lens _goalPageToken
      (\ s a -> s{_goalPageToken = a})

-- | Maximum count of results to be returned.
goalMaxResults :: Lens' GlobalOperationsAggregatedList' Word32
goalMaxResults
  = lens _goalMaxResults
      (\ s a -> s{_goalMaxResults = a})

instance GoogleRequest
         GlobalOperationsAggregatedList' where
        type Rs GlobalOperationsAggregatedList' =
             OperationAggregatedList
        requestClient GlobalOperationsAggregatedList'{..}
          = go _goalProject _goalFilter _goalPageToken
              (Just _goalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalOperationsAggregatedListResource)
                      mempty
