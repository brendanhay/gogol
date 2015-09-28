{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Addresses.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.delete@.
module Network.Google.API.Compute.Addresses.Delete
    (
    -- * REST Resource
      AddressesDeleteAPI

    -- * Creating a Request
    , addressesDelete'
    , AddressesDelete'

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaProject
    , aaUserIp
    , aaAddress
    , aaKey
    , aaRegion
    , aaOauthToken
    , aaFields
    , aaAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.addresses.delete which the
-- 'AddressesDelete'' request conforms to.
type AddressesDeleteAPI =
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
    { _aaQuotaUser   :: !(Maybe Text)
    , _aaPrettyPrint :: !Bool
    , _aaProject     :: !Text
    , _aaUserIp      :: !(Maybe Text)
    , _aaAddress     :: !Text
    , _aaKey         :: !(Maybe Text)
    , _aaRegion      :: !Text
    , _aaOauthToken  :: !(Maybe Text)
    , _aaFields      :: !(Maybe Text)
    , _aaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaProject'
--
-- * 'aaUserIp'
--
-- * 'aaAddress'
--
-- * 'aaKey'
--
-- * 'aaRegion'
--
-- * 'aaOauthToken'
--
-- * 'aaFields'
--
-- * 'aaAlt'
addressesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesDelete'
addressesDelete' pAaProject_ pAaAddress_ pAaRegion_ =
    AddressesDelete'
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaProject = pAaProject_
    , _aaUserIp = Nothing
    , _aaAddress = pAaAddress_
    , _aaKey = Nothing
    , _aaRegion = pAaRegion_
    , _aaOauthToken = Nothing
    , _aaFields = Nothing
    , _aaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AddressesDelete' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AddressesDelete' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | Project ID for this request.
aaProject :: Lens' AddressesDelete' Text
aaProject
  = lens _aaProject (\ s a -> s{_aaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AddressesDelete' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | Name of the address resource to delete.
aaAddress :: Lens' AddressesDelete' Text
aaAddress
  = lens _aaAddress (\ s a -> s{_aaAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AddressesDelete' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | The name of the region for this request.
aaRegion :: Lens' AddressesDelete' Text
aaRegion = lens _aaRegion (\ s a -> s{_aaRegion = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AddressesDelete' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AddressesDelete' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AddressesDelete' Alt
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest AddressesDelete' where
        type Rs AddressesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesDelete'{..}
          = go _aaQuotaUser (Just _aaPrettyPrint) _aaProject
              _aaUserIp
              _aaAddress
              _aaKey
              _aaRegion
              _aaOauthToken
              _aaFields
              (Just _aaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AddressesDeleteAPI)
                      r
                      u
