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
-- Module      : Network.Google.Resource.Compute.Addresses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesGet@.
module Network.Google.Resource.Compute.Addresses.Get
    (
    -- * REST Resource
      AddressesGetResource

    -- * Creating a Request
    , addressesGet'
    , AddressesGet'

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggProject
    , aggUserIP
    , aggAddress
    , aggKey
    , aggRegion
    , aggOAuthToken
    , aggFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesGet@ which the
-- 'AddressesGet'' request conforms to.
type AddressesGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             Capture "address" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'addressesGet'' smart constructor.
data AddressesGet' = AddressesGet'
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggProject     :: !Text
    , _aggUserIP      :: !(Maybe Text)
    , _aggAddress     :: !Text
    , _aggKey         :: !(Maybe AuthKey)
    , _aggRegion      :: !Text
    , _aggOAuthToken  :: !(Maybe OAuthToken)
    , _aggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggProject'
--
-- * 'aggUserIP'
--
-- * 'aggAddress'
--
-- * 'aggKey'
--
-- * 'aggRegion'
--
-- * 'aggOAuthToken'
--
-- * 'aggFields'
addressesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesGet'
addressesGet' pAggProject_ pAggAddress_ pAggRegion_ =
    AddressesGet'
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggProject = pAggProject_
    , _aggUserIP = Nothing
    , _aggAddress = pAggAddress_
    , _aggKey = Nothing
    , _aggRegion = pAggRegion_
    , _aggOAuthToken = Nothing
    , _aggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AddressesGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AddressesGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | Project ID for this request.
aggProject :: Lens' AddressesGet' Text
aggProject
  = lens _aggProject (\ s a -> s{_aggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIP :: Lens' AddressesGet' (Maybe Text)
aggUserIP
  = lens _aggUserIP (\ s a -> s{_aggUserIP = a})

-- | Name of the address resource to return.
aggAddress :: Lens' AddressesGet' Text
aggAddress
  = lens _aggAddress (\ s a -> s{_aggAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AddressesGet' (Maybe AuthKey)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | The name of the region for this request.
aggRegion :: Lens' AddressesGet' Text
aggRegion
  = lens _aggRegion (\ s a -> s{_aggRegion = a})

-- | OAuth 2.0 token for the current user.
aggOAuthToken :: Lens' AddressesGet' (Maybe OAuthToken)
aggOAuthToken
  = lens _aggOAuthToken
      (\ s a -> s{_aggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AddressesGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

instance GoogleAuth AddressesGet' where
        authKey = aggKey . _Just
        authToken = aggOAuthToken . _Just

instance GoogleRequest AddressesGet' where
        type Rs AddressesGet' = Address
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesGet'{..}
          = go _aggProject _aggRegion _aggAddress _aggQuotaUser
              (Just _aggPrettyPrint)
              _aggUserIP
              _aggFields
              _aggKey
              _aggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesGetResource)
                      r
                      u
