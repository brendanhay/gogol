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
-- Retrieves a list of GlobalForwardingRule resources available to the
-- specified project.
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
    , gfrlOrderBy
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
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ForwardingRuleList

-- | Retrieves a list of GlobalForwardingRule resources available to the
-- specified project.
--
-- /See:/ 'globalForwardingRulesList' smart constructor.
data GlobalForwardingRulesList =
  GlobalForwardingRulesList'
    { _gfrlOrderBy    :: !(Maybe Text)
    , _gfrlProject    :: !Text
    , _gfrlFilter     :: !(Maybe Text)
    , _gfrlPageToken  :: !(Maybe Text)
    , _gfrlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GlobalForwardingRulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrlOrderBy'
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
    { _gfrlOrderBy = Nothing
    , _gfrlProject = pGfrlProject_
    , _gfrlFilter = Nothing
    , _gfrlPageToken = Nothing
    , _gfrlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
gfrlOrderBy :: Lens' GlobalForwardingRulesList (Maybe Text)
gfrlOrderBy
  = lens _gfrlOrderBy (\ s a -> s{_gfrlOrderBy = a})

-- | Project ID for this request.
gfrlProject :: Lens' GlobalForwardingRulesList Text
gfrlProject
  = lens _gfrlProject (\ s a -> s{_gfrlProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
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
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
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
          = go _gfrlProject _gfrlOrderBy _gfrlFilter
              _gfrlPageToken
              (Just _gfrlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesListResource)
                      mempty
