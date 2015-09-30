{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , aggUserIp
    , aggAddress
    , aggKey
    , aggRegion
    , aggOauthToken
    , aggFields
    , aggAlt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'addressesGet'' smart constructor.
data AddressesGet' = AddressesGet'
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggProject     :: !Text
    , _aggUserIp      :: !(Maybe Text)
    , _aggAddress     :: !Text
    , _aggKey         :: !(Maybe Text)
    , _aggRegion      :: !Text
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'aggUserIp'
--
-- * 'aggAddress'
--
-- * 'aggKey'
--
-- * 'aggRegion'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
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
    , _aggUserIp = Nothing
    , _aggAddress = pAggAddress_
    , _aggKey = Nothing
    , _aggRegion = pAggRegion_
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = JSON
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
aggUserIp :: Lens' AddressesGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | Name of the address resource to return.
aggAddress :: Lens' AddressesGet' Text
aggAddress
  = lens _aggAddress (\ s a -> s{_aggAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AddressesGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | The name of the region for this request.
aggRegion :: Lens' AddressesGet' Text
aggRegion
  = lens _aggRegion (\ s a -> s{_aggRegion = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AddressesGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AddressesGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AddressesGet' Alt
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AddressesGet' where
        type Rs AddressesGet' = Address
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesGet'{..}
          = go _aggQuotaUser (Just _aggPrettyPrint) _aggProject
              _aggUserIp
              _aggAddress
              _aggKey
              _aggRegion
              _aggOauthToken
              _aggFields
              (Just _aggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesGetResource)
                      r
                      u
