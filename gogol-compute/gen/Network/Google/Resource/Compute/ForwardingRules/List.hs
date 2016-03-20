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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of ForwardingRule resources available to the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.list@.
module Network.Google.Resource.Compute.ForwardingRules.List
    (
    -- * REST Resource
      ForwardingRulesListResource

    -- * Creating a Request
    , forwardingRulesList
    , ForwardingRulesList

    -- * Request Lenses
    , frlProject
    , frlFilter
    , frlRegion
    , frlPageToken
    , frlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.list@ method which the
-- 'ForwardingRulesList' request conforms to.
type ForwardingRulesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ForwardingRuleList

-- | Retrieves a list of ForwardingRule resources available to the specified
-- project and region.
--
-- /See:/ 'forwardingRulesList' smart constructor.
data ForwardingRulesList = ForwardingRulesList
    { _frlProject    :: !Text
    , _frlFilter     :: !(Maybe Text)
    , _frlRegion     :: !Text
    , _frlPageToken  :: !(Maybe Text)
    , _frlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frlProject'
--
-- * 'frlFilter'
--
-- * 'frlRegion'
--
-- * 'frlPageToken'
--
-- * 'frlMaxResults'
forwardingRulesList
    :: Text -- ^ 'frlProject'
    -> Text -- ^ 'frlRegion'
    -> ForwardingRulesList
forwardingRulesList pFrlProject_ pFrlRegion_ =
    ForwardingRulesList
    { _frlProject = pFrlProject_
    , _frlFilter = Nothing
    , _frlRegion = pFrlRegion_
    , _frlPageToken = Nothing
    , _frlMaxResults = 500
    }

-- | Project ID for this request.
frlProject :: Lens' ForwardingRulesList Text
frlProject
  = lens _frlProject (\ s a -> s{_frlProject = a})

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
frlFilter :: Lens' ForwardingRulesList (Maybe Text)
frlFilter
  = lens _frlFilter (\ s a -> s{_frlFilter = a})

-- | Name of the region scoping this request.
frlRegion :: Lens' ForwardingRulesList Text
frlRegion
  = lens _frlRegion (\ s a -> s{_frlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
frlPageToken :: Lens' ForwardingRulesList (Maybe Text)
frlPageToken
  = lens _frlPageToken (\ s a -> s{_frlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
frlMaxResults :: Lens' ForwardingRulesList Word32
frlMaxResults
  = lens _frlMaxResults
      (\ s a -> s{_frlMaxResults = a})
      . _Coerce

instance GoogleRequest ForwardingRulesList where
        type Rs ForwardingRulesList = ForwardingRuleList
        requestClient ForwardingRulesList{..}
          = go _frlProject _frlRegion _frlFilter _frlPageToken
              (Just _frlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesListResource)
                      mempty
