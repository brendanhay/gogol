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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of global address resources.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.list@.
module Network.Google.Resource.Compute.GlobalAddresses.List
    (
    -- * REST Resource
      GlobalAddressesListResource

    -- * Creating a Request
    , globalAddressesList
    , GlobalAddressesList

    -- * Request Lenses
    , galProject
    , galFilter
    , galPageToken
    , galMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalAddresses.list@ method which the
-- 'GlobalAddressesList' request conforms to.
type GlobalAddressesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AddressList

-- | Retrieves the list of global address resources.
--
-- /See:/ 'globalAddressesList' smart constructor.
data GlobalAddressesList = GlobalAddressesList
    { _galProject    :: !Text
    , _galFilter     :: !(Maybe Text)
    , _galPageToken  :: !(Maybe Text)
    , _galMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galProject'
--
-- * 'galFilter'
--
-- * 'galPageToken'
--
-- * 'galMaxResults'
globalAddressesList
    :: Text -- ^ 'galProject'
    -> GlobalAddressesList
globalAddressesList pGalProject_ =
    GlobalAddressesList
    { _galProject = pGalProject_
    , _galFilter = Nothing
    , _galPageToken = Nothing
    , _galMaxResults = 500
    }

-- | Project ID for this request.
galProject :: Lens' GlobalAddressesList Text
galProject
  = lens _galProject (\ s a -> s{_galProject = a})

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
galFilter :: Lens' GlobalAddressesList (Maybe Text)
galFilter
  = lens _galFilter (\ s a -> s{_galFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
galPageToken :: Lens' GlobalAddressesList (Maybe Text)
galPageToken
  = lens _galPageToken (\ s a -> s{_galPageToken = a})

-- | Maximum count of results to be returned.
galMaxResults :: Lens' GlobalAddressesList Word32
galMaxResults
  = lens _galMaxResults
      (\ s a -> s{_galMaxResults = a})
      . _Coerce

instance GoogleRequest GlobalAddressesList where
        type Rs GlobalAddressesList = AddressList
        requestClient GlobalAddressesList{..}
          = go _galProject _galFilter _galPageToken
              (Just _galMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesListResource)
                      mempty
