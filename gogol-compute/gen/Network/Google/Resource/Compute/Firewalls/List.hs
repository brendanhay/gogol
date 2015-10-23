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
-- Module      : Network.Google.Resource.Compute.Firewalls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of firewall resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.list@.
module Network.Google.Resource.Compute.Firewalls.List
    (
    -- * REST Resource
      FirewallsListResource

    -- * Creating a Request
    , firewallsList
    , FirewallsList

    -- * Request Lenses
    , flProject
    , flFilter
    , flPageToken
    , flMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.firewalls.list@ method which the
-- 'FirewallsList' request conforms to.
type FirewallsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "alt" AltJSON :> Get '[JSON] FirewallList

-- | Retrieves the list of firewall resources available to the specified
-- project.
--
-- /See:/ 'firewallsList' smart constructor.
data FirewallsList = FirewallsList
    { _flProject    :: !Text
    , _flFilter     :: !(Maybe Text)
    , _flPageToken  :: !(Maybe Text)
    , _flMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flProject'
--
-- * 'flFilter'
--
-- * 'flPageToken'
--
-- * 'flMaxResults'
firewallsList
    :: Text -- ^ 'flProject'
    -> FirewallsList
firewallsList pFlProject_ =
    FirewallsList
    { _flProject = pFlProject_
    , _flFilter = Nothing
    , _flPageToken = Nothing
    , _flMaxResults = 500
    }

-- | Project ID for this request.
flProject :: Lens' FirewallsList Text
flProject
  = lens _flProject (\ s a -> s{_flProject = a})

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
flFilter :: Lens' FirewallsList (Maybe Text)
flFilter = lens _flFilter (\ s a -> s{_flFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
flPageToken :: Lens' FirewallsList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | Maximum count of results to be returned.
flMaxResults :: Lens' FirewallsList Word32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

instance GoogleRequest FirewallsList where
        type Rs FirewallsList = FirewallList
        requestClient FirewallsList{..}
          = go _flProject _flFilter _flPageToken
              (Just _flMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy FirewallsListResource)
                      mempty
