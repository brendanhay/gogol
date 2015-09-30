{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Compute.Addresses.Get
    (
    -- * REST Resource
      AddressesGetAPI

    -- * Creating a Request
    , addressesGet
    , AddressesGet

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agProject
    , agUserIp
    , agAddress
    , agKey
    , agRegion
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesGet@ which the
-- 'AddressesGet' request conforms to.
type AddressesGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             Capture "address" Text :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'addressesGet' smart constructor.
data AddressesGet = AddressesGet
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agProject     :: !Text
    , _agUserIp      :: !(Maybe Text)
    , _agAddress     :: !Text
    , _agKey         :: !(Maybe Text)
    , _agRegion      :: !Text
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agProject'
--
-- * 'agUserIp'
--
-- * 'agAddress'
--
-- * 'agKey'
--
-- * 'agRegion'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
addressesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesGet
addressesGet pAgProject_ pAgAddress_ pAgRegion_ =
    AddressesGet
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agProject = pAgProject_
    , _agUserIp = Nothing
    , _agAddress = pAgAddress_
    , _agKey = Nothing
    , _agRegion = pAgRegion_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AddressesGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AddressesGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | Project ID for this request.
agProject :: Lens' AddressesGet' Text
agProject
  = lens _agProject (\ s a -> s{_agProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AddressesGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | Name of the address resource to return.
agAddress :: Lens' AddressesGet' Text
agAddress
  = lens _agAddress (\ s a -> s{_agAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AddressesGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The name of the region for this request.
agRegion :: Lens' AddressesGet' Text
agRegion = lens _agRegion (\ s a -> s{_agRegion = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AddressesGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AddressesGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AddressesGet' Text
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AddressesGet' where
        type Rs AddressesGet' = Address
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesGet{..}
          = go _agQuotaUser _agPrettyPrint _agProject _agUserIp
              _agAddress
              _agKey
              _agRegion
              _agOauthToken
              _agFields
              _agAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AddressesGetAPI) r
                      u
