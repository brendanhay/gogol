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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesList@.
module Network.Google.Resource.Compute.GlobalForwardingRules.List
    (
    -- * REST Resource
      GlobalForwardingRulesListResource

    -- * Creating a Request
    , globalForwardingRulesList'
    , GlobalForwardingRulesList'

    -- * Request Lenses
    , gfrlProject
    , gfrlFilter
    , gfrlPageToken
    , gfrlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesList@ method which the
-- 'GlobalForwardingRulesList'' request conforms to.
type GlobalForwardingRulesListResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ForwardingRuleList

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ 'globalForwardingRulesList'' smart constructor.
data GlobalForwardingRulesList' = GlobalForwardingRulesList'
    { _gfrlProject    :: !Text
    , _gfrlFilter     :: !(Maybe Text)
    , _gfrlPageToken  :: !(Maybe Text)
    , _gfrlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesList'' with the minimum fields required to make a request.
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
globalForwardingRulesList'
    :: Text -- ^ 'project'
    -> GlobalForwardingRulesList'
globalForwardingRulesList' pGfrlProject_ =
    GlobalForwardingRulesList'
    { _gfrlProject = pGfrlProject_
    , _gfrlFilter = Nothing
    , _gfrlPageToken = Nothing
    , _gfrlMaxResults = 500
    }

-- | Name of the project scoping this request.
gfrlProject :: Lens' GlobalForwardingRulesList' Text
gfrlProject
  = lens _gfrlProject (\ s a -> s{_gfrlProject = a})

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
gfrlFilter :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlFilter
  = lens _gfrlFilter (\ s a -> s{_gfrlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
gfrlPageToken :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlPageToken
  = lens _gfrlPageToken
      (\ s a -> s{_gfrlPageToken = a})

-- | Maximum count of results to be returned.
gfrlMaxResults :: Lens' GlobalForwardingRulesList' Word32
gfrlMaxResults
  = lens _gfrlMaxResults
      (\ s a -> s{_gfrlMaxResults = a})

instance GoogleRequest GlobalForwardingRulesList'
         where
        type Rs GlobalForwardingRulesList' =
             ForwardingRuleList
        requestClient GlobalForwardingRulesList'{..}
          = go _gfrlProject _gfrlFilter _gfrlPageToken
              (Just _gfrlMaxResults)
              (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesListResource)
                      mempty
