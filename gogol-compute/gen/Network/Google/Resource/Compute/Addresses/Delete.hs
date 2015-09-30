{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Addresses.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesDelete@.
module Compute.Addresses.Delete
    (
    -- * REST Resource
      AddressesDeleteAPI

    -- * Creating a Request
    , addressesDelete
    , AddressesDelete

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adProject
    , adUserIp
    , adAddress
    , adKey
    , adRegion
    , adOauthToken
    , adFields
    , adAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesDelete@ which the
-- 'AddressesDelete' request conforms to.
type AddressesDeleteAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             Capture "address" Text :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'addressesDelete' smart constructor.
data AddressesDelete = AddressesDelete
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adProject     :: !Text
    , _adUserIp      :: !(Maybe Text)
    , _adAddress     :: !Text
    , _adKey         :: !(Maybe Text)
    , _adRegion      :: !Text
    , _adOauthToken  :: !(Maybe Text)
    , _adFields      :: !(Maybe Text)
    , _adAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adProject'
--
-- * 'adUserIp'
--
-- * 'adAddress'
--
-- * 'adKey'
--
-- * 'adRegion'
--
-- * 'adOauthToken'
--
-- * 'adFields'
--
-- * 'adAlt'
addressesDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesDelete
addressesDelete pAdProject_ pAdAddress_ pAdRegion_ =
    AddressesDelete
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adProject = pAdProject_
    , _adUserIp = Nothing
    , _adAddress = pAdAddress_
    , _adKey = Nothing
    , _adRegion = pAdRegion_
    , _adOauthToken = Nothing
    , _adFields = Nothing
    , _adAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AddressesDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AddressesDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | Project ID for this request.
adProject :: Lens' AddressesDelete' Text
adProject
  = lens _adProject (\ s a -> s{_adProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIp :: Lens' AddressesDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | Name of the address resource to delete.
adAddress :: Lens' AddressesDelete' Text
adAddress
  = lens _adAddress (\ s a -> s{_adAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AddressesDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | The name of the region for this request.
adRegion :: Lens' AddressesDelete' Text
adRegion = lens _adRegion (\ s a -> s{_adRegion = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' AddressesDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AddressesDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' AddressesDelete' Text
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest AddressesDelete' where
        type Rs AddressesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesDelete{..}
          = go _adQuotaUser _adPrettyPrint _adProject _adUserIp
              _adAddress
              _adKey
              _adRegion
              _adOauthToken
              _adFields
              _adAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AddressesDeleteAPI)
                      r
                      u
