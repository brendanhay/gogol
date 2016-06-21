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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of ForwardingRule resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.list@.
module Network.Google.Resource.Compute.GlobalForwardingRules.List
    (
    -- * REST Resource
      GlobalForwardingRulesListResource

    -- * Creating a Request
    , globalForwardingRulesList
    , GlobalForwardingRulesList

    -- * Request Lenses
    , gfrlProject
    , gfrlFilter
    , gfrlPageToken
    , gfrlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.list@ method which the
-- 'GlobalForwardingRulesList' request conforms to.
type GlobalForwardingRulesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ForwardingRuleList

-- | Retrieves a list of ForwardingRule resources available to the specified
-- project.
--
-- /See:/ 'globalForwardingRulesList' smart constructor.
data GlobalForwardingRulesList = GlobalForwardingRulesList'
    { _gfrlProject    :: !Text
    , _gfrlFilter     :: !(Maybe Text)
    , _gfrlPageToken  :: !(Maybe Text)
    , _gfrlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrlProject'
--
-- * 'gfrlFilter'
--
-- * 'gfrlPageToken'
--
-- * 'gfrlMaxResults'
globalForwardingRulesList
    :: Text -- ^ 'gfrlProject'
    -> GlobalForwardingRulesList
globalForwardingRulesList pGfrlProject_ =
    GlobalForwardingRulesList'
    { _gfrlProject = pGfrlProject_
    , _gfrlFilter = Nothing
    , _gfrlPageToken = Nothing
    , _gfrlMaxResults = 500
    }

-- | Project ID for this request.
gfrlProject :: Lens' GlobalForwardingRulesList Text
gfrlProject
  = lens _gfrlProject (\ s a -> s{_gfrlProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
gfrlFilter :: Lens' GlobalForwardingRulesList (Maybe Text)
gfrlFilter
  = lens _gfrlFilter (\ s a -> s{_gfrlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
gfrlPageToken :: Lens' GlobalForwardingRulesList (Maybe Text)
gfrlPageToken
  = lens _gfrlPageToken
      (\ s a -> s{_gfrlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
gfrlMaxResults :: Lens' GlobalForwardingRulesList Word32
gfrlMaxResults
  = lens _gfrlMaxResults
      (\ s a -> s{_gfrlMaxResults = a})
      . _Coerce

instance GoogleRequest GlobalForwardingRulesList
         where
        type Rs GlobalForwardingRulesList =
             ForwardingRuleList
        type Scopes GlobalForwardingRulesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalForwardingRulesList'{..}
          = go _gfrlProject _gfrlFilter _gfrlPageToken
              (Just _gfrlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesListResource)
                      mempty
