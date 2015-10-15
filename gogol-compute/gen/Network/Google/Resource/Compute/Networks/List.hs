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
-- Module      : Network.Google.Resource.Compute.Networks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of network resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksList@.
module Network.Google.Resource.Compute.Networks.List
    (
    -- * REST Resource
      NetworksListResource

    -- * Creating a Request
    , networksList'
    , NetworksList'

    -- * Request Lenses
    , nlProject
    , nlFilter
    , nlPageToken
    , nlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksList@ method which the
-- 'NetworksList'' request conforms to.
type NetworksListResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] NetworkList

-- | Retrieves the list of network resources available to the specified
-- project.
--
-- /See:/ 'networksList'' smart constructor.
data NetworksList' = NetworksList'
    { _nlProject    :: !Text
    , _nlFilter     :: !(Maybe Text)
    , _nlPageToken  :: !(Maybe Text)
    , _nlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlProject'
--
-- * 'nlFilter'
--
-- * 'nlPageToken'
--
-- * 'nlMaxResults'
networksList'
    :: Text -- ^ 'project'
    -> NetworksList'
networksList' pNlProject_ =
    NetworksList'
    { _nlProject = pNlProject_
    , _nlFilter = Nothing
    , _nlPageToken = Nothing
    , _nlMaxResults = 500
    }

-- | Project ID for this request.
nlProject :: Lens' NetworksList' Text
nlProject
  = lens _nlProject (\ s a -> s{_nlProject = a})

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
nlFilter :: Lens' NetworksList' (Maybe Text)
nlFilter = lens _nlFilter (\ s a -> s{_nlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
nlPageToken :: Lens' NetworksList' (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | Maximum count of results to be returned.
nlMaxResults :: Lens' NetworksList' Word32
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})

instance GoogleRequest NetworksList' where
        type Rs NetworksList' = NetworkList
        requestClient NetworksList'{..}
          = go _nlProject _nlFilter _nlPageToken
              (Just _nlMaxResults)
              (Just AltJSON)
              compute
          where go
                  = buildClient (Proxy :: Proxy NetworksListResource)
                      mempty
