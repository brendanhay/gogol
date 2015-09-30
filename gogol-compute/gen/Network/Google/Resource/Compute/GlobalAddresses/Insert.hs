{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesInsert@.
module Compute.GlobalAddresses.Insert
    (
    -- * REST Resource
      GlobalAddressesInsertAPI

    -- * Creating a Request
    , globalAddressesInsert
    , GlobalAddressesInsert

    -- * Request Lenses
    , gaiQuotaUser
    , gaiPrettyPrint
    , gaiProject
    , gaiUserIp
    , gaiKey
    , gaiOauthToken
    , gaiFields
    , gaiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesInsert@ which the
-- 'GlobalAddressesInsert' request conforms to.
type GlobalAddressesInsertAPI =
     Capture "project" Text :>
       "global" :> "addresses" :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'globalAddressesInsert' smart constructor.
data GlobalAddressesInsert = GlobalAddressesInsert
    { _gaiQuotaUser   :: !(Maybe Text)
    , _gaiPrettyPrint :: !Bool
    , _gaiProject     :: !Text
    , _gaiUserIp      :: !(Maybe Text)
    , _gaiKey         :: !(Maybe Text)
    , _gaiOauthToken  :: !(Maybe Text)
    , _gaiFields      :: !(Maybe Text)
    , _gaiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiQuotaUser'
--
-- * 'gaiPrettyPrint'
--
-- * 'gaiProject'
--
-- * 'gaiUserIp'
--
-- * 'gaiKey'
--
-- * 'gaiOauthToken'
--
-- * 'gaiFields'
--
-- * 'gaiAlt'
globalAddressesInsert
    :: Text -- ^ 'project'
    -> GlobalAddressesInsert
globalAddressesInsert pGaiProject_ =
    GlobalAddressesInsert
    { _gaiQuotaUser = Nothing
    , _gaiPrettyPrint = True
    , _gaiProject = pGaiProject_
    , _gaiUserIp = Nothing
    , _gaiKey = Nothing
    , _gaiOauthToken = Nothing
    , _gaiFields = Nothing
    , _gaiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaiQuotaUser :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiQuotaUser
  = lens _gaiQuotaUser (\ s a -> s{_gaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaiPrettyPrint :: Lens' GlobalAddressesInsert' Bool
gaiPrettyPrint
  = lens _gaiPrettyPrint
      (\ s a -> s{_gaiPrettyPrint = a})

-- | Project ID for this request.
gaiProject :: Lens' GlobalAddressesInsert' Text
gaiProject
  = lens _gaiProject (\ s a -> s{_gaiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaiUserIp :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiUserIp
  = lens _gaiUserIp (\ s a -> s{_gaiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaiKey :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiKey = lens _gaiKey (\ s a -> s{_gaiKey = a})

-- | OAuth 2.0 token for the current user.
gaiOauthToken :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiOauthToken
  = lens _gaiOauthToken
      (\ s a -> s{_gaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaiFields :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiFields
  = lens _gaiFields (\ s a -> s{_gaiFields = a})

-- | Data format for the response.
gaiAlt :: Lens' GlobalAddressesInsert' Text
gaiAlt = lens _gaiAlt (\ s a -> s{_gaiAlt = a})

instance GoogleRequest GlobalAddressesInsert' where
        type Rs GlobalAddressesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesInsert{..}
          = go _gaiQuotaUser _gaiPrettyPrint _gaiProject
              _gaiUserIp
              _gaiKey
              _gaiOauthToken
              _gaiFields
              _gaiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesInsertAPI)
                      r
                      u
