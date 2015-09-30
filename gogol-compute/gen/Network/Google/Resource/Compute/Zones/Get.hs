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
-- Module      : Network.Google.Resource.Compute.Zones.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified zone resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeZonesGet@.
module Network.Google.Resource.Compute.Zones.Get
    (
    -- * REST Resource
      ZonesGetResource

    -- * Creating a Request
    , zonesGet'
    , ZonesGet'

    -- * Request Lenses
    , zgQuotaUser
    , zgPrettyPrint
    , zgProject
    , zgUserIp
    , zgZone
    , zgKey
    , zgOauthToken
    , zgFields
    , zgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeZonesGet@ which the
-- 'ZonesGet'' request conforms to.
type ZonesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Zone

-- | Returns the specified zone resource.
--
-- /See:/ 'zonesGet'' smart constructor.
data ZonesGet' = ZonesGet'
    { _zgQuotaUser   :: !(Maybe Text)
    , _zgPrettyPrint :: !Bool
    , _zgProject     :: !Text
    , _zgUserIp      :: !(Maybe Text)
    , _zgZone        :: !Text
    , _zgKey         :: !(Maybe Text)
    , _zgOauthToken  :: !(Maybe Text)
    , _zgFields      :: !(Maybe Text)
    , _zgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zgQuotaUser'
--
-- * 'zgPrettyPrint'
--
-- * 'zgProject'
--
-- * 'zgUserIp'
--
-- * 'zgZone'
--
-- * 'zgKey'
--
-- * 'zgOauthToken'
--
-- * 'zgFields'
--
-- * 'zgAlt'
zonesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZonesGet'
zonesGet' pZgProject_ pZgZone_ =
    ZonesGet'
    { _zgQuotaUser = Nothing
    , _zgPrettyPrint = True
    , _zgProject = pZgProject_
    , _zgUserIp = Nothing
    , _zgZone = pZgZone_
    , _zgKey = Nothing
    , _zgOauthToken = Nothing
    , _zgFields = Nothing
    , _zgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zgQuotaUser :: Lens' ZonesGet' (Maybe Text)
zgQuotaUser
  = lens _zgQuotaUser (\ s a -> s{_zgQuotaUser = a})

-- | Returns response with indentations and line breaks.
zgPrettyPrint :: Lens' ZonesGet' Bool
zgPrettyPrint
  = lens _zgPrettyPrint
      (\ s a -> s{_zgPrettyPrint = a})

-- | Project ID for this request.
zgProject :: Lens' ZonesGet' Text
zgProject
  = lens _zgProject (\ s a -> s{_zgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zgUserIp :: Lens' ZonesGet' (Maybe Text)
zgUserIp = lens _zgUserIp (\ s a -> s{_zgUserIp = a})

-- | Name of the zone resource to return.
zgZone :: Lens' ZonesGet' Text
zgZone = lens _zgZone (\ s a -> s{_zgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zgKey :: Lens' ZonesGet' (Maybe Text)
zgKey = lens _zgKey (\ s a -> s{_zgKey = a})

-- | OAuth 2.0 token for the current user.
zgOauthToken :: Lens' ZonesGet' (Maybe Text)
zgOauthToken
  = lens _zgOauthToken (\ s a -> s{_zgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zgFields :: Lens' ZonesGet' (Maybe Text)
zgFields = lens _zgFields (\ s a -> s{_zgFields = a})

-- | Data format for the response.
zgAlt :: Lens' ZonesGet' Alt
zgAlt = lens _zgAlt (\ s a -> s{_zgAlt = a})

instance GoogleRequest ZonesGet' where
        type Rs ZonesGet' = Zone
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ZonesGet'{..}
          = go _zgQuotaUser (Just _zgPrettyPrint) _zgProject
              _zgUserIp
              _zgZone
              _zgKey
              _zgOauthToken
              _zgFields
              (Just _zgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ZonesGetResource) r
                      u
