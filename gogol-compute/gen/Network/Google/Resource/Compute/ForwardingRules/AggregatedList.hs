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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of forwarding rules grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.aggregatedList@.
module Network.Google.Resource.Compute.ForwardingRules.AggregatedList
    (
    -- * REST Resource
      ForwardingRulesAggregatedListResource

    -- * Creating a Request
    , forwardingRulesAggregatedList
    , ForwardingRulesAggregatedList

    -- * Request Lenses
    , fralProject
    , fralFilter
    , fralPageToken
    , fralMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.aggregatedList@ method which the
-- 'ForwardingRulesAggregatedList' request conforms to.
type ForwardingRulesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "forwardingRules" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ForwardingRuleAggregatedList

-- | Retrieves the list of forwarding rules grouped by scope.
--
-- /See:/ 'forwardingRulesAggregatedList' smart constructor.
data ForwardingRulesAggregatedList = ForwardingRulesAggregatedList
    { _fralProject    :: !Text
    , _fralFilter     :: !(Maybe Text)
    , _fralPageToken  :: !(Maybe Text)
    , _fralMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fralProject'
--
-- * 'fralFilter'
--
-- * 'fralPageToken'
--
-- * 'fralMaxResults'
forwardingRulesAggregatedList
    :: Text -- ^ 'fralProject'
    -> ForwardingRulesAggregatedList
forwardingRulesAggregatedList pFralProject_ =
    ForwardingRulesAggregatedList
    { _fralProject = pFralProject_
    , _fralFilter = Nothing
    , _fralPageToken = Nothing
    , _fralMaxResults = 500
    }

-- | Name of the project scoping this request.
fralProject :: Lens' ForwardingRulesAggregatedList Text
fralProject
  = lens _fralProject (\ s a -> s{_fralProject = a})

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
fralFilter :: Lens' ForwardingRulesAggregatedList (Maybe Text)
fralFilter
  = lens _fralFilter (\ s a -> s{_fralFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
fralPageToken :: Lens' ForwardingRulesAggregatedList (Maybe Text)
fralPageToken
  = lens _fralPageToken
      (\ s a -> s{_fralPageToken = a})

-- | Maximum count of results to be returned.
fralMaxResults :: Lens' ForwardingRulesAggregatedList Word32
fralMaxResults
  = lens _fralMaxResults
      (\ s a -> s{_fralMaxResults = a})
      . _Coerce

instance GoogleRequest ForwardingRulesAggregatedList
         where
        type Rs ForwardingRulesAggregatedList =
             ForwardingRuleAggregatedList
        requestClient ForwardingRulesAggregatedList{..}
          = go _fralProject _fralFilter _fralPageToken
              (Just _fralMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ForwardingRulesAggregatedListResource)
                      mempty
