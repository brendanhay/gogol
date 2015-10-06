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
    , addUserIP
    , addAddress
    , addKey
    , addRegion
    , addOAuthToken
    , addFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'addressesDelete'' smart constructor.
data AddressesDelete' = AddressesDelete'
    { _addQuotaUser   :: !(Maybe Text)
    , _addPrettyPrint :: !Bool
    , _addProject     :: !Text
    , _addUserIP      :: !(Maybe Text)
    , _addAddress     :: !Text
    , _addKey         :: !(Maybe AuthKey)
    , _addRegion      :: !Text
    , _addOAuthToken  :: !(Maybe OAuthToken)
    , _addFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'addUserIP'
--
-- * 'addAddress'
--
-- * 'addKey'
--
-- * 'addRegion'
--
-- * 'addOAuthToken'
--
-- * 'addFields'
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
    , _addUserIP = Nothing
    , _addAddress = pAddAddress_
    , _addKey = Nothing
    , _addRegion = pAddRegion_
    , _addOAuthToken = Nothing
    , _addFields = Nothing
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
addUserIP :: Lens' AddressesDelete' (Maybe Text)
addUserIP
  = lens _addUserIP (\ s a -> s{_addUserIP = a})

-- | Name of the address resource to delete.
addAddress :: Lens' AddressesDelete' Text
addAddress
  = lens _addAddress (\ s a -> s{_addAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
addKey :: Lens' AddressesDelete' (Maybe AuthKey)
addKey = lens _addKey (\ s a -> s{_addKey = a})

-- | The name of the region for this request.
addRegion :: Lens' AddressesDelete' Text
addRegion
  = lens _addRegion (\ s a -> s{_addRegion = a})

-- | OAuth 2.0 token for the current user.
addOAuthToken :: Lens' AddressesDelete' (Maybe OAuthToken)
addOAuthToken
  = lens _addOAuthToken
      (\ s a -> s{_addOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
addFields :: Lens' AddressesDelete' (Maybe Text)
addFields
  = lens _addFields (\ s a -> s{_addFields = a})

instance GoogleAuth AddressesDelete' where
        _AuthKey = addKey . _Just
        _AuthToken = addOAuthToken . _Just

instance GoogleRequest AddressesDelete' where
        type Rs AddressesDelete' = Operation
        request = requestWith computeRequest
        requestWith rq AddressesDelete'{..}
          = go _addProject _addRegion _addAddress _addQuotaUser
              (Just _addPrettyPrint)
              _addUserIP
              _addFields
              _addKey
              _addOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AddressesDeleteResource)
                      rq
