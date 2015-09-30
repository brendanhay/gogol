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
module Network.Google.Resource.Compute.Addresses.Delete
    (
    -- * REST Resource
      AddressesDeleteResource

    -- * Creating a Request
    , addressesDelete'
    , AddressesDelete'

    -- * Request Lenses
    , addQuotaUser
    , addPrettyPrint
    , addProject
    , addUserIp
    , addAddress
    , addKey
    , addRegion
    , addOauthToken
    , addFields
    , addAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesDelete@ which the
-- 'AddressesDelete'' request conforms to.
type AddressesDeleteResource =
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
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'addressesDelete'' smart constructor.
data AddressesDelete' = AddressesDelete'
    { _addQuotaUser   :: !(Maybe Text)
    , _addPrettyPrint :: !Bool
    , _addProject     :: !Text
    , _addUserIp      :: !(Maybe Text)
    , _addAddress     :: !Text
    , _addKey         :: !(Maybe Text)
    , _addRegion      :: !Text
    , _addOauthToken  :: !(Maybe Text)
    , _addFields      :: !(Maybe Text)
    , _addAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addQuotaUser'
--
-- * 'addPrettyPrint'
--
-- * 'addProject'
--
-- * 'addUserIp'
--
-- * 'addAddress'
--
-- * 'addKey'
--
-- * 'addRegion'
--
-- * 'addOauthToken'
--
-- * 'addFields'
--
-- * 'addAlt'
addressesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesDelete'
addressesDelete' pAddProject_ pAddAddress_ pAddRegion_ =
    AddressesDelete'
    { _addQuotaUser = Nothing
    , _addPrettyPrint = True
    , _addProject = pAddProject_
    , _addUserIp = Nothing
    , _addAddress = pAddAddress_
    , _addKey = Nothing
    , _addRegion = pAddRegion_
    , _addOauthToken = Nothing
    , _addFields = Nothing
    , _addAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
addQuotaUser :: Lens' AddressesDelete' (Maybe Text)
addQuotaUser
  = lens _addQuotaUser (\ s a -> s{_addQuotaUser = a})

-- | Returns response with indentations and line breaks.
addPrettyPrint :: Lens' AddressesDelete' Bool
addPrettyPrint
  = lens _addPrettyPrint
      (\ s a -> s{_addPrettyPrint = a})

-- | Project ID for this request.
addProject :: Lens' AddressesDelete' Text
addProject
  = lens _addProject (\ s a -> s{_addProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
addUserIp :: Lens' AddressesDelete' (Maybe Text)
addUserIp
  = lens _addUserIp (\ s a -> s{_addUserIp = a})

-- | Name of the address resource to delete.
addAddress :: Lens' AddressesDelete' Text
addAddress
  = lens _addAddress (\ s a -> s{_addAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
addKey :: Lens' AddressesDelete' (Maybe Text)
addKey = lens _addKey (\ s a -> s{_addKey = a})

-- | The name of the region for this request.
addRegion :: Lens' AddressesDelete' Text
addRegion
  = lens _addRegion (\ s a -> s{_addRegion = a})

-- | OAuth 2.0 token for the current user.
addOauthToken :: Lens' AddressesDelete' (Maybe Text)
addOauthToken
  = lens _addOauthToken
      (\ s a -> s{_addOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
addFields :: Lens' AddressesDelete' (Maybe Text)
addFields
  = lens _addFields (\ s a -> s{_addFields = a})

-- | Data format for the response.
addAlt :: Lens' AddressesDelete' Alt
addAlt = lens _addAlt (\ s a -> s{_addAlt = a})

instance GoogleRequest AddressesDelete' where
        type Rs AddressesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesDelete'{..}
          = go _addQuotaUser (Just _addPrettyPrint) _addProject
              _addUserIp
              _addAddress
              _addKey
              _addRegion
              _addOauthToken
              _addFields
              (Just _addAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesDeleteResource)
                      r
                      u
