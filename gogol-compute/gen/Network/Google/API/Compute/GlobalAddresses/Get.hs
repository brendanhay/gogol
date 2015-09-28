{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.GlobalAddresses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.get@.
module Network.Google.API.Compute.GlobalAddresses.Get
    (
    -- * REST Resource
      GlobalAddressesGetAPI

    -- * Creating a Request
    , globalAddressesGet'
    , GlobalAddressesGet'

    -- * Request Lenses
    , gagQuotaUser
    , gagPrettyPrint
    , gagProject
    , gagUserIp
    , gagAddress
    , gagKey
    , gagOauthToken
    , gagFields
    , gagAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.globalAddresses.get which the
-- 'GlobalAddressesGet'' request conforms to.
type GlobalAddressesGetAPI =
     Capture "project" Text :>
       "global" :>
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
-- /See:/ 'globalAddressesGet'' smart constructor.
data GlobalAddressesGet' = GlobalAddressesGet'
    { _gagQuotaUser   :: !(Maybe Text)
    , _gagPrettyPrint :: !Bool
    , _gagProject     :: !Text
    , _gagUserIp      :: !(Maybe Text)
    , _gagAddress     :: !Text
    , _gagKey         :: !(Maybe Text)
    , _gagOauthToken  :: !(Maybe Text)
    , _gagFields      :: !(Maybe Text)
    , _gagAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gagQuotaUser'
--
-- * 'gagPrettyPrint'
--
-- * 'gagProject'
--
-- * 'gagUserIp'
--
-- * 'gagAddress'
--
-- * 'gagKey'
--
-- * 'gagOauthToken'
--
-- * 'gagFields'
--
-- * 'gagAlt'
globalAddressesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> GlobalAddressesGet'
globalAddressesGet' pGagProject_ pGagAddress_ =
    GlobalAddressesGet'
    { _gagQuotaUser = Nothing
    , _gagPrettyPrint = True
    , _gagProject = pGagProject_
    , _gagUserIp = Nothing
    , _gagAddress = pGagAddress_
    , _gagKey = Nothing
    , _gagOauthToken = Nothing
    , _gagFields = Nothing
    , _gagAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gagQuotaUser :: Lens' GlobalAddressesGet' (Maybe Text)
gagQuotaUser
  = lens _gagQuotaUser (\ s a -> s{_gagQuotaUser = a})

-- | Returns response with indentations and line breaks.
gagPrettyPrint :: Lens' GlobalAddressesGet' Bool
gagPrettyPrint
  = lens _gagPrettyPrint
      (\ s a -> s{_gagPrettyPrint = a})

-- | Project ID for this request.
gagProject :: Lens' GlobalAddressesGet' Text
gagProject
  = lens _gagProject (\ s a -> s{_gagProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gagUserIp :: Lens' GlobalAddressesGet' (Maybe Text)
gagUserIp
  = lens _gagUserIp (\ s a -> s{_gagUserIp = a})

-- | Name of the address resource to return.
gagAddress :: Lens' GlobalAddressesGet' Text
gagAddress
  = lens _gagAddress (\ s a -> s{_gagAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gagKey :: Lens' GlobalAddressesGet' (Maybe Text)
gagKey = lens _gagKey (\ s a -> s{_gagKey = a})

-- | OAuth 2.0 token for the current user.
gagOauthToken :: Lens' GlobalAddressesGet' (Maybe Text)
gagOauthToken
  = lens _gagOauthToken
      (\ s a -> s{_gagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gagFields :: Lens' GlobalAddressesGet' (Maybe Text)
gagFields
  = lens _gagFields (\ s a -> s{_gagFields = a})

-- | Data format for the response.
gagAlt :: Lens' GlobalAddressesGet' Alt
gagAlt = lens _gagAlt (\ s a -> s{_gagAlt = a})

instance GoogleRequest GlobalAddressesGet' where
        type Rs GlobalAddressesGet' = Address
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesGet'{..}
          = go _gagQuotaUser (Just _gagPrettyPrint) _gagProject
              _gagUserIp
              _gagAddress
              _gagKey
              _gagOauthToken
              _gagFields
              (Just _gagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesGetAPI)
                      r
                      u
